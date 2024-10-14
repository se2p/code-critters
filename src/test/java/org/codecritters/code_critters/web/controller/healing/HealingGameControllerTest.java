package org.codecritters.code_critters.web.controller.healing;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.codecritters.code_critters.application.service.healing.HealingGameService;
import org.codecritters.code_critters.application.service.healing.HealingMineService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.healing.HealingGameDTO;
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

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(HealingGameController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class HealingGameControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private HealingGameService healingGameService;

    @MockBean
    private HealingMineService healingMineService;

    private HealingGameDTO healingGameDTO = new HealingGameDTO();
    private final MockCookie cookie = new MockCookie("id", "123");
    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());

    @AfterEach
    public void resetService() {
        reset(healingGameService);
    }

    @Test
    public void testCreateHealingGame() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String game = mapper.writeValueAsString(healingGameDTO);
        when(healingGameService.createGame(any(), anyString())).thenReturn(healingGameDTO);
        mvc.perform(post("/healing-game/create")
                        .content(game)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .cookie(cookie)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(healingGameService).createGame(any(HealingGameDTO.class), anyString());
    }
    @Test
    public void testSaveHealingGame() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String game = mapper.writeValueAsString(healingGameDTO);
        mvc.perform(post("/healing-game/save")
                        .content(game)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .cookie(cookie)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(healingGameService).saveGame(any(HealingGameDTO.class));
    }
}
