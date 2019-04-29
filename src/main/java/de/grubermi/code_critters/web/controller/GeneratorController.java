package de.grubermi.code_critters.web.controller;

import de.grubermi.code_critters.application.exception.AlreadyExistsException;
import de.grubermi.code_critters.application.service.LevelService;
import de.grubermi.code_critters.application.service.MutantsService;
import de.grubermi.code_critters.web.dto.LevelDTO;
import de.grubermi.code_critters.web.dto.MutantsDTO;
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
    @Secured("ROLE_ADMIN")
    public List<String> getLevelNames() {
        return levelService.getLevelNames();
    }
}
