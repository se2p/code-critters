package org.codecritters.code_critters.web.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.codecritters.code_critters.application.service.ResultService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.ResultDTO;
import org.codecritters.code_critters.web.dto.ScoreDTO;
import org.junit.Test;
import org.junit.jupiter.api.AfterEach;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockCookie;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.Matchers.hasSize;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(ResultController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class ResultControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private ResultService resultService;

    private final ScoreDTO myScore = new ScoreDTO("admin", 500, 2, 1);
    private final MockCookie cookie = new MockCookie("id", "123");
    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());

    @AfterEach
    public void resetService() {
        reset(resultService);
    }

    @Test
    public void storeResultTest() throws Exception {
        ResultDTO resultDto = new ResultDTO(950, "level_2", 3);
        ObjectMapper mapper = new ObjectMapper();
        String result = mapper.writeValueAsString(resultDto);

        mvc.perform(post("/result")
                .content(result).sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(resultService, times(1)).createResult(any(), anyString());
    }

    @Test
    public void getHighscoreTest() throws Exception {
        ScoreDTO[] scoreDTOS = {myScore};
        given(resultService.getHighscore()).willReturn(scoreDTOS);

        mvc.perform(get("/highscore/data")
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", hasSize(1)))
                .andExpect(jsonPath("$[0].user", is(myScore.getUser())))
                .andExpect(jsonPath("$[0].score", is(myScore.getScore())))
                .andExpect(jsonPath("$[0].levels", is(myScore.getLevels())))
                .andExpect(jsonPath("$[0].position", is(myScore.getPosition())));

        verify(resultService, times(1)).getHighscore();
    }

    @Test
    public void getMyScoreTest() throws Exception {
        given(resultService.getMyScore(anyString())).willReturn(myScore);

        mvc.perform(get("/highscore/me")
                .contentType(MediaType.APPLICATION_JSON)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.user", is(myScore.getUser())))
                .andExpect(jsonPath("$.score", is(myScore.getScore())))
                .andExpect(jsonPath("$.levels", is(myScore.getLevels())))
                .andExpect(jsonPath("$.position", is(myScore.getPosition())));

        verify(resultService, times(1)).getMyScore(anyString());
    }
}