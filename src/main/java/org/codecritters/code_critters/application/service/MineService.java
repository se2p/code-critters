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
import org.codecritters.code_critters.persistence.entities.Mine;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.MineRepository;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.MinesDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MineService {

    private final GameRepository gameRepository;
    private final MineRepository mineRepository;

    @Autowired
    public MineService(GameRepository gameRepository, MineRepository mineRepository) {
        this.gameRepository = gameRepository;
        this.mineRepository = mineRepository;
    }

    /**
     * Saves all mines passed in the given mine dto list.
     * @param mines The list containing the mines and game id.
     */
    public void saveMines(MinesDTO mines) {
        if (mines.getGame() == null) {
            throw new IncompleteDataException("Cannot save mines for game with id null!");
        }

        Optional<Game> game = gameRepository.findById(mines.getGame());

        if (!game.isPresent()) {
            throw new NotFoundException("Could not find game with id " + mines.getGame());
        }

        for (MineDTO dto : mines.getMines()) {
            Mine mine = saveMine(dto);
            mine.setGame(game.get());
        }
    }

    /**
     * Saves a mine given as a MineDto object.
     * @param dto The mine dto
     * @return The saved mine object
     */
    public Mine saveMine(MineDTO dto) {

        if (dto.getGame() == null) {
            throw new IncompleteDataException("Cannot save mines for game with id null!");
        }

        Mine mine = new Mine();

        Optional<Game> game = gameRepository.findById(dto.getGame());

        if (!game.isPresent()) {
            throw new NotFoundException("Could not find game with id " + dto.getGame());
        }

        mine.setGame(game.get());

        if (dto.getXml() != null) {
            mine.setXml(dto.getXml());
        }
        if (dto.getCode() != null) {
            mine.setCode(dto.getCode());
        }

        if (dto.getCreationStart() != null) {
            mine.setCreationStart(dto.getCreationStart());
        }

        if (dto.getCreationEnd() != null) {
            mine.setCreationEnd(dto.getCreationEnd());
        }

        if (dto.getDeletionDateTime() != null) {
            mine.setDeletionDateTime(dto.getDeletionDateTime());
        }

        mine.setUpdated(dto.isUpdated());
        mine.setDeleted(dto.isDeleted());
        mine.setxPosition(dto.getxPosition());
        mine.setyPosition(dto.getyPosition());

        mineRepository.save(mine);
        return mine;
    }
}
