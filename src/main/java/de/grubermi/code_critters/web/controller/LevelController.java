package de.grubermi.code_critters.web.controller;

import de.grubermi.code_critters.application.exception.NotFoundException;
import de.grubermi.code_critters.application.service.LevelService;
import de.grubermi.code_critters.web.dto.LevelDTO;
import de.grubermi.code_critters.web.dto.ResultDTO;
import org.apache.commons.io.IOUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
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
     * Returns the entire level data
     */
    @GetMapping(path = "/get")
    public HashMap getLevelData(@RequestParam String level, HttpServletResponse response) {
        LevelDTO dto = levelService.getLevel(level);
        String toolbox;
        try {
            // get your file as InputStream
            InputStream is = this.getClass().getResourceAsStream("/data/user_toolbox.tb");
            // copy it to response's OutputStream
            StringWriter writer = new StringWriter();
            toolbox = IOUtils.toString(is, "UTF-8");
            is.close();
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", ex);
            throw new RuntimeException("IOError writing file to output stream");
        }


        HashMap map = new HashMap<String, Object>();
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

        return map;

    }

    @GetMapping(path = "/mutants")
    public List getMutants(@RequestParam String level) {
        return levelService.getMutants(level);
    }

    @GetMapping(path = "/levels")
    public List getLevels(@CookieValue("id") String cookie) {
        return levelService.getLevelsGrouped(cookie);
    }

}
