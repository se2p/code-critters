package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Result;
import de.grubermi.code_critters.persistence.entities.User;
import de.grubermi.code_critters.persistence.repository.LevelRepository;
import de.grubermi.code_critters.persistence.repository.ResultRepository;
import de.grubermi.code_critters.persistence.repository.UserRepositiory;
import de.grubermi.code_critters.web.dto.ResultDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResultService {

    private final ResultRepository resultRepository;
    private final LevelRepository levelRepository;
    private final UserRepositiory userRepositiory;

    @Autowired
    public ResultService(ResultRepository resultRepository, LevelRepository levelRepository, UserRepositiory userRepositiory) {
        this.resultRepository = resultRepository;
        this.levelRepository = levelRepository;
        this.userRepositiory = userRepositiory;
    }

    public void createResult(ResultDTO resultDTO, String cookie) {
        //TODO link user
        Level level = levelRepository.findByName(resultDTO.getLevel());
        User user = userRepositiory.findByCookie(cookie);
        Result result;
        if(user != null)  {
            result = resultRepository.getResultByLevelAndUser(level, user);
            cookie = null;
        } else {
            result = resultRepository.getResultByLevelAndCookie(level, cookie);
        }
        if (result != null) {
            result.setScore(resultDTO.getScore());
            result.setStars(resultDTO.getStars());
        } else{
            result = new Result(resultDTO.getScore(), cookie, level, resultDTO.getStars(), user);
        }
        resultRepository.save(result);
    }
}
