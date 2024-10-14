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
import org.codecritters.code_critters.persistence.entities.healing.HealingGame;
import org.codecritters.code_critters.persistence.entities.healing.HealingMine;
import org.codecritters.code_critters.persistence.repository.healing.HealingGameRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingMineRepository;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * Service for portals/mines in the Second Stage levels.
 */
@Service
public class HealingMineService {

    HealingGameRepository healingGameRepository;
    HealingMineRepository healingMineRepository;

    @Autowired
    public HealingMineService(HealingGameRepository healingGameRepository, HealingMineRepository healingMineRepository) {
        this.healingGameRepository = healingGameRepository;
        this.healingMineRepository = healingMineRepository;
    }

    /**
     * Updates a mine built in a second stage game.
     * @param dto
     * @param gameId
     * @return
     */
    public HealingMine saveMine(MineDTO dto, String gameId) {
        if (gameId == null || gameId.isEmpty()) {
            throw new IncompleteDataException("Cannot save mines for game with id null!");
        }


        Optional<HealingGame> healingGameOptional = healingGameRepository.findById(gameId);
        if (!healingGameOptional.isPresent()) {
            throw new NotFoundException("Could not find game with id " + dto.getGame());
        }
        dto.setGame(gameId);

        HealingGame game = healingGameOptional.get();
        HealingMine mine = createMineFromDTO(dto, game);

        healingMineRepository.save(mine);
        return mine;

    }

    private HealingMine createMineFromDTO(MineDTO dto, HealingGame game) {
        HealingMine mine = new HealingMine();
        mine.setHealingGame(game);

        Optional.ofNullable(dto.getXml()).ifPresent(mine::setXml);
        Optional.ofNullable(dto.getCode()).ifPresent(mine::setCode);
        Optional.ofNullable(dto.getCreationStart()).ifPresent(mine::setCreationStart);
        Optional.ofNullable(dto.getCreationEnd()).ifPresent(mine::setCreationEnd);
        Optional.ofNullable(dto.getDeletionDateTime()).ifPresent(mine::setDeletionDateTime);
        Optional.ofNullable(dto.getFrontendId()).ifPresent(mine::setFrontendId);
        Optional.ofNullable(dto.isUpdated()).ifPresent(mine::setUpdated);
        Optional.ofNullable(dto.isDeleted()).ifPresent(mine::setDeleted);
        Optional.ofNullable(dto.getxPosition()).ifPresent(mine::setxPosition);
        Optional.ofNullable(dto.getyPosition()).ifPresent(mine::setyPosition);
        Optional.ofNullable(dto.getBlockCount()).ifPresent(mine::setBlockCount);

        return mine;
    }
}
