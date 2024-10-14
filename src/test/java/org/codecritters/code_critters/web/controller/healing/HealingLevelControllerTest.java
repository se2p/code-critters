package org.codecritters.code_critters.web.controller.healing;

import org.codecritters.code_critters.application.service.healing.HealLevelService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.healing.BushDTO;
import org.codecritters.code_critters.web.dto.healing.HealLevelDTO;
import org.codecritters.code_critters.web.dto.healing.HealingCollectorsDTO;
import org.codecritters.code_critters.web.enums.Boardbackground;
import org.junit.Before;
import org.junit.Test;
import org.junit.jupiter.api.AfterEach;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.mockito.Mockito.*;
import static org.mockito.BDDMockito.given;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


@RunWith(SpringRunner.class)
@WebMvcTest(HealingLevelController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class HealingLevelControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private HealLevelService healLevelService;
    private final String levelName = "level_1";
    private HealLevelDTO healLevelDTO;

    @Before
    public void setUp() {
        List<BushDTO> bushDTOS = new ArrayList<>();
        String[][] levelArray = {
                {"wood", "grass", "wood"},
                {"grass", "grass", "wood"}
        };
        HashMap<String, Integer> loopStart = new HashMap<>();
        loopStart.put("x", 3);
        loopStart.put("y", 1);
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 3);
        spawn.put("y", 0);

        healLevelDTO = new HealLevelDTO("id1", levelName, "Level 1", "CUT", "<xml>", "testitest", loopStart, spawn,
                levelArray, bushDTOS, 6, 3, Boardbackground.GRASS);
    }
    @AfterEach
    public void resetService() {
        reset(healLevelService);
    }

    @Test
    public void testGetHealingLevelData() throws Exception {
        given(healLevelService.getLevel(levelName)).willReturn(healLevelDTO);
        mvc.perform(get("/healing-level/get")
                        .param("healLevel", levelName)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.xml", is(healLevelDTO.getXml())))
                .andExpect(jsonPath("$.cut", is(healLevelDTO.getCUT())))
                .andExpect(jsonPath("$.roundsNum", is(healLevelDTO.getRoundsNum())))
                .andExpect(jsonPath("$.background", is(healLevelDTO.getBoardbackground().toString())))
                .andExpect(jsonPath("$.numberOfMutants", is(healLevelDTO.getNumberOfMutants())));
        verify(healLevelService, times(1)).getLevel(levelName);
    }

    @Test
    public void testGetCollectors() throws Exception {
        List<HealingCollectorsDTO> healingCollectorsDTOS = new ArrayList<>();
        HealingCollectorsDTO healingCollectorDTO1 = new HealingCollectorsDTO("mutantid1", "init", "<xml>", true, new ArrayList<>(), 2);
        HealingCollectorsDTO healingCollectorDTO2 = new HealingCollectorsDTO("mutantid2", "init", "<xml>", false, new ArrayList<>(), 0);
        healingCollectorsDTOS.add(healingCollectorDTO1);
        healingCollectorsDTOS.add(healingCollectorDTO2);

        given(healLevelService.getCollectors(levelName)).willReturn(healingCollectorsDTOS);
        mvc.perform(get("/healing-level/collectors")
                        .param("level", levelName)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id", is(healingCollectorDTO1.getId())))
                .andExpect(jsonPath("$[0].init", is(healingCollectorDTO1.getInit())))
                .andExpect(jsonPath("$[0].xml", is(healingCollectorDTO1.getXml())))
                .andExpect(jsonPath("$[0].mutated", is(healingCollectorDTO1.isMutated())))
                .andExpect(jsonPath("$[1].id", is(healingCollectorDTO2.getId())))
                .andExpect(jsonPath("$[1].init", is(healingCollectorDTO2.getInit())))
                .andExpect(jsonPath("$[1].xml", is(healingCollectorDTO2.getXml())))
                .andExpect(jsonPath("$[1].mutated", is(healingCollectorDTO2.isMutated())));
        verify(healLevelService, times(1)).getCollectors(levelName);
    }
}
