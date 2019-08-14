package de.grubermi.code_critters.web.controller;

import de.grubermi.code_critters.application.service.ResultService;
import de.grubermi.code_critters.web.dto.ResultDTO;
import de.grubermi.code_critters.web.dto.ScoreDTO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class ResultController {

    private final Logger logger = LogManager.getLogger(LevelController.class);


    private final ResultService resultService;

    @Autowired
    public ResultController(ResultService resultService) {
        this.resultService = resultService;
    }

    @PostMapping(path = "/result")
    public void storeResult(@RequestBody ResultDTO dto, @CookieValue("id") String cookie) {
        resultService.createResult(dto, cookie);
    }

    @GetMapping(path = "/highscore/data")
    public ScoreDTO[] getHighscore() {
        return resultService.getHighscore();
    }

    @GetMapping(path = "/highscore/me")
    @Secured("ROLE_USER")
    public ScoreDTO getMyScore(@CookieValue("id") String cookie) {
        return resultService.getMyScore(cookie);
    }
}
