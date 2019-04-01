package de.grubermi.code_critters.web.controller;

import de.grubermi.code_critters.application.service.LevelService;
import de.grubermi.code_critters.application.service.ResultService;
import de.grubermi.code_critters.web.dto.ResultDTO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;

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
}
