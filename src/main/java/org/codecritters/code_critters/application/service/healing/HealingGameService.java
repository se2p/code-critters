package org.codecritters.code_critters.application.service.healing;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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
import org.codecritters.code_critters.persistence.entities.healing.GameHealingCollector;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealingCollector;
import org.codecritters.code_critters.persistence.entities.healing.HealingGame;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.persistence.repository.healing.HealingCollectorRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingGameRepository;
import org.codecritters.code_critters.web.dto.GamePauseTimeDTO;
import org.codecritters.code_critters.web.dto.healing.HealingGameDTO;
import org.codecritters.code_critters.web.dto.healing.KilledMutantDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Service for games of a healing level.
 */
@Service
public class HealingGameService {

    private final HealLevelRepository healLevelRepository;
    private final UserRepositiory userRepositiory;
    private final HealingGameRepository healingGameRepository;

    private final HealingCollectorRepository healingCollectorRepository;

    @Autowired
    public HealingGameService(HealLevelRepository healLevelRepository, UserRepositiory userRepositiory, HealingGameRepository healingGameRepository, HealingCollectorRepository healingCollectorRepository) {
        this.healLevelRepository = healLevelRepository;
        this.userRepositiory = userRepositiory;
        this.healingGameRepository = healingGameRepository;
        this.healingCollectorRepository = healingCollectorRepository;
    }

    /**
     * Creates a Second Stage game.
     * @param gameDTO
     * @param cookie cookie by user
     * @return DTO of the second stage game
     */
    public HealingGameDTO createGame(HealingGameDTO gameDTO, String cookie) {
        HealLevel healLevel = healLevelRepository.findByName(gameDTO.getName());
        User user = userRepositiory.findByCookie(cookie);
        HealingGame game;

        if (healLevel == null) {
            throw new NotFoundException("Could not find level with name " + gameDTO.getName());
        }
        if (user != null) {
            game = new HealingGame(healLevel, LocalDateTime.now(), user.getId());
        } else {
            game = new HealingGame(healLevel, LocalDateTime.now());
        }

        game = healingGameRepository.save(game);

        if (game.getId() == null) {
            throw new IllegalStateException("Problem saving game!");
        }

        return createGameDTO(game);
    }

    /**
     * Updates the game data for an existing game with the given values passed in the dto.
     * @param dto The dto containing the updated game data.
     */
    public void saveGame(HealingGameDTO dto) {
        Optional<HealLevel> level = healLevelRepository.findById(dto.getLevel().getId());
        HealingGame game;

        if (!level.isPresent()) {
            throw new NotFoundException("Could not find level with name " + dto.getName());
        }
        if (dto.getId() == null) {
            throw new IncompleteDataException("Cannot save a game dto with ID null!");
        }

        dto.setLevel(level.get());
        game = createGame(dto);
        healingGameRepository.save(game);
    }

    private HealingGameDTO createGameDTO(HealingGame game) {
        HealingGameDTO dto = new HealingGameDTO();

        if (game.getId() != null) {
            dto.setId(game.getId());
        }
        if (game.getLevel() != null) {
            dto.setLevel(game.getLevel());
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

    private HealingGame createGame(HealingGameDTO dto) {
        HealingGame game = new HealingGame();

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
        game.setMutantsKilled(dto.getKilledMutants());
        game.setCollectorsFinished(dto.getFinishedCollectors());
        game.setGameTime(dto.getGameTime());

        // Get all finished and killed mutants/healthy collectors:

        Map<String, HealingCollector> detectedHealingCollectors = healingCollectorRepository.findByIdIn(dto.getKilledMutantsList().stream().map(KilledMutantDTO::getId).collect(Collectors.toList()))
                .stream().collect(Collectors.toMap(HealingCollector::getId, hc -> hc));
        List<GameHealingCollector> detectedMutants = dto.getKilledMutantsList().stream().map(killedMutantDTO -> {
            GameHealingCollector gameHealingCollector = new GameHealingCollector();
            gameHealingCollector.setHealingCollector(detectedHealingCollectors.get(killedMutantDTO.getId()));
            gameHealingCollector.setDetectionRoundNum(killedMutantDTO.getCurrentRoundNum());
            return gameHealingCollector;
        }).collect(Collectors.toList());


        List<HealingCollector> missedMutants = healingCollectorRepository.findByIdIn(dto.getFinishedMutantsList());
        List<HealingCollector> finishedHealthyCollectors = healingCollectorRepository.findByIdIn(dto.getFinishedCollectorsList());
        List<HealingCollector> missedHealthyCollectors = healingCollectorRepository.findByIdIn(dto.getKilledCollectorsList());

        game.setGameDetectedMutantsList(detectedMutants);
        game.setGameMissedMutantsList(missedMutants);
        game.setGameFinishedHealthyCollectorsList(finishedHealthyCollectors);
        game.setGameMissedHealthyCollectorsList(missedHealthyCollectors);

        return game;
    }
}
