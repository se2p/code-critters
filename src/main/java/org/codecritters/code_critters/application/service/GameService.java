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
import org.codecritters.code_critters.persistence.entities.hintSystem.AssistantInfo;
import org.codecritters.code_critters.persistence.entities.hintSystem.CheckedField;
import org.codecritters.code_critters.persistence.entities.hintSystem.VisitedStep;
import org.codecritters.code_critters.persistence.repository.*;
import org.codecritters.code_critters.web.dto.GameDTO;
import org.codecritters.code_critters.web.dto.GamePauseTimeDTO;
import org.codecritters.code_critters.web.dto.HumanDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantInfoDTO;
import org.codecritters.code_critters.web.dto.hintSystem.CheckedFieldDTO;
import org.codecritters.code_critters.web.dto.hintSystem.VisitedStepDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class GameService {

    private final LevelRepository levelRepository;
    private final UserRepositiory userRepositiory;
    private final GameRepository gameRepository;
    private final MutantRepository mutantRepository;
    private final AssistantInfoRepository assistantInfoRepository;
    private final MineRepository mineRepository;
    private final VisitedStepRepository visitedStepRepository;

    @Autowired
    public GameService(LevelRepository levelRepository, UserRepositiory userRepositiory,
                       GameRepository gameRepository, MutantRepository mutantRepository,
                       AssistantInfoRepository assistantInfoRepository, MineRepository mineRepository, VisitedStepRepository visitedStepRepository) {
        this.levelRepository = levelRepository;
        this.userRepositiory = userRepositiory;
        this.gameRepository = gameRepository;
        this.mutantRepository = mutantRepository;
        this.assistantInfoRepository = assistantInfoRepository;
        this.mineRepository = mineRepository;
        this.visitedStepRepository = visitedStepRepository;
    }

    /**
     * Inserts a new game data set into the database with the values passed in the game dto for the user with the given
     * cookie, if registered.
     * @param dto The game dto containing the initial data.
     * @param cookie The cookie for the current user.
     * @return A game dto containing the inserted data including its new id.
     */
    public GameDTO createGame(GameDTO dto, String cookie) {
        Level level = levelRepository.findByName(dto.getName());
        User user = userRepositiory.findByCookie(cookie);
        Game game;

        if (level == null) {
            throw new NotFoundException("Could not find level with name " + dto.getName());
        }

        if (user != null) {
            game = new Game(level, LocalDateTime.now(), user.getId());
        } else {
            game = new Game(level, LocalDateTime.now());
        }
        game = gameRepository.save(game);

        if (game.getId() == null) {
            throw new IllegalStateException("Problem saving game!");
        }

        return createGameDTO(game);
    }

    /**
     * Updates the game data for an existing game with the given values passed in the dto.
     * @param dto The dto containing the updated game data.
     */
    public void saveGame(GameDTO dto) {
        dto.setEnd(LocalDateTime.now());
        Level level = levelRepository.findByName(dto.getName());
        Game game;

        if (level == null) {
            throw new NotFoundException("Could not find level with name " + dto.getName());
        }
        if (dto.getId() == null) {
            throw new IncompleteDataException("Cannot save a game dto with ID null!");
        }

        dto.setLevel(level);
        game = createGame(dto);
        gameRepository.save(game);
    }

    public void updatePauseTimes(GamePauseTimeDTO dto) {

        if (dto.getGameId() == null || dto.getGameId().isEmpty()) {
            throw new IncompleteDataException("Cannot update a game dto with an empty ID!");
        }

        Optional<Game> curGameOptional = gameRepository.findById(dto.getGameId());

        if (!curGameOptional.isPresent()) {
            throw new NotFoundException("Could not find a game with id " + dto.getGameId());
        }

        Game curGame = curGameOptional.get();

        if (dto.getPauseStart() == null && dto.getPauseEnd() == null) {
            return;
        }

        PauseTime pauseTime = new PauseTime(curGame, dto.getPauseStart(), dto.getPauseEnd());

        curGame.addPauseTimeToList(pauseTime);
        gameRepository.save(curGame);
    }

    /**
     * Saves usage details of the hint assistant for a game.
     * @param dto
     * @param gameId
     */
    @Transactional
    public AssistantInfoDTO saveAssistantUsageInformation(AssistantInfoDTO dto, String gameId) {
        if (gameId == null || gameId.isEmpty()) {
            throw new IncompleteDataException("Cannot save assistant information with an empty game ID!");
        }

        Optional<Game> curGameOptional = gameRepository.findById(gameId);
        if (!curGameOptional.isPresent()) {
            throw new NotFoundException("Could not find a game with id " + dto.getGameId());
        }
        dto.setGameId(gameId);
        Game curGame = curGameOptional.get();

        AssistantInfo assistantInfo;

        if (dto.getId() != null) { // update existing assistantInfo entity
            Optional<AssistantInfo> curAssistantInfoOptional = assistantInfoRepository.findById(dto.getId());
            if (!curAssistantInfoOptional.isPresent()) {
                throw new NotFoundException("Could not find an assistant info with given id " + dto.getId());
            }
            assistantInfo = curAssistantInfoOptional.get();
        } else {
            assistantInfo = new AssistantInfo();
            curGame.addAssistantInfoToList(assistantInfo);
        }

        updateAssistantInfo(assistantInfo, dto, curGame);
        AssistantInfo savedInfo = assistantInfoRepository.save(assistantInfo);
        dto.setId(savedInfo.getId());
        return dto;
    }

    /**
     * Records the usage of the hint assistant to check fields. Saves a field checked by the user with the assistant.
     * @param dto
     * @param gameId
     */
    @Transactional
    public CheckedField saveAssistantCheckedFields(CheckedFieldDTO dto, String gameId) {
        if (gameId == null || gameId.isEmpty()) {
            throw new IncompleteDataException("Cannot save checked fields of assistant with an empty game ID!");
        }

        Optional<Game> curGameOptional = gameRepository.findById(gameId);
        if (!curGameOptional.isPresent()) {
            throw new NotFoundException("Could not find a game with id " + gameId);
        }
        dto.setGameId(gameId);
        Game curGame = curGameOptional.get();

        CheckedField checkedField = new CheckedField();
        checkedField.setxCoordinate(dto.getxCoordinate());
        checkedField.setyCoordinate(dto.getyCoordinate());
        checkedField.setTimeChecked(dto.getTimeChecked());
        checkedField.setGame(curGame);

        curGame.addCheckedField(checkedField);

        gameRepository.save(curGame);
        return checkedField;
    }

    private void updateAssistantInfo(AssistantInfo assistantInfo, AssistantInfoDTO dto, Game game) {
        assistantInfo.setGame(game);
        assistantInfo.setHintSituation(dto.getHintSituation());
        assistantInfo.setTimeClosed(dto.getTimeClosed());

        assistantInfo.getVisitedSteps().clear();

        dto.getVisitedSteps().forEach(visitedStepDTO -> {
            VisitedStep visitedStep = createVisitedStep(visitedStepDTO, assistantInfo);
            assistantInfo.addVisitedStep(visitedStep);
        });
    }

    private GameDTO createGameDTO(Game game) {
        GameDTO dto = new GameDTO();

        if (game.getId() != null) {
            dto.setId(game.getId());
        }

        if (game.getStart() != null) {
            dto.setStart(game.getStart());
        }
        if(game.getEnd() != null) {
            dto.setEnd(game.getEnd());
        }
        if(game.getUserID() != null) {
            dto.setUserID(game.getUserID());
        }

        return dto;
    }

    private VisitedStep createVisitedStep(VisitedStepDTO dto, AssistantInfo assistantInfo) {
        VisitedStep visitedStep = new VisitedStep();
        visitedStep.setHintStep(dto.getHintStep());
        visitedStep.setTimeSeen(dto.getTimeSeen());
        visitedStep.setAssistantInfo(assistantInfo);
        return visitedStep;
    }

    private Game createGame(GameDTO dto) {
        Game game = new Game();

        if (dto.getId() != null) {
            game.setId(dto.getId());
        }
        if (dto.getLevel() != null) {
            game.setLevel(dto.getLevel());
        }
        if (dto.getStart() != null) {
            game.setStart(dto.getStart());
        }
        if (dto.getEnd() != null) {
            game.setEnd(dto.getEnd());
        }
        if (dto.getUserID() != null) {
            game.setUserID(dto.getUserID());
        }

        game.setScore(dto.getScore());
        game.setMutantsKilled(dto.getMutantsKilled());
        game.setHumansFinished(dto.getHumansFinished());
        game.setGameTime(dto.getGameTime());


        // Collect all finished and killed mutants:
        if (dto.getKilledMutantsList() != null && dto.getFinishedMutantsList() != null) {

            // Collect all finished mutants:

            List<Mutant> allFinishedMutants = mutantRepository.findByIdIn(dto.getFinishedMutantsList());
            // Count how often each mutant has survived
            Map<String, Integer> finishedMutantsAmountMap = dto.getFinishedMutantsList().stream().collect(Collectors.groupingBy(e -> e, Collectors.collectingAndThen(Collectors.counting(), Long::intValue)));

            List<GameMutants> finishedMutants = new ArrayList<>();

            for (Mutant current : allFinishedMutants) {
                Integer count = finishedMutantsAmountMap.get(current.getId());
                GameMutants currentFinished = new GameMutants(game, current, count, false);
                finishedMutants.add(currentFinished);
            }

            // Collect all killed mutants:

            List<Mutant> allKilledMutants = mutantRepository.findByIdIn(dto.getKilledMutantsList());
            // Count how often each mutant has been killed
            Map<String, Integer> killedMutantsAmountMap = dto.getKilledMutantsList().stream().collect(Collectors.groupingBy(e -> e, Collectors.collectingAndThen(Collectors.counting(), Long::intValue)));

            List<GameMutants> killedMutants = new ArrayList<>();

            for (Mutant current : allKilledMutants) {
                Integer count = killedMutantsAmountMap.get(current.getId());
                GameMutants currentFinished = new GameMutants(game, current, count, true);
                killedMutants.add(currentFinished);
            }

            List<GameMutants> allGameMutants = new ArrayList<>();
            allGameMutants.addAll(finishedMutants);
            allGameMutants.addAll(killedMutants);

            game.setGameMutantsList(allGameMutants);

        }

        // Collect all finished and killed humans:

        if (dto.getFinishedHumansList() != null && dto.getKilledHumansList() != null) {

            // Collect all finished humans:
            List<GameHumans> allFinished = new ArrayList<>();
            for (HumanDTO human : dto.getFinishedHumansList()) {
                if (allFinished.isEmpty()) {
                    GameHumans newFinished = new GameHumans(game, human.getInit(), human.getCut(), 1, false);
                    allFinished.add(newFinished);
                } else {
                    for (GameHumans fh : allFinished) {
                        // if same human prototype is finished more than once
                        if (fh.getCut().equals(human.getCut()) && fh.getInit().equals(human.getInit())) {
                            fh.setCount(fh.getCount() + 1);
                        } else {
                            GameHumans newFinished = new GameHumans(game, human.getInit(), human.getCut(), 1, false);
                            allFinished.add(newFinished);
                        }
                    }
                }
            }

            // Collect all killed humans:
            List<GameHumans> allKilled = new ArrayList<>();
            for (HumanDTO human : dto.getKilledHumansList()) {
                if (allKilled.isEmpty()) {
                    GameHumans newKilled = new GameHumans(game, human.getInit(), human.getCut(), 1, true);
                    allKilled.add(newKilled);
                } else {
                    for (GameHumans kh : allKilled) {
                        // if same human prototype is killed more than once
                        if (kh.getCut().equals(human.getCut()) && kh.getInit().equals(human.getInit())) {
                            kh.setCount(kh.getCount() + 1);
                        } else {
                            GameHumans newKilled = new GameHumans(game, human.getInit(), human.getCut(), 1, true);
                            allKilled.add(newKilled);
                        }
                    }
                }
            }

            List<GameHumans> allGameHumans = new ArrayList<>();
            allGameHumans.addAll(allFinished);
            allGameHumans.addAll(allKilled);
            game.setGameHumansList(allGameHumans);
        }

        return game;
    }
}
