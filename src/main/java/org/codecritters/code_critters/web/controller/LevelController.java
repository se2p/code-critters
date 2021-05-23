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

import org.codecritters.code_critters.application.service.LevelService;
import org.codecritters.code_critters.web.dto.LevelDTO;
import org.apache.commons.io.IOUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.List;

/**
 * Schnittstelle zum Levelmanagement
 */
@CrossOrigin
@RestController
@RequestMapping(value = "/level")
public class LevelController {

    private final Logger logger = LogManager.getLogger(LevelController.class);


    private final LevelService levelService;

    @Autowired
    public LevelController(LevelService levelService) {
        this.levelService = levelService;
    }

    /**
     * Returns the entire level data for a given level.
     * @param level The level for which the data should be retrieved.
     * @return A map containing all of the level data.
     */
    @GetMapping(path = "/get")
    public HashMap getLevelData(@RequestParam String level) {
        LevelDTO dto = levelService.getLevel(level);
        String toolbox;
        try {
            // gets the user toolbox as an InputStream
            InputStream is = this.getClass().getResourceAsStream("/data/user_toolbox.tb");
            // copies it to the response's OutputStream
            StringWriter writer = new StringWriter();
            toolbox = IOUtils.toString(is, "UTF-8");
            is.close();
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", ex);
            throw new RuntimeException("IOError writing file to output stream");
        }

        HashMap map = new HashMap<String, Object>();
        map.put("id", dto.getId());
        map.put("level", dto.getLevel());
        map.put("tower", dto.getTower());
        map.put("spawn", dto.getSpawn());
        map.put("width", 16);
        map.put("height", 16);
        map.put("numberOfCritters", dto.getNumberOfCritters());
        map.put("numberOfHumans", dto.getNumberOfHumans());
        map.put("cut", dto.getCUT());
        map.put("init", dto.getInit());
        map.put("xml", dto.getXml());
        map.put("test", dto.getTest());
        map.put("toolbox", toolbox);
        map.put("row", dto.getRow());
        map.put("freeMines", dto.getFreeMines());

        return map;
    }

    /**
     * Returns the mutants for the given level.
     * @param level The level for which the mutant data is to be retrieved.
     * @return A list of mutants.
     */
    @GetMapping(path = "/mutants")
    public List getMutants(@RequestParam String level) {
        return levelService.getMutants(level);
    }

    /**
     * Returns a list containing level names, the achieved score and stars grouped by CritterRows.
     * @param cookie The current user cookie.
     * @return A list of LevelResultTypes.
     */
    @GetMapping(path = "/levels")
    public List getLevels(@CookieValue("id") String cookie) {
        return levelService.getLevelsGrouped(cookie);
    }

}
