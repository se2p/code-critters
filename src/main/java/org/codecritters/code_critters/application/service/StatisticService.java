package org.codecritters.code_critters.application.service;

/*-
 * #%L
 * Code Critters
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
import org.codecritters.code_critters.persistence.repository.*;
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

    private final MutantRepository mutantRepository;

    private final MineRepository mineRepository;


    @Autowired
    public StatisticService(LevelRepository levelRepository, UserRepositiory userRepositiory,
                            GameRepository gameRepository, MutantRepository mutantRepository, MineRepository mineRepository) {
        this.levelRepository = levelRepository;
        this.userRepositiory = userRepositiory;
        this.gameRepository = gameRepository;
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

        List<GameMinimal> gameMinList = new ArrayList<>();
        for (Game game : gamesOfUser) {
            GameMinimal gameMin = new GameMinimal(game.getId(), game.getLevel().getId(), game.getScore(),
                    game.getMutantsKilled(), game.getHumansFinished());
            gameMinList.add(gameMin);
        }

        GamesOfUserDTO gamesOfUserDTO = new GamesOfUserDTO(user.getUsername(), gameMinList);
        return gamesOfUserDTO;
    }

    /**
     * Returns all operations of a mine of a given game, like its creation start, if or when it has been edited and
     * deleted, its code.
     * If on the given coordinates no mine has been placed, the history will be empty and the "minePlaced"
     * flag is false.
     * @param x x position in a game
     * @param y y position in a game
     * @param gameId the gameId
     * @return if existing, a overview over all mine operations of these coordinates
     */
    public MineHistoryDTO getMineHistory(int x, int y, String gameId) {

        if (gameId == null || gameId.isEmpty()) {
            throw new IncompleteDataException("Cannot find a game with empty game ID!");
        }

        // Retrieve all mines from the game
        List<Mine> minesInGame = mineRepository.findByGameId(gameId);

        // Filter to keep only those mine operations on the wanted coordinations x y
        List<Mine> minesAtPosition = minesInGame.stream().filter(mine ->
                mine.getxPosition() == x && mine.getyPosition() == y).collect(Collectors.toList());

        if (minesAtPosition.isEmpty()) {
            List<MineOperation> emptyHistory = new ArrayList<>();
            MineHistoryDTO mineHistoryDTO = new MineHistoryDTO(gameId, x, y, false, false, false, emptyHistory);
            return mineHistoryDTO;
        }

        // Sort all operations on that position in ascending order according to their creation start
        minesAtPosition.sort(Comparator.comparing(Mine::getCreationStart));

        List<MineOperation> mineOperationList = new ArrayList<>();
        MineOperation mineOperation;

        boolean updated = false;
        boolean deleted = false;
        for (Mine mine : minesAtPosition) {
            mineOperation = new MineOperation(Operation.CREATION, mine.getCreationStart(),
                    mine.getCreationEnd(), mine.getXml(), mine.getCode());

            if (!mine.isDeleted() && !mine.isUpdated()) {
                // nothing happens
            } else if (!mine.isDeleted() && mine.isUpdated()) {
                mineOperation.setOperation(Operation.UPDATE);
                updated = true;

            } else if (mine.isDeleted()) {
                mineOperation.setOperation(Operation.DELETION);
                deleted = true;
            }
            mineOperationList.add(mineOperation);
        }

        MineHistoryDTO mineHistoryDTO = new MineHistoryDTO(gameId, x, y, true, updated, deleted, mineOperationList);

        return mineHistoryDTO;
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
        long gameDuration = Duration.between(gameStart, gameEnd).toMillis();
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

        // Create map with key "x,y" coordinates and list of corresponding mines as values
        Map<String, List<Mine>> groupedByCoordinates = minesList.stream().collect(Collectors.groupingBy(m -> {
            StringBuilder s = new StringBuilder();
            s.append(m.getxPosition()).append(", ").append(m.getyPosition());
            return s.toString();
            }, Collectors.mapping(m -> m, Collectors.toList())));

        Set<String> coordinatesWithMines = groupedByCoordinates.keySet();
        List<MineDetails> mineDetailsList = new ArrayList<>();

        // Keep only the latest state of every coordinate with a mine
        for (String coor : coordinatesWithMines) {
            Mine lastMine = getLastStateOfMine(groupedByCoordinates.get(coor));
            MineDetails curMineDetails = new MineDetails(lastMine.getId(),
                    lastMine.getCode(), lastMine.getxPosition(), lastMine.getyPosition(),
                    lastMine.isDeleted(), lastMine.isUpdated());
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
