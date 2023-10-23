package org.codecritters.code_critters.web.controller;

import org.codecritters.code_critters.application.service.StatisticService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.usageStats.GamesOfUserDTO;
import org.codecritters.code_critters.web.dto.usageStats.GamingDetailDTO;
import org.codecritters.code_critters.web.dto.usageStats.MineHistoryDTO;
import org.junit.Test;
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
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(UsageStatisticsController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class UsageStatisticsControllerTest {


    @Autowired
    private MockMvc mvc;

    @MockBean
    private StatisticService statisticService;

    private final MockCookie cookie = new MockCookie("id", "123");

    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());
    private GamesOfUserDTO gamesOfUserDTO = new GamesOfUserDTO();

    private GamingDetailDTO gamingDetailDTO = new GamingDetailDTO();

    private MineHistoryDTO mineHistoryDTO = new MineHistoryDTO();

    private String username = "someName";

    private String gameId = "abcd-some-id";

    private int xPos = 6;

    private int yPos = 8;


    public void resetService() {
        reset(statisticService);
    }

    @Test
    public void testGetGamesOfUser() throws Exception {
        gamesOfUserDTO.setUser(username);
        when(statisticService.getAllGamesOfUser(any())).thenReturn(gamesOfUserDTO);

        mvc.perform(get("/statistics/games")
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .param("userName", username)
                        .cookie(cookie)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.user", is(gamesOfUserDTO.getUser())));
    }

    @Test
    public void testGetGameDetails() throws Exception {
        gamingDetailDTO.setUser(username);
        when(statisticService.getGameDetails(any())).thenReturn(gamingDetailDTO);

        mvc.perform(get("/statistics/game")
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .param("gameId", gameId)
                        .cookie(cookie)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.user", is(gamingDetailDTO.getUser())));
    }

    @Test
    public void testGetMineHistory() throws Exception {
        mineHistoryDTO.setGameId(gameId);
        mineHistoryDTO.setxPosition(xPos);
        mineHistoryDTO.setyPosition(yPos);

        when(statisticService.getMineHistory(xPos, yPos, gameId)).thenReturn(mineHistoryDTO);

        mvc.perform(get("/statistics/mine")
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .param("xPosition", "" + xPos)
                        .param("yPosition", "" + yPos)
                        .param("gameId", gameId)
                        .cookie(cookie)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.gameId", is(mineHistoryDTO.getGameId())));
    }
}
