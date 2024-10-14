package org.codecritters.code_critters.persistence.healing;

import org.codecritters.code_critters.persistence.entities.healing.Bush;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.codecritters.code_critters.web.enums.Boardbackground;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class HealLevelRepositoryTest {

    @Resource
    HealLevelRepository healLevelRepository;


    private final String levelName = "level_1";
    private final HashMap<String, Integer> loopStart = new HashMap<>();
    private final HashMap<String, Integer> innerLoopStart = new HashMap<>();
    private final HashMap<String, Integer> basketPosition = new HashMap<>();
    private final HashMap<String, Integer> innerBasketPosition = new HashMap<>();
    private final HashMap<String, Integer> spawn = new HashMap<>();
    private final List<Bush> bushes = new ArrayList<>();
    private final String[][] displayLevel = new String[8][8];
    Boardbackground boardbackground = Boardbackground.GRASS;
    private String levelId = "levelId";
    private final HealLevel healLevel = new HealLevel(levelName, "Level 1", "function()", "<xml></xml>", "<xml></xml>", loopStart, spawn, bushes, displayLevel, 3, 4, boardbackground, innerLoopStart);

    @Before
    public void saveHealLevel() {
        spawn.put("x", 1);
        spawn.put("y", 8);
        loopStart.put("x", 2);
        loopStart.put("y", 8);
        basketPosition.put("x", 1);
        basketPosition.put("y", 8);
        healLevel.setSpawn(spawn);
        healLevel.setLoopStart(loopStart);
        healLevel.setBasketPosition(basketPosition);
        healLevelRepository.save(healLevel);
    }
    @Test
    public void findByNameTest() {
        HealLevel findLevel = healLevelRepository.findByName(healLevel.getName());
        assertEquals("Find level 1 by name", healLevel.getId(), findLevel.getId());
    }

    @Test
    public void getIdByNameTest() {
        String id = healLevelRepository.getIdByName(healLevel.getName());
        assertEquals("This should get the id of level 1", healLevel.getId(), id);
    }
}
