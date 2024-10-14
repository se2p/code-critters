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
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Mine;
import org.codecritters.code_critters.persistence.entities.hintSystem.AssistantInfo;
import org.codecritters.code_critters.persistence.repository.AssistantInfoRepository;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.MineRepository;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantPortalSaveDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class MineService {

    private final GameRepository gameRepository;
    private final MineRepository mineRepository;
    private final AssistantInfoRepository assistantInfoRepository;

    @Autowired
    public MineService(GameRepository gameRepository, MineRepository mineRepository, AssistantInfoRepository assistantInfoRepository) {
        this.gameRepository = gameRepository;
        this.mineRepository = mineRepository;
        this.assistantInfoRepository = assistantInfoRepository;
    }

    /**
     * Saves a mine given as a MineDto object.
     *
     * @param dto The mine dto
     * @return The saved mine object
     */
    public Mine saveMine(MineDTO dto, String gameId) {

        if (gameId == null || gameId.isEmpty()) {
            throw new IncompleteDataException("Cannot save mines for game with id null!");
        }
        Optional<Game> gameOptional = gameRepository.findById(gameId);

        if (!gameOptional.isPresent()) {
            throw new NotFoundException("Could not find game with id " + dto.getGame());
        }
        dto.setGame(gameId);

        Game game = gameOptional.get();
        Mine mine = createMineFromDTO(dto, game);

        mineRepository.save(mine);
        return mine;
    }

    /**
     * Saves a portal (i.e. mine) that has been built during the hint assistance mode.
     * @param assistantPortalSaveDTO
     * @param gameId
     */
    @Transactional
    public void savePortalDuringAssistance(AssistantPortalSaveDTO assistantPortalSaveDTO, String gameId) {
        MineDTO dto = assistantPortalSaveDTO.getMine();
        String assistantInfoId = assistantPortalSaveDTO.getAssistantInfoId();

        if (gameId == null || gameId.isEmpty()) {
            throw new IncompleteDataException("Cannot save mines for game with id null or empty!");
        }

        Optional<Game> game = gameRepository.findById(dto.getGame());
        if (!game.isPresent()) {
            throw new NotFoundException("Could not find game with id " + gameId);
        }
        dto.setGame(gameId);
        Game curGame = game.get();

        Optional<AssistantInfo> assistantInfoOptional = assistantInfoRepository.findById(assistantInfoId);
        if (!assistantInfoOptional.isPresent()) {
            throw new NotFoundException("Could not find assistant info with id " + assistantInfoId);
        }
        AssistantInfo assistantInfo = assistantInfoOptional.get();

        Mine mine = createMineFromDTO(dto, curGame, assistantInfo);

        assistantInfo.addBuiltPortal(mine);
    }

    private Mine createMineFromDTO(MineDTO dto, Game game, AssistantInfo assistantInfo) {
        Mine mine = createMineFromDTO(dto, game);
        mine.setAssistantInfo(assistantInfo);

        return mine;
    }

    private Mine createMineFromDTO(MineDTO dto, Game game) {
        Mine mine = new Mine();
        mine.setGame(game);

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
        Optional.ofNullable(dto.getyPosition()).ifPresent(mine::setyPosition);
        Optional.ofNullable(dto.getBlockCount()).ifPresent(mine::setBlockCount);

        return mine;
    }
}
