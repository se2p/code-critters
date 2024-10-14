package org.codecritters.code_critters.application.service;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */

import org.codecritters.code_critters.application.exception.IncompleteDataException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.*;
import org.codecritters.code_critters.persistence.entities.healing.HealingGame;
import org.codecritters.code_critters.persistence.repository.*;
import org.codecritters.code_critters.persistence.repository.healing.HealingGameRepository;
import org.codecritters.code_critters.web.dto.usageStats.*;
import org.codecritters.code_critters.web.enums.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Offers services to request usage and statistic information about CodeCritters.
 */
@Service
public class StatisticService {

    private final LevelRepository levelRepository;

    private final UserRepositiory userRepositiory;

    private final GameRepository gameRepository;
    private final HealingGameRepository healingGameRepository;
    private final MutantRepository mutantRepository;

    private final MineRepository mineRepository;


    @Autowired
    public StatisticService(LevelRepository levelRepository, UserRepositiory userRepositiory,
                            GameRepository gameRepository, HealingGameRepository healingGameRepository, MutantRepository mutantRepository, MineRepository mineRepository) {
        this.levelRepository = levelRepository;
        this.userRepositiory = userRepositiory;
        this.gameRepository = gameRepository;
        this.healingGameRepository = healingGameRepository;
        this.mutantRepository = mutantRepository;
        this.mineRepository = mineRepository;
    }

    /**
     * Gets all the games of a user together with some information per for each game.
     * @param username name of the user (not id)
     * @return Information about a user's games.
     */
    public GamesOfUserDTO getAllGamesOfUser(String username) {
        if (username == null || username.isEmpty()) {
            throw new IncompleteDataException("Cannot find a user with empty username!");
        }
        User user = userRepositiory.findByUsernameOrEmail(username, "");

        if (user == null || user.getId() == null) {
            throw new NotFoundException("Could not find user with username " + username);
        }
        List<Game> gamesOfUser = gameRepository.findAllByUserID(user.getId());
        List<HealingGame> healingGamesOfUser = healingGameRepository.findAllByUserID(user.getId());

        List<GameMinimal> gameMinList = new ArrayList<>();
        for (Game game : gamesOfUser) {
            GameMinimal gameMin = new GameMinimal(game.getId(), game.getLevel().getId(), game.getScore(),
                    game.getMutantsKilled(), game.getHumansFinished());
            gameMinList.add(gameMin);
        }

        List<GameMinimal> healingGameMinList = new ArrayList<>();
        for (HealingGame healingGame : healingGamesOfUser) {
            GameMinimal gameMin = new GameMinimal(healingGame.getId(), healingGame.getLevel().getId(), healingGame.getScore(),
                    healingGame.getMutantsKilled(), healingGame.getCollectorsFinished());
            healingGameMinList.add(gameMin);
        }


        GamesOfUserDTO gamesOfUserDTO = new GamesOfUserDTO(user.getUsername(), gameMinList, healingGameMinList);
        return gamesOfUserDTO;
    }

    /**
     * Returns all operations of the mine with given frontendId, like its creation start, if or when it has been edited and
     * deleted, its code etc.
     * Throws a NotFoundException if no mine can be found with the given frontendId
     * @param frontendId the mine id assigned on frontend
     * @return an overview over all mine operations
     */
    public MineHistoryDTO getMineHistory(String frontendId) {

        if (frontendId == null || frontendId.isEmpty()) {
            throw new IncompleteDataException("Cannot find a portal with empty frontend ID!");
        }

        List<Mine> wantedMineAllOperations = mineRepository.findAllByFrontendId(frontendId);

        if (wantedMineAllOperations.isEmpty()) {
            throw new NotFoundException("Cannot find a portal with frontend ID " + frontendId);
        }

        String gameId = wantedMineAllOperations.get(0).getGame().getId();

        // Sort all operations in ascending order according to their creation start
        wantedMineAllOperations.sort(Comparator.comparing(Mine::getCreationStart));

        List<MineOperation> mineOperationList = new ArrayList<>();
        MineOperation mineOperation;

        boolean updated = false;
        boolean deleted = false;
        for (Mine mine : wantedMineAllOperations) {
            mineOperation = new MineOperation(Operation.CREATION, mine.getCreationStart(),
                    mine.getCreationEnd(), mine.getXml(), mine.getCode(), mine.getxPosition(), mine.getyPosition());

            if (!mine.isDeleted() && !mine.isUpdated()) {
                // nothing happens
            } else if (!mine.isDeleted() && mineWasMoved(wantedMineAllOperations, mine)) {
                mineOperation.setOperation(Operation.MOVE);
                updated = true;
            } else if (!mine.isDeleted() && mine.isUpdated()) {
                mineOperation.setOperation(Operation.UPDATE);
                updated = true;

            } else if (mine.isDeleted()) {
                mineOperation.setOperation(Operation.DELETION);
                deleted = true;
            }
            mineOperationList.add(mineOperation);
        }

        MineHistoryDTO mineHistoryDTO = new MineHistoryDTO(gameId, frontendId, true, updated, deleted, mineOperationList);

        return mineHistoryDTO;
    }

    private boolean mineWasMoved(List<Mine> mines, Mine currentMineChange) {
        int firstXPosition = mines.get(0).getxPosition();
        int firstYPosition = mines.get(0).getyPosition();

        if (firstXPosition != currentMineChange.getxPosition() || firstYPosition != currentMineChange.getyPosition()) {
            return true;
        }
        return  false;
    }

    /**
     * Gets details of a specified game like the level, game duration, mutant and human details,...
     * @param gameId the gameId
     * @return Details of a game
     */
    public GamingDetailDTO getGameDetails(String gameId) {

        Optional<Game> curGameOptional = gameRepository.findById(gameId);

        if (!curGameOptional.isPresent()) {
            throw new NotFoundException("Could not find a game with id " + gameId);
        }

        // Game
        Game curGame = curGameOptional.get();
        String userId = curGame.getUserID();
        String user = "No registered user";
        if (userId != null) {
            Optional<User> userById = userRepositiory.findById(userId);
            if (userById.isPresent()) {
                user = userById.get().getUsername();
            }
        }
        String levelId = curGame.getLevel().getId();
        LocalDateTime gameStart = curGame.getStart();
        LocalDateTime gameEnd = curGame.getEnd();
        long gameDuration = 0;
        if (gameStart != null && gameEnd != null) {
            gameDuration = Duration.between(gameStart, gameEnd).toMillis();
        }
        boolean paused = !curGame.getPauseTimeList().isEmpty();
        List<PauseDetails> pauses = getPauseDetailsList(curGame);

        GameDetails gameDetails = new GameDetails(curGame.getId(),
                levelId, curGame.getScore(), gameStart, gameEnd, gameDuration, paused, pauses);

        // Mines
        List<MineDetails> mineDetails = getMineDetails(curGame);
        int numMines = mineDetails.size();
        MineData mineData = new MineData(numMines, mineDetails);

        // Mutants
        MutantAndHumanDetails mutantDetails = getCritterDetails(curGame, true);
        MutantAndHumanDetails humanDetails = getCritterDetails(curGame, false);

        GamingDetailDTO returnObject = new GamingDetailDTO(user, gameDetails, mineData, mutantDetails, humanDetails);

        return returnObject;
    }

    private MutantAndHumanDetails getCritterDetails(Game game, boolean isMutant) {

        if (isMutant) {
            List<GameMutants> mutants = game.getGameMutantsList();
            List<CritterDetails> wantedDetailsKilled = new ArrayList<>();
            List<CritterDetails> wantedDetailsFinished = new ArrayList<>();

            for (GameMutants curMutant : mutants) {
                Mutant current = curMutant.getMutant();
                if (curMutant.isKilled()) {
                    CritterDetails details = new CritterDetails(current.getCode(), current.getInit(), curMutant.getCount());
                    wantedDetailsKilled.add(details);
                } else {
                    CritterDetails details = new CritterDetails(current.getCode(), current.getInit(), curMutant.getCount());
                    wantedDetailsFinished.add(details);
                }
            }

            int totalNumKilled = 0;
            for (CritterDetails critter : wantedDetailsKilled) {
                totalNumKilled += critter.getCount();
            }

            int totalNumFinished = 0;
            for (CritterDetails critter : wantedDetailsFinished) {
                totalNumFinished += critter.getCount();
            }

            CrittersNumAndDetails killed = new CrittersNumAndDetails(totalNumKilled, wantedDetailsKilled);

            CrittersNumAndDetails finished = new CrittersNumAndDetails(totalNumFinished, wantedDetailsFinished);

            MutantAndHumanDetails returnObject = new MutantAndHumanDetails(killed, finished);

            return returnObject;
        }
        // if human
        else {
            List<GameHumans> humans = game.getGameHumansList();

            List<CritterDetails> wantedDetailsKilled = new ArrayList<>();
            List<CritterDetails> wantedDetailsFinished = new ArrayList<>();

            for (GameHumans curHuman : humans) {
                if (curHuman.isKilled()) {
                    CritterDetails details = new CritterDetails(curHuman.getCut(), curHuman.getInit(), curHuman.getCount());
                    wantedDetailsKilled.add(details);
                } else {
                    CritterDetails details = new CritterDetails(curHuman.getCut(), curHuman.getInit(), curHuman.getCount());
                    wantedDetailsFinished.add(details);
                }
            }

            int totalNumKilled = 0;
            for (CritterDetails critter : wantedDetailsKilled) {
                totalNumKilled += critter.getCount();
            }

            int totalNumFinished = 0;
            for (CritterDetails critter : wantedDetailsFinished) {
                totalNumFinished += critter.getCount();
            }

            CrittersNumAndDetails killed = new CrittersNumAndDetails(totalNumKilled, wantedDetailsKilled);

            CrittersNumAndDetails finished = new CrittersNumAndDetails(totalNumFinished, wantedDetailsFinished);

            MutantAndHumanDetails returnObject = new MutantAndHumanDetails(killed, finished);

            return returnObject;
        }

    }

    private List<PauseDetails> getPauseDetailsList(Game game) {
        List<PauseDetails> pauseDetailsList = new ArrayList<>();
        if (game.getPauseTimeList().isEmpty()) {
            return pauseDetailsList;
        } else {
            List<PauseTime> pauseTimeList = game.getPauseTimeList();
            for (PauseTime pause : pauseTimeList) {
                PauseDetails curPause = new PauseDetails(pause.getPauseStart(), pause.getPauseEnd());
                pauseDetailsList.add(curPause);
            }
        }
        return pauseDetailsList;
    }

    private List<MineDetails> getMineDetails(Game game) {

        List<Mine> minesList = mineRepository.findByGameId(game.getId());

        // Create map with key frontendId and list of corresponding mines as values
        Map<String, List<Mine>> groupedByFrontendId =
                minesList.stream().collect(Collectors.groupingBy(Mine::getFrontendId, Collectors.mapping(m -> m, Collectors.toList())));

        // Group the mines by equal frontendIds (equal frontendId means it is the same mine,
        // but a different operation on it)
        Set<String> uniqueFrontendIds = groupedByFrontendId.keySet();

        // Keep only the latest state of a mine
        List<MineDetails> mineDetailsList = new ArrayList<>();
        for (String frondendId : uniqueFrontendIds) {
            Mine lastMine = getLastStateOfMine(groupedByFrontendId.get(frondendId));
            MineDetails curMineDetails = new MineDetails(lastMine.getId(),
                    lastMine.getCode(), lastMine.getxPosition(), lastMine.getyPosition(),
                    lastMine.isDeleted(), lastMine.isUpdated(), lastMine.getFrontendId());
            mineDetailsList.add(curMineDetails);
        }

        return mineDetailsList;
    }

    private Mine getLastStateOfMine(List<Mine> allMineOperations) {
        if (!allMineOperations.isEmpty()) {
            Mine lastMine = allMineOperations.get(0);
            for (Mine mine1 : allMineOperations) {
                for (Mine mine2 : allMineOperations) {
                    if (mine1.getCreationEnd().isAfter(mine2.getCreationEnd())) {
                        lastMine = mine1;
                    } else {
                        lastMine = mine2;
                    }
                }
            }
            return lastMine;
        } else {
            return new Mine();
        }
    }
}
