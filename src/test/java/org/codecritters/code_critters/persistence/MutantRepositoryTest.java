package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Mutant;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.MutantRepository;
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
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class MutantRepositoryTest {

    @Resource
    MutantRepository repository;

    @Resource
    LevelRepository levels;

    @Resource
    RowRepository rows;

    private final CritterRow row1 = new CritterRow("Tutorial", 0);
    String[][] levelArray = {
            {"wood", "grass", "wood"},
            {"grass", "grass", "wood"}
    };
    private Level level = new Level(row1, "level_1", 10, 5, "cut", "test", "xml", "init", levelArray);
    private final Mutant mutant1 = new Mutant(level, "mutantCode", "init", "xml");

    @Before
    public void saveMutants() {
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 1);
        spawn.put("y", 8);
        HashMap<String, Integer> tower = new HashMap<>();
        tower.put("x", 14);
        tower.put("y", 8);
        level.setSpawn(spawn);
        level.setTower(tower);
        rows.save(row1);
        levels.save(level);
        repository.save(mutant1);
    }

    @Test
    public void getCodeByLevelTest() {
        List<String[]> mutants = repository.getCodeByLevel(level);
        assertEquals(1, mutants.size());
    }

    @Test
    public void deleteAllByLevel() {
        repository.deleteAllByLevel(level);
        assertEquals(0, repository.getCodeByLevel(level).size());
    }
}
