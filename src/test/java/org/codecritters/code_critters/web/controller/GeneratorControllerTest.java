package org.codecritters.code_critters.web.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.application.service.LevelService;
import org.codecritters.code_critters.application.service.MutantsService;
import org.codecritters.code_critters.application.service.RowService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.LevelDTO;
import org.codecritters.code_critters.web.dto.MutantDTO;
import org.codecritters.code_critters.web.dto.MutantsDTO;
import org.codecritters.code_critters.web.dto.RowDTO;
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
import org.springframework.test.web.servlet.MvcResult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.reset;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(GeneratorController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class GeneratorControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private LevelService levelService;

    @MockBean
    private RowService rowService;

    @MockBean
    private MutantsService mutantsService;

    private LevelDTO levelDTO;
    private final String level = "level";
    private final MockCookie cookie = new MockCookie("id", "123");
    private final MutantDTO mutant1 = new MutantDTO("code1", "init1", "id1", "xml1");
    private final MutantDTO mutant2 = new MutantDTO("code2", "init2", "id2", "xml2");
    private final RowDTO row1 = new RowDTO("row1", "Advanced", 2);
    private final RowDTO row2 = new RowDTO("row2", "Beginner", 1);
    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());
    private String levelDTOContent;
    private String rowDTOContent;
    private ObjectMapper mapper;

    @Before
    public void setup() throws JsonProcessingException {
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
        levelDTO = new LevelDTO("id1", "level_1", 10, 5, "cut1", "init", "xml", "test", levelArray, tower, spawn, "row1", 2);
        mapper = new ObjectMapper();
        levelDTOContent = mapper.writeValueAsString(levelDTO);
        rowDTOContent = mapper.writeValueAsString(row1);
    }

    @AfterEach
    public void resetService() {
        reset(levelService, mutantsService, rowService);
    }

    @Test
    public void testCreateLevel() throws Exception {
        mvc.perform(post("/generator/level/create")
                .contentType(MediaType.APPLICATION_JSON)
                .content(levelDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(levelService).createLevel(any());
    }

    @Test
    public void testCreateLevelExists() throws Exception {
        doThrow(NotFoundException.class).when(levelService).createLevel(any());
        mvc.perform(post("/generator/level/create")
                .contentType(MediaType.APPLICATION_JSON)
                .content(levelDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().is(404));
    }

    @Test
    public void testDeleteLevel() throws Exception {
        mvc.perform(post("/generator/level/delete")
                .contentType(MediaType.APPLICATION_JSON)
                .content(level)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(levelService).deleteLevel(level);
    }

    @Test
    public void testDeleteLevelNotFound() throws Exception {
        doThrow(NotFoundException.class).when(levelService).deleteLevel(level);

        mvc.perform(post("/generator/level/delete")
                .contentType(MediaType.APPLICATION_JSON)
                .content(level)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().is(404));

        verify(levelService).deleteLevel(level);
    }

    @Test
    public void testUpdateLevel() throws Exception {
        mvc.perform(post("/generator/level/update")
                .contentType(MediaType.APPLICATION_JSON)
                .content(levelDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(levelService).updateLevel(any());
    }

    @Test
    public void testUpdateLevelExists() throws Exception {
        doThrow(AlreadyExistsException.class).when(levelService).updateLevel(any());

        mvc.perform(post("/generator/level/update")
                .contentType(MediaType.APPLICATION_JSON)
                .content(levelDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().is(460));

        verify(levelService).updateLevel(any());
    }

    @Test
    public void testCreateMutants() throws Exception {
        List<MutantDTO> mutants = new ArrayList<>();
        mutants.add(mutant1);
        mutants.add(mutant2);
        MutantsDTO mutantsDTO = new MutantsDTO(levelDTO.getName(), mutants);
        String content = mapper.writeValueAsString(mutantsDTO);

        mvc.perform(post("/generator/mutants/create")
                .contentType(MediaType.APPLICATION_JSON)
                .content(content)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(mutantsService).createMutants(any());
    }

    @Test
    public void testUpdateMutants()  throws Exception {
        List<MutantDTO> mutants = new ArrayList<>();
        mutants.add(mutant1);
        mutants.add(mutant2);
        MutantsDTO mutantsDTO = new MutantsDTO(levelDTO.getName(), mutants);
        String content = mapper.writeValueAsString(mutantsDTO);

        mvc.perform(post("/generator/mutants/update")
                .contentType(MediaType.APPLICATION_JSON)
                .content(content)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(mutantsService).updateMutants(any());
    }

    @Test
    public void testDeleteRow() throws Exception {
        mvc.perform(post("/generator/row/delete")
                .contentType(MediaType.APPLICATION_JSON)
                .content(rowDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(rowService).deleteRow(any());
    }

    @Test
    public void testDeleteRowNotFound() throws Exception {
        doThrow(NotFoundException.class).when(rowService).deleteRow(any());

        mvc.perform(post("/generator/row/delete")
                .contentType(MediaType.APPLICATION_JSON)
                .content(rowDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().is(404));

        verify(rowService).deleteRow(any());
    }

    @Test
    public void testUpdateRow() throws Exception {
        mvc.perform(post("/generator/row/update")
                .contentType(MediaType.APPLICATION_JSON)
                .content(rowDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(rowService).updateRow(any());
    }

    @Test
    public void testUpdateRowNotFound() throws Exception {
        doThrow(NotFoundException.class).when(rowService).updateRow(any());

        mvc.perform(post("/generator/row/update")
                .contentType(MediaType.APPLICATION_JSON)
                .content(rowDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().is(404));

        verify(rowService).updateRow(any());
    }

    @Test
    public void testAddRow() throws Exception {
        mvc.perform(post("/generator/row/add")
                .contentType(MediaType.APPLICATION_JSON)
                .content(rowDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().isOk());

        verify(rowService).addRow(any());
    }

    @Test
    public void testAddRowNotFound() throws Exception {
        doThrow(AlreadyExistsException.class).when(rowService).addRow(any());

        mvc.perform(post("/generator/row/add")
                .contentType(MediaType.APPLICATION_JSON)
                .content(rowDTOContent)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie))
                .andExpect(status().is(460));

        verify(rowService).addRow(any());
    }

    @Test
    public void testGetLevelNames() throws Exception {
        List<String> names = new ArrayList<>();
        names.add(level);
        names.add(levelDTO.getName());
        when(levelService.getLevelNames()).thenReturn(names);

        MvcResult result = mvc.perform(get("/generator/names")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();
        assertAll(
                () -> assertTrue(content.contains(level)),
                () -> assertTrue(content.contains(levelDTO.getName()))
        );

        verify(levelService).getLevelNames();
    }

    @Test
    public void testGetRows() throws Exception {
        List<RowDTO> rows = new ArrayList<>();
        rows.add(row1);
        rows.add(row2);
        when(levelService.getRows()).thenReturn(rows);

        mvc.perform(get("/generator/rows")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id", is(row1.getId())))
                .andExpect(jsonPath("$[0].name", is(row1.getName())))
                .andExpect(jsonPath("$[0].position", is(row1.getPosition())))
                .andExpect(jsonPath("$[1].id", is(row2.getId())))
                .andExpect(jsonPath("$[1].name", is(row2.getName())))
                .andExpect(jsonPath("$[1].position", is(row2.getPosition())))
                .andReturn();

        verify(levelService).getRows();
    }
}
