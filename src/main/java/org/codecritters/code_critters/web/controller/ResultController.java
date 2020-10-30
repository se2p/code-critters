package org.codecritters.code_critters.web.controller;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
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

import org.codecritters.code_critters.application.service.ResultService;
import org.codecritters.code_critters.web.dto.ResultDTO;
import org.codecritters.code_critters.web.dto.ScoreDTO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class ResultController {

    private final Logger logger = LogManager.getLogger(LevelController.class);


    private final ResultService resultService;

    @Autowired
    public ResultController(ResultService resultService) {
        this.resultService = resultService;
    }

    /**
     * Stores a user's result in the database.
     * @param dto The UserDTO containing the user data.
     * @param cookie The current user cookie.
     */
    @PostMapping(path = "/result")
    public void storeResult(@RequestBody ResultDTO dto, @CookieValue("id") String cookie) {
        resultService.createResult(dto, cookie);
    }

    /**
     * Returns the score data of the ten users with the highest score.
     * @return The list of ScoreDTOs.
     */
    @GetMapping(path = "/highscore/data")
    public ScoreDTO[] getHighscore() {
        return resultService.getHighscore();
    }

    /**
     * Returns the current user's score data.
     * @param cookie The current user cookie identifying the user.
     * @return The user's score data.
     */
    @GetMapping(path = "/highscore/me")
    @Secured("ROLE_USER")
    public ScoreDTO getMyScore(@CookieValue("id") String cookie) {
        return resultService.getMyScore(cookie);
    }
}
