package org.codecritters.code_critters.web.controller;

import org.codecritters.code_critters.application.service.LevelService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.LevelDTO;
import org.codecritters.code_critters.web.dto.MutantDTO;
import org.codecritters.code_critters.web.dto.hintSystem.HintDTO;
import org.codecritters.code_critters.web.dto.hintSystem.PortalSolutionHintDTO;
import org.codecritters.code_critters.web.enums.HintSituation;
import org.junit.Before;
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

import java.util.*;

import static org.hamcrest.CoreMatchers.is;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(LevelController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class LevelControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private LevelService levelService;

    private LevelDTO levelDTO;
    private HintDTO hintDTO;
    private final String level = "level";
    private final MockCookie cookie = new MockCookie("id", "123");
    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());

    @Before
    public void setup() {
        String[][] levelArray = {
                {"wood", "grass", "wood"},
                {"grass", "grass", "wood"}
        };
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 1);
        spawn.put("y", 8);
        HashMap<String, Integer> tower = new HashMap<>();
        tower.put("x", 14);
        tower.put("y", 8);
        hintDTO = new HintDTO();
        Map<Integer, String> hintTexts = new HashMap<>();
        hintTexts.put(0, "Introduction text first step");
        hintTexts.put(1, "Introduction text next step, show some portal");
        Map<Integer, String> portalXmls = new HashMap<>();
        portalXmls.put(1, "<xml bla bla> some example portal </xml>");

        hintDTO.setPortalXmls(portalXmls);
        hintDTO.setHintSituation(HintSituation.INTRODUCTION);
        hintDTO.setHintTexts(hintTexts);
        hintDTO.setId("hint_id_intro");
        hintDTO.setAssociatedCoordinates(null);
        hintDTO.setAssociatedCutBlocks(null);
        hintDTO.setAssociatedComponentIds(null);
        hintDTO.setExpectedClickedCoordinates(null);

        List<HintDTO> hintslist = new ArrayList<>();
        List<PortalSolutionHintDTO> portalSolutions = new ArrayList<>();
        hintslist.add(hintDTO);
        levelDTO = new LevelDTO("id1", "level_1", "Level 1", 10, 5, "cut1", "init", "xml", "test", levelArray, tower, spawn, "row1", 2, hintslist, portalSolutions);
    }

    @AfterEach
    public void resetService() {reset(levelService);}

    @Test
    public void getLevelDataTest() throws Exception {
        given(levelService.getLevel(level)).willReturn(levelDTO);
        mvc.perform(get("/level/get")
                .param("level", level)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.init", is(levelDTO.getInit())))
                .andExpect(jsonPath("$.cut", is(levelDTO.getCUT())))
                .andExpect(jsonPath("$.test", is(levelDTO.getTest())))
                .andExpect(jsonPath("$.hints[0].hintSituation", is("INTRODUCTION")));
        verify(levelService, times(1)).getLevel(level);
    }

    @Test
    public void getMutantsTest() throws Exception {
        List<MutantDTO> mutantsList = new ArrayList<>();
        MutantDTO mutant1 = new MutantDTO("code1", "init1", "id1", "xml");
        MutantDTO mutant2 = new MutantDTO("code2", "init2", "id2", "xml");
        mutantsList.add(mutant1);
        mutantsList.add(mutant2);
        given(levelService.getMutants(level)).willReturn(mutantsList);
        mvc.perform(get("/level/mutants")
                .param("level", level)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].code", is(mutant1.getCode())))
                .andExpect(jsonPath("$[0].init", is(mutant1.getInit())))
                .andExpect(jsonPath("$[1].code", is(mutant2.getCode())))
                .andExpect(jsonPath("$[1].init", is(mutant2.getInit())));
        verify(levelService, times(1)).getMutants(level);
    }

    @Test
    public void getLevelsTest() throws Exception {
        List groupedLevels = new LinkedList();
        HashMap map = new HashMap<String, Object>();
        map.put("name", "Tutorial");
        map.put("levels", 0);
        groupedLevels.add(map);
        given(levelService.getLevelsGrouped(cookie.getValue())).willReturn(groupedLevels);
        mvc.perform(get("/level/levels")
                .contentType(MediaType.APPLICATION_JSON)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].name", is("Tutorial")))
                .andExpect(jsonPath("$[0].levels", is(0)));
        verify(levelService, times(1)).getLevelsGrouped(cookie.getValue());
    }
}
