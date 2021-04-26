package org.codecritters.code_critters.application.service;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2021 Michael Gruber
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
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.GameDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class GameService {

    private final LevelRepository levelRepository;
    private final UserRepositiory userRepositiory;
    private final GameRepository gameRepository;

    @Autowired
    public GameService(LevelRepository levelRepository, UserRepositiory userRepositiory,
                       GameRepository gameRepository) {
        this.levelRepository = levelRepository;
        this.userRepositiory = userRepositiory;
        this.gameRepository = gameRepository;
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

    private GameDTO createGameDTO(Game game) {
        GameDTO dto = new GameDTO();

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

        return game;
    }
}
