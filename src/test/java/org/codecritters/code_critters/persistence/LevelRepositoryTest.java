package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertAll;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class LevelRepositoryTest {

    @Resource
    LevelRepository repository;

    @Resource
    RowRepository rows;

    private final CritterRow row1 = new CritterRow("Tutorial", 0);
    String[][] levelArray = {
            {"wood", "grass", "wood"},
            {"grass", "grass", "wood"}
    };
    private final Level level1 = new Level(row1, "level_1", 10, 5, "cut1", "test1", "xml1", "init1", levelArray, 2);
    private final Level level2 = new Level(row1, "level_2", 15, 4, "cut2", "test2", "xml2", "init2", levelArray, 2);

    @Before
    public void setup() {
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 1);
        spawn.put("y", 8);
        HashMap<String, Integer> tower = new HashMap<>();
        tower.put("x", 14);
        tower.put("y", 8);
        level1.setSpawn(spawn);
        level2.setSpawn(spawn);
        level1.setTower(tower);
        level2.setTower(tower);
        rows.save(row1);
        repository.save(level1);
        repository.save(level2);
    }

    @Test
    public void findByNameTest() {
        Level findLevel = repository.findByName(level1.getName());
        assertEquals("Find level1 by name", level1.getId(), findLevel.getId());
    }

    @Test
    public void getLevelNamesTest() {
        List<String> levelNames = repository.getLevelNames();
        assertAll("This should get all level names",
                () -> assertEquals(2, levelNames.size()),
                () -> assertTrue(levelNames.contains(level1.getName())),
                () -> assertTrue(levelNames.contains(level2.getName()))
        );
    }

    @Test
    public void getIdByNameTest() {
        String id = repository.getIdByName(level1.getName());
        assertEquals("This should get the id of level1", level1.getId(), id);
    }

    @Test
    public void getTestByNameTest() {
        String test = repository.getTestByName(level2.getName());
        assertEquals("This should get the test of level2", level2.getTest(), test);
    }

    @Test
    public void getCUTByNameTest() {
        String cut = repository.getCUTByName(level1.getName());
        assertEquals("Should get the cut fo level1", level1.getCUT(), cut);
    }

    @Test
    public void getInitByNameTest() {
        String init = repository.getInitByName(level2.getName());
        assertEquals("Should get level2's init", level2.getInit(), init);
    }

    @Test
    public void getLevelNamesByGroupTest() {
        List<String> levelNames = repository.getLevelNamesByGroup(row1);
        assertAll("This should get all level names for row1",
                () -> assertEquals(2, levelNames.size()),
                () -> assertTrue(levelNames.contains(level1.getName())),
                () -> assertTrue(levelNames.contains(level2.getName()))
        );
    }

    @Test
    public void deleteById() {
        repository.deleteById(level1.getId());
        assertNull(repository.findByName(level1.getName()));
    }
}