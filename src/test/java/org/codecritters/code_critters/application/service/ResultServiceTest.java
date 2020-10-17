package org.codecritters.code_critters.application.service;

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
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.LinkedList;
import java.util.List;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@RunWith(MockitoJUnitRunner.class)
public class ResultServiceTest {

    @InjectMocks
    private ResultService resultService;

    @Mock
    private ResultRepository results;

    @Mock
    private LevelRepository levels;

    @Mock
    private UserRepositiory users;

    @Mock
    private ScoreRepository scores;

    private final ResultDTO result1 = new ResultDTO(950, "level_1", 3);
    private final String cookie = "cookie";

    @Test
    public void createResultWithUserTest() {
        Result result = new Result(800, cookie, new Level(), 2, new User());
        given(levels.findByName(result1.getLevel())).willReturn(any());
        given(users.findByCookie(cookie)).willReturn(new User());
        given(results.getResultByLevelAndUser(any(), any())).willReturn(result);
        resultService.createResult(result1, cookie);
        assertAll("Should update the given result",
                () -> assertEquals(result1.getScore(), result.getScore()),
                () -> assertEquals(result1.getStars(), result.getStars())
        );
        verify(levels, times(1)).findByName(result1.getLevel());
        verify(users, times(1)).findByCookie(cookie);
        verify(results, times(1)).getResultByLevelAndUser(any(), any());
        verify(results, times(1)).save(result);
    }

    @Test
    public void createResultNoUserAndNoResultTest() {
        given(levels.findByName(result1.getLevel())).willReturn(any());
        given(users.findByCookie(cookie)).willReturn(null);
        resultService.createResult(result1, cookie);
        verify(levels, times(1)).findByName(result1.getLevel());
        verify(users, times(1)).findByCookie(cookie);
        verify(results, times(1)).getResultByLevelAndCookie(any(), anyString());
        verify(results, times(1)).save(any());
    }

    @Test
    public void getMyScoreWithUserTest() {
        Score score = new Score("user", 950, 1, 1);
        given(users.findByCookie(cookie)).willReturn(new User());
        given(scores.findByUsername(any())).willReturn(score);
        ScoreDTO scoreDTO = resultService.getMyScore(cookie);
        assertAll("Should return a ScoreDTO with score's values",
                () -> assertEquals(950, scoreDTO.getScore()),
                () -> assertEquals("user", score.getUsername())
        );
        verify(users, times(1)).findByCookie(cookie);
        verify(scores, times(1)).findByUsername(any());
    }

    @Test
    public void getMyScoreNoUserAndNoScoreTest() {
        given(users.findByCookie(cookie)).willReturn(new User());
        given(scores.findByUsername(any())).willReturn(null);
        given(scores.countAll()).willReturn(0);
        ScoreDTO scoreDTO = resultService.getMyScore(cookie);
        Exception exception = assertThrows(NotFoundException.class,
                () -> resultService.getMyScore("no cookie")
        );
        assertAll(
                () -> assertEquals("No such User", exception.getMessage()),
                () -> assertEquals(1, scoreDTO.getPosition())
        );
        verify(users, times(1)).findByCookie(cookie);
        verify(scores, times(1)).findByUsername(any());
        verify(scores, times(1)).countAll();
    }

    @Test
    public void getHighscoreTest() {
        Score score1 = new Score("user", 950, 1, 1);
        Score score2 = new Score("admin", 800, 1, 2);
        List<Score> highscores = new LinkedList<>();
        highscores.add(score1);
        highscores.add(score2);
        given(scores.findTop10()).willReturn(highscores);
        ScoreDTO[] bestScores = resultService.getHighscore();
        assertEquals("Array should contain two scores", 2, bestScores.length);
        verify(scores, times(1)).findTop10();
    }
}
