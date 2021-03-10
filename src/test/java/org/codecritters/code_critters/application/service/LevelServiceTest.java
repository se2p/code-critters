package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.MutantRepository;
import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.LevelDTO;
import org.codecritters.code_critters.web.dto.MutantDTO;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import javax.validation.ConstraintViolationException;
import java.util.*;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class LevelServiceTest {

    @InjectMocks
    private LevelService levelService;

    @Mock
    private LevelRepository levelRepository;

    @Mock
    private MutantRepository mutantRepository;

    @Mock
    private RowRepository rowRepository;

    @Mock
    private UserRepositiory userRepository;

    @Mock
    private ResultRepository resultRepository;

    private LevelDTO levelDTO;
    private final String level2 = "level_2";

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
        levelDTO = new LevelDTO("id1", "level_1", 10, 5, "cut1", "init", "xml", "test", levelArray, tower, spawn, "row1");
    }

    @Test
    public void createLevelTest() {
        when(rowRepository.findCritterRowById(any())).thenReturn(new CritterRow());
        levelService.createLevel(levelDTO);
        verify(levelRepository, times(1)).save(any());
    }

    @Test
    public void createLevelExceptionTest() {
        when(rowRepository.findCritterRowById(any())).thenReturn(new CritterRow());
        given(levelRepository.save(any())).willThrow(ConstraintViolationException.class);
        Exception exception = assertThrows(AlreadyExistsException.class,
                () -> levelService.createLevel(levelDTO)
        );
        assertEquals("Should throw an exception", "Tried to insert a level that already exists",
                exception.getMessage());
        verify(levelRepository, times(1)).save(any());
    }

    @Test
    public void createLevelNameAlreadyExistsTest() {
        when(levelRepository.findByName(levelDTO.getName())).thenReturn(new Level());
        assertThrows(AlreadyExistsException.class, () -> levelService.createLevel(levelDTO));
    }

    @Test
    public void getLevelTest() {
        given(levelRepository.findByName(levelDTO.getName())).willReturn(new Level());
        levelService.getLevel(levelDTO.getName());
        Exception exception = assertThrows(NotFoundException.class,
                () -> levelService.getLevel(level2)
        );
        assertEquals("There's no level with name: " + level2, exception.getMessage());
        verify(levelRepository, times(1)).findByName(levelDTO.getName());
        verify(levelRepository, times(1)).findByName(level2);
    }

    @Test
    public void getTestTest() {
        given(levelRepository.getTestByName(levelDTO.getName())).willReturn(levelDTO.getTest());
        String test = levelService.getTest(levelDTO.getName());
        Exception exception = assertThrows(NotFoundException.class,
                () -> levelService.getTest(level2)
        );
        assertAll("Should return levelDTO test for level_1 and throw exception for level2",
                () -> assertEquals("There's no level with name: " + level2, exception.getMessage()),
                () -> assertEquals(test, levelDTO.getTest())
        );
        verify(levelRepository, times(1)).getTestByName(levelDTO.getName());
        verify(levelRepository, times(1)).getTestByName(level2);
    }

    @Test
    public void getCUTTest() {
        given(levelRepository.getCUTByName(levelDTO.getName())).willReturn(levelDTO.getCUT());
        String cut = levelService.getCUT(levelDTO.getName());
        Exception exception = assertThrows(NotFoundException.class,
                () -> levelService.getCUT(level2)
        );
        assertAll("Should return levelDTO cut for level_1 and throw exception for level2",
                () -> assertEquals("There's no level with name: " + level2, exception.getMessage()),
                () -> assertEquals(cut, levelDTO.getCUT())
        );
        verify(levelRepository, times(1)).getCUTByName(levelDTO.getName());
        verify(levelRepository, times(1)).getCUTByName(level2);
    }

    @Test
    public void existsLevelTest() {
        given(levelRepository.findByName(levelDTO.getName())).willReturn(new Level());
        assertAll("Test if levels exists",
                () -> assertTrue(levelService.existsLevel(levelDTO.getName())),
                () -> assertFalse(levelService.existsLevel(level2))
        );
        verify(levelRepository, times(2)).findByName(any());
    }

    @Test
    public void getLevelsTest() {
        given(levelRepository.getLevelNames()).willReturn(Arrays.asList(levelDTO.getName()));
        List<String> levelNames = levelService.getLevelNames();
        assertAll("Should return levelDTO name",
                () -> assertEquals(1, levelNames.size()),
                () -> assertTrue(levelNames.contains(levelDTO.getName()))
        );
        verify(levelRepository, times(1)).getLevelNames();
    }

    @Test
    public void getMutantsExceptionsTest() {
        given(levelRepository.getIdByName(levelDTO.getName())).willReturn(levelDTO.getId());
        Exception noMutants = assertThrows(NotFoundException.class,
                () -> levelService.getMutants(levelDTO.getName())
        );
        Exception noLevel = assertThrows(NotFoundException.class,
                () -> levelService.getMutants(level2)
        );
        assertAll("Should return no mutants for level_1 and no level for level2",
                () -> assertEquals("No such level", noLevel.getMessage()),
                () -> assertEquals("No mutants could be found", noMutants.getMessage())
        );
        verify(levelRepository, times(2)).getIdByName(any());
        verify(mutantRepository, times(1)).getCodeByLevel(any());
    }

    @Test
    public void getMutantsTest() {
        String[] mutants = {"code1", "init1"};
        List<String[]> list = new ArrayList<>();
        list.add(mutants);
        given(levelRepository.getIdByName(levelDTO.getName())).willReturn(levelDTO.getId());
        given(mutantRepository.getCodeByLevel(any())).willReturn(list);
        List<MutantDTO> mutantDTOS = levelService.getMutants(levelDTO.getName());
        MutantDTO mutant = mutantDTOS.get(0);
        assertAll("Should return the mutants String[]",
                () -> assertEquals(1, mutantDTOS.size()),
                () -> assertEquals("code1", mutant.getCode())
        );
        verify(mutantRepository, times(1)).getCodeByLevel(any());
    }

    @Test
    public void getInitTest() {
        given(levelRepository.getInitByName(levelDTO.getName())).willReturn(levelDTO.getInit());
        String init = levelService.getInit(levelDTO.getName());
        Exception exception = assertThrows(NotFoundException.class,
                () -> levelService.getInit(level2)
        );
        assertAll("Should return levelDTO init for level_1 and no level for level2",
                () -> assertEquals(levelDTO.getInit(), init),
                () -> assertEquals("There's no level with name: " + level2, exception.getMessage())
        );
        verify(levelRepository, times(1)).getInitByName(levelDTO.getName());
        verify(levelRepository, times(1)).getInitByName(level2);
    }

    @Test
    public void getLevelsGroupedNoUserTest() {
        String cookie = "cookie";
        Collection<CritterRow> rows = new ArrayList<>();
        CritterRow row1 = new CritterRow("Tutorial", 0);
        rows.add(row1);
        given(rowRepository.getRows()).willReturn(rows);
        given(userRepository.existsByCookie(cookie)).willReturn(false);
        List groupedLevels = levelService.getLevelsGrouped(cookie);
        assertEquals("{name=Tutorial, levels=[]}", groupedLevels.get(0).toString());
        verify(rowRepository, times(1)).getRows();
        verify(userRepository, times(1)).existsByCookie(cookie);
        verify(userRepository, times(0)).findByCookie(cookie);
    }

    @Test
    public void getLevelsGroupedWithUserTest() {
        String cookie = "cookie";
        Collection<CritterRow> rows = new ArrayList<>();
        CritterRow row1 = new CritterRow("Tutorial", 0);
        rows.add(row1);
        given(rowRepository.getRows()).willReturn(rows);
        given(userRepository.existsByCookie(cookie)).willReturn(true);
        List groupedLevels = levelService.getLevelsGrouped(cookie);
        assertEquals("{name=Tutorial, levels=[]}", groupedLevels.get(0).toString());
        verify(rowRepository, times(1)).getRows();
        verify(userRepository, times(1)).existsByCookie(cookie);
        verify(userRepository, times(1)).findByCookie(cookie);
    }

    @Test
    public void getRowsTest() {
        Collection<CritterRow> rows = new ArrayList<>();
        CritterRow row1 = new CritterRow("Tutorial", 0);
        CritterRow row2 = new CritterRow("Beginner", 1);
        rows.add(row1);
        rows.add(row2);
        given(rowRepository.getRows()).willReturn(rows);
        List<RowDTO> rowDTOs = levelService.getRows();
        assertAll(
                () -> assertEquals(2, rowDTOs.size()),
                () -> assertEquals("Tutorial", rowDTOs.get(0).getName()),
                () -> assertEquals("Beginner", rowDTOs.get(1).getName())
        );
        verify(rowRepository, times(1)).getRows();
    }

    @Test
    public void deleteLevelTest() {
        Level level = new Level(new CritterRow(), levelDTO.getName(), levelDTO.getNumberOfCritters(),
                levelDTO.getNumberOfHumans(), levelDTO.getCUT(), levelDTO.getTest(), levelDTO.getXml(),
                levelDTO.getInit(), levelDTO.getLevel());
        level.setId("id");
        when(levelRepository.findByName(levelDTO.getName())).thenReturn(level);
        levelService.deleteLevel(levelDTO.getName());
        verify(mutantRepository).deleteAllByLevel(level);
        verify(resultRepository).deleteAllByLevel(level);
        verify(levelRepository).deleteById(level.getId());
    }

    @Test
    public void deleteLevelNotFoundExceptionTest() {
        assertThrows(NotFoundException.class, () -> levelService.deleteLevel(levelDTO.getName()));
    }
}