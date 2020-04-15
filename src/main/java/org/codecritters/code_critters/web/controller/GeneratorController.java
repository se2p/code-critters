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

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.service.LevelService;
import org.codecritters.code_critters.application.service.MutantsService;
import org.codecritters.code_critters.web.dto.LevelDTO;
import org.codecritters.code_critters.web.dto.MutantsDTO;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.apache.commons.io.IOUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Schnittstelle zum Levelmanagement
 */
@CrossOrigin
@RestController
@RequestMapping(value = "/generator")
public class GeneratorController {

    private final Logger logger = LogManager.getLogger(GeneratorController.class);

    private final LevelService levelService;
    private final MutantsService mutantsService;


    @Autowired
    public GeneratorController(LevelService levelService, MutantsService mutantsService) {
        this.levelService = levelService;
        this.mutantsService = mutantsService;
    }

    /**
     * Returns the toolbox
     */
    @GetMapping(path = "/toolbox")
    @Secured("ROLE_ADMIN")
    public void getToolbox(HttpServletResponse response) {
        try {
            // get your file as InputStream
            InputStream is = this.getClass().getResourceAsStream("/data/full_toolbox.tb");
            // copy it to response's OutputStream
            IOUtils.copy(is, response.getOutputStream());
            is.close();
            response.flushBuffer();
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", ex);
            throw new RuntimeException("IOError writing file to output stream");
        }
    }

    /**
     * Creates a new level
     */
    @PostMapping(path = "/level/image")
    @Secured("ROLE_ADMIN")
    public void createLevelImage(@RequestParam("file") MultipartFile image) {
        levelService.storeImage(image);
    }

    /**
     * Creates a new image
     */
    @PostMapping(path = "/level/create")
    @Secured("ROLE_ADMIN")
    public void createLevel(@RequestBody LevelDTO dto, HttpServletResponse response) {
        try {
            levelService.createLevel(dto);
        } catch (AlreadyExistsException e) {
            response.setStatus(460);
        }
    }

    /**
     * Creates new mutants
     */
    @PostMapping(path = "/mutants/create")
    @Secured("ROLE_ADMIN")
    public void createMutants(@RequestBody MutantsDTO dto) {
        mutantsService.createMutants(dto);
    }

    @GetMapping(path = "/names")
    public List<String> getLevelNames() {
        return levelService.getLevelNames();
    }

    @GetMapping(path = "/rows")
    @Secured("ROLE_ADMIN")
    public List<RowDTO> getRows() {
        return levelService.getRows();
    }
}