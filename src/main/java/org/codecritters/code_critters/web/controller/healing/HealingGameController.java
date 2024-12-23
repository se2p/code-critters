package org.codecritters.code_critters.web.controller.healing;

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

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.codecritters.code_critters.application.service.healing.HealingGameService;
import org.codecritters.code_critters.application.service.healing.HealingMineService;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.healing.HealingGameDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantInfoDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantPortalSaveDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping(value = "/healing-game")
public class HealingGameController {

    private final Logger logger = LogManager.getLogger(HealingGameController.class);

    private final HealingGameService healingGameService;

    private final HealingMineService mineService;


    @Autowired
    public HealingGameController(HealingGameService healingGameService, HealingMineService mineService) {
        this.healingGameService = healingGameService;
        this.mineService = mineService;
    }

    /**
     * Creates a new game data set with the given values for the given user, if registered.
     * @param dto The game dto containing the initial values to be inserted.
     * @param cookie The cookie for the current user.
     * @return The inserted game data.
     */
    @PostMapping(path = "/create")
    public HealingGameDTO createHealingGame(@RequestBody HealingGameDTO dto, @CookieValue("id") String cookie) {
        return healingGameService.createGame(dto, cookie);
    }

    /**
     * Updates an existing game data set with the given values.
     * @param dto The dto containing the updated values.
     */
    @PostMapping(path = "/save")
    public void saveHealingGame(@RequestBody HealingGameDTO dto) {
        healingGameService.saveGame(dto);
    }

    /**
     * Saves the given portal/mine data of a game.
     * @param gameId
     * @param portal
     */
    @PostMapping(path = "/{gameId}/portal")
    public void saveHealingPortal(@PathVariable String gameId, @RequestBody MineDTO portal) {
        mineService.saveMine(portal, gameId);
    }

    /**
     * Saves details about the usage of the hint assistant in a game.
     * @param gameId
     * @param dto of the assistant information
     */
    @PostMapping(path="/{gameId}/assistant-details")
    public AssistantInfoDTO saveAssistantInformation(@PathVariable String gameId, @RequestBody AssistantInfoDTO dto) {
        return healingGameService.saveAssistantUsageInformation(dto, gameId);
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
     * Returns true if user has already seen the code explanations of a level
     * @param levelName
     * @param cookie
     */
    @GetMapping(path="/{levelName}/code-explanations-used")
    public Boolean hasUsedCodeExplanations(@PathVariable String levelName, @CookieValue("id") String cookie) {
        return healingGameService.hadCodeExplained(levelName, cookie);
    }

}
