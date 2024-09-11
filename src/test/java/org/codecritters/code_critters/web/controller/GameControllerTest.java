package org.codecritters.code_critters.web.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.codecritters.code_critters.application.service.GameService;
import org.codecritters.code_critters.application.service.MineService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.GameDTO;
import org.codecritters.code_critters.web.dto.GamePauseTimeDTO;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.MinesDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantInfoDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantPortalSaveDTO;
import org.codecritters.code_critters.web.dto.hintSystem.CheckedFieldDTO;
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

import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.reset;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(GameController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class GameControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private GameService gameService;

    @MockBean
    private MineService mineService;

    private MinesDTO minesDTO = new MinesDTO();
    private MineDTO mineDTO = new MineDTO();
    private AssistantInfoDTO assistantInfoDTO = new AssistantInfoDTO();
    private AssistantPortalSaveDTO assistantPortalSaveDTO = new AssistantPortalSaveDTO();
    private CheckedFieldDTO checkedFieldDTO = new CheckedFieldDTO();
    private GamePauseTimeDTO gamePauseTimeDTO = new GamePauseTimeDTO();
    private final GameDTO gameDTO = new GameDTO();
    private final MockCookie cookie = new MockCookie("id", "123");
    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());

    @AfterEach
    public void resetService() {
        reset(gameService, mineService);
    }

    @Test
    public void testCreateGame() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String game = mapper.writeValueAsString(gameDTO);
        System.out.println(game);
        when(gameService.createGame(any(), anyString())).thenReturn(gameDTO);
        mvc.perform(post("/game/create")
                        .content(game)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .cookie(cookie)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(gameService).createGame(any(), anyString());
    }

    @Test
    public void testSaveGame() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String game = mapper.writeValueAsString(gameDTO);
        mvc.perform(post("/game/save")
                        .content(game)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(gameService).saveGame(any());
    }

    @Test
    public void testSaveMine() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String mine = mapper.writeValueAsString(mineDTO);
        String gameId = "testGameId";
        mvc.perform(post("/game/{gameId}/portal", gameId)
                        .content(mine)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(mineService).saveMine(any(MineDTO.class), eq(gameId));
    }

    @Test
    public void testSavePauseTime() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String pause = mapper.writeValueAsString(gamePauseTimeDTO);
        mvc.perform(post("/game/pause")
                        .content(pause)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(gameService).updatePauseTimes(any());
    }

    @Test
    public void testSaveAssistantInformation() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String assistantInfoDTOString = mapper.writeValueAsString(assistantInfoDTO);
        String gameId = "testGameId";
        mvc.perform(post("/game/{gameId}/assistant-details", gameId)
                        .content(assistantInfoDTOString)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(gameService).saveAssistantUsageInformation(any(AssistantInfoDTO.class), eq(gameId));
    }

    @Test
    public void testSaveAssistantBuiltPortal() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String assistantPortalSaveDTOString = mapper.writeValueAsString(assistantPortalSaveDTO);
        String gameId = "testGameId";
        mvc.perform(post("/game/{gameId}/assistant-portal", gameId)
                        .content(assistantPortalSaveDTOString)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(mineService).savePortalDuringAssistance(any(AssistantPortalSaveDTO.class), eq(gameId));
    }

    @Test
    public void testSaveAssistantCheckedFields() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String checkedFieldDTOString = mapper.writeValueAsString(checkedFieldDTO);
        String gameId = "testGameId";
        mvc.perform(post("/game/{gameId}/assistant-checked-fields", gameId)
                        .content(checkedFieldDTOString)
                        .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                        .param(csrfToken.getParameterName(), csrfToken.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(gameService).saveAssistantCheckedFields(any(CheckedFieldDTO.class), eq(gameId));
    }

}
