package org.codecritters.code_critters.application.service;

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

import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Result;
import org.codecritters.code_critters.persistence.entities.Score;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.codecritters.code_critters.persistence.repository.ScoreRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.ResultDTO;
import org.codecritters.code_critters.web.dto.ScoreDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
