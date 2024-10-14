package org.codecritters.code_critters.application.service.healing;

import org.codecritters.code_critters.persistence.entities.healing.Bush;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealingCollector;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealResultRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingCollectorRepository;
import org.codecritters.code_critters.web.dto.healing.HealLevelDTO;
import org.codecritters.code_critters.web.dto.healing.HealingCollectorsDTO;
import org.codecritters.code_critters.web.enums.Boardbackground;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class HealLevelServiceTest {


    @InjectMocks
    private HealLevelService healLevelService;
    @Mock
    private HealLevelRepository healLevelRepository;
    @Mock
    private UserRepositiory userRepositiory;
    @Mock
    private HealResultRepository healResultRepository;
    @Mock
    private HealingCollectorRepository healingCollectorRepository;


    private final String levelName = "level_1";
    private final HashMap<String, Integer> loopStart = new HashMap<>();
    private final HashMap<String, Integer> innerLoopStart = new HashMap<>();
    private final HashMap<String, Integer> spawn = new HashMap<>();
    private final List<Bush> bushes = new ArrayList<>();
    private final String[][] displayLevel = new String[8][8];
    Boardbackground boardbackground = Boardbackground.GRASS;
    private String levelId = "levelId";


    private final HealLevel healLevel = new HealLevel(levelId, "level_1", "Level 1", "function()", "<xml></xml>", "<xml></xml>", loopStart, spawn, bushes, displayLevel, 3, 4, boardbackground, innerLoopStart);
    private final List<HealingCollector> collectors = new ArrayList<>();
    HealingCollector collector1 = new HealingCollector(healLevel, "initString", "xmlString", false, new ArrayList<>());
    HealingCollector collector2 = new HealingCollector(healLevel, "initString", "xmlString", false, new ArrayList<>());

    @Before
    public void setUp() {
        collectors.add(collector1);
        collectors.add(collector2);
    }

    @Test
    public void testGetLevel() {
        when(healLevelRepository.findByName(levelName)).thenReturn(healLevel);
        HealLevelDTO healLevelDTO = healLevelService.getLevel(levelName);

        assertAll(
                () -> assertEquals(healLevelDTO.getId(), healLevel.getId()),
                () -> assertEquals(healLevelDTO.getName(), healLevel.getName()),
                () -> assertEquals(healLevelDTO.getDisplayName(), healLevel.getDisplayName()),
                () -> assertEquals(healLevelDTO.getRoundsNum(), healLevel.getRoundsNum()),
                () -> assertEquals(healLevelDTO.getNumberOfMutants(), healLevel.getNumberOfMutants())
        );
    }

    @Test
    public void testGetCollectors() {
        when(healLevelRepository.getIdByName(levelName)).thenReturn(levelId);
        when(healingCollectorRepository.getCodeByLevel(any())).thenReturn(collectors);

        List<HealingCollectorsDTO> collectorsDTOS =  healLevelService.getCollectors(levelName);

        assertAll(
                () -> assertEquals(collectorsDTOS.size(), 2),
                () -> assertEquals(collectorsDTOS.get(0).getInit(), collector1.getInit()),
                () -> assertEquals(collectorsDTOS.get(1).getXml(), collector2.getXml())
                );
    }
}
