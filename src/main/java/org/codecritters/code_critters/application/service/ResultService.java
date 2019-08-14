package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.application.exception.NotFoundException;
import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Result;
import de.grubermi.code_critters.persistence.entities.Score;
import de.grubermi.code_critters.persistence.entities.User;
import de.grubermi.code_critters.persistence.repository.LevelRepository;
import de.grubermi.code_critters.persistence.repository.ResultRepository;
import de.grubermi.code_critters.persistence.repository.ScoreRepository;
import de.grubermi.code_critters.persistence.repository.UserRepositiory;
import de.grubermi.code_critters.web.dto.ResultDTO;
import de.grubermi.code_critters.web.dto.ScoreDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

@Service
public class ResultService {

    private final ResultRepository resultRepository;
    private final LevelRepository levelRepository;
    private final UserRepositiory userRepositiory;
    private final ScoreRepository scoreRepository;

    @Autowired
    public ResultService(ResultRepository resultRepository, LevelRepository levelRepository, UserRepositiory userRepositiory, ScoreRepository scoreRepository) {
        this.resultRepository = resultRepository;
        this.levelRepository = levelRepository;
        this.userRepositiory = userRepositiory;
        this.scoreRepository = scoreRepository;
    }

    public void createResult(ResultDTO resultDTO, String cookie) {
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

    public ScoreDTO getMyScore(String cookie) {
        User user = userRepositiory.findByCookie(cookie);
        if(user == null){
            throw new NotFoundException("No such User");
        }

        Score score = scoreRepository.findByUsername(user.getUsername());
        if(score == null){
            ScoreDTO scoreDTO = new ScoreDTO(user.getUsername());
            scoreDTO.setPosition(scoreRepository.countAll() + 1);
            return scoreDTO;
        }

        return createScoreDTO(score);
    }

    public ScoreDTO[] getHighscore() {
        List<Score> scores = scoreRepository.findTop10();
        ScoreDTO[] highscore = new ScoreDTO[scores.size() < 10 ? scores.size() : 10];
        for (int i = 0; i < highscore.length; i++) {
            highscore[i] = (createScoreDTO(scores.get(i)));
        }
        return highscore;
    }

    private ScoreDTO createScoreDTO(Score score) {
        return new ScoreDTO(score.getUsername(), score.getScore(), score.getLevels(), score.getPosition());
    }
}
