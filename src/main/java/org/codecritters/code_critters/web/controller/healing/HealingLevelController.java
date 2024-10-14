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

import org.apache.commons.io.IOUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.codecritters.code_critters.application.service.healing.HealLevelService;
import org.codecritters.code_critters.web.controller.LevelController;
import org.codecritters.code_critters.web.dto.healing.HealLevelDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping(value = "/healing-level")
public class HealingLevelController {

    private final Logger logger = LogManager.getLogger(LevelController.class);

    private final HealLevelService healLevelService;

    @Autowired
    public HealingLevelController(HealLevelService healLevelService) {
        this.healLevelService = healLevelService;
    }

    @GetMapping(path = "/get")
    public HashMap getHealingLevelData(@RequestParam String healLevel) {
        String toolbox;
        try {
            // gets the user toolbox as an InputStream
            InputStream is = this.getClass().getResourceAsStream("/data/user_healing_toolbox.tb");
            // copies it to the response's OutputStream
            StringWriter writer = new StringWriter();
            toolbox = IOUtils.toString(is, "UTF-8");
            is.close();
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", ex);
            throw new RuntimeException("IOError writing file to output stream");
        }

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("toolbox", toolbox);

        HealLevelDTO dto = healLevelService.getLevel(healLevel);

        map.put("xml", dto.getXml());
        map.put("test", dto.getTest());
        map.put("cut", dto.getCUT());
        map.put("name", dto.getName());
        map.put("id", dto.getId());
        map.put("loopStart", dto.getLoopStart());
        map.put("basketPosition", dto.getBasketPosition());
        map.put("spawnOne", dto.getSpawn());
        map.put("displayLevel", dto.getDisplayLevel());
        map.put("berryBushes", dto.getBushes());
        map.put("roundsNum", dto.getRoundsNum());
        map.put("numberOfMutants", dto.getNumberOfMutants());
        map.put("background", dto.getBoardbackground());
        map.put("innerLoopStart", dto.getInnerLoopStart());
        map.put("innerBasketPosition", dto.getInnerBasketPosition());

        return map;
    }

    /**
     * Returns the mutants for the given level.
     * @param level The level for which the mutant data is to be retrieved.
     * @return A list of mutants.
     */
    @GetMapping(path = "/collectors")
    public List getCollectors(@RequestParam String level) {
        return healLevelService.getCollectors(level);
    }
}
