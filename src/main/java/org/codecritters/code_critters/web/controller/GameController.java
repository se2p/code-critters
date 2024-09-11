package org.codecritters.code_critters.web.controller;

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

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.codecritters.code_critters.application.service.GameService;
import org.codecritters.code_critters.application.service.MineService;
import org.codecritters.code_critters.web.dto.GameDTO;
import org.codecritters.code_critters.web.dto.GamePauseTimeDTO;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantInfoDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantPortalSaveDTO;
import org.codecritters.code_critters.web.dto.hintSystem.CheckedFieldDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping(value = "/game")
public class GameController {
    private final Logger logger = LogManager.getLogger(GameController.class);

    private final GameService gameService;
    private final MineService mineService;

    @Autowired
    public GameController(GameService gameService, MineService mineService) {
        this.gameService = gameService;
        this.mineService = mineService;
    }

    /**
     * Creates a new game data set with the given values for the given user, if registered.
     * @param dto The game dto containing the initial values to be inserted.
     * @param cookie The cookie for the current user.
     * @return The inserted game data.
     */
    @PostMapping(path = "/create")
    public GameDTO createGame(@RequestBody GameDTO dto, @CookieValue("id") String cookie) {
        return gameService.createGame(dto, cookie);
    }

    /**
     * Updates an existing game data set with the given values.
     * @param dto The dto containing the updated values.
     */
    @PostMapping(path = "/save")
    public void saveGame(@RequestBody GameDTO dto) {
        gameService.saveGame(dto);
    }

    /**
     * Saves the given portal/mine data of a game.
     * @param gameId
     * @param mine
     */
    @PostMapping(path = "/{gameId}/portal")
    public void saveMine(@PathVariable String gameId, @RequestBody MineDTO mine) {
        mineService.saveMine(mine, gameId);
    }

    /**
     * Saves the given game pause information.
     * @param dto a GamePauseTimeDTO object containing the gameId, start and end time of a pause
     */
    @PostMapping(path="/pause")
    public void savePauseTime(@RequestBody GamePauseTimeDTO dto) {
        gameService.updatePauseTimes(dto);
    }


    /**
     * Saves details about the usage of the hint assistant in a game.
     * @param gameId
     * @param dto of the assistant information
     */
    @PostMapping(path="/{gameId}/assistant-details")
    public AssistantInfoDTO saveAssistantInformation(@PathVariable String gameId, @RequestBody AssistantInfoDTO dto) {
        return gameService.saveAssistantUsageInformation(dto, gameId);
    }

    /**
     * Saves a portal that is built during the assistance mode.
     * @param gameId
     * @param dto DTO that holds the assistantInfoId and the portalDTO so save
     */
    @PostMapping(path="/{gameId}/assistant-portal")
    public void saveAssistantBuiltPortal(@PathVariable String gameId, @RequestBody AssistantPortalSaveDTO dto) {
        mineService.savePortalDuringAssistance(dto, gameId);
    }

    /**
     * Saves the fields that have been checked with the hint assistant in a game.
     * @param gameId
     * @param checkedFieldDTO
     */
    @PostMapping(path="/{gameId}/assistant-checked-fields")
    public void saveAssistantCheckedFields(@PathVariable String gameId, @RequestBody CheckedFieldDTO checkedFieldDTO) {
        gameService.saveAssistantCheckedFields(checkedFieldDTO, gameId);
    }
}
