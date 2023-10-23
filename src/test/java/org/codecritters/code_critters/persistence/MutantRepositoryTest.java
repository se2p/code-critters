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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;


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
    private Level level = new Level(row1, "level_1", 10, 5, "cut", "test", "xml", "init", levelArray, 2);
    private final Mutant mutant1 = new Mutant(level, "mutantCode1", "init", "xml");
    private final Mutant mutant2 = new Mutant(level, "mutantCode2", "init", "xml");
    private String id1 = "1";
    private String id2 = "2";


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
        mutant1.setId(id1);
        mutant2.setId(id2);
        repository.save(mutant1);
        repository.save(mutant2);
    }

    @Test
    public void getCodeByLevelTest() {
        List<String[]> mutants = repository.getCodeByLevel(level);
        assertEquals(2, mutants.size());
    }

    @Test
    public void deleteAllByLevel() {
        repository.deleteAllByLevel(level);
        assertEquals(0, repository.getCodeByLevel(level).size());
    }

    @Test
    public void findByIdInTest() {
        Mutant saved1 = repository.save(mutant1);
        Mutant saved2 = repository.save(mutant2);
        mutant1.setId(saved1.getId());
        mutant2.setId(saved2.getId());

        List<String> ids = new ArrayList<>();
        ids.add(mutant1.getId());
        ids.add(mutant2.getId());

        List<Mutant> mutants = repository.findByIdIn(ids);

        assertEquals(2, mutants.size());
        assertEquals(mutant1.getId(), mutants.get(0).getId());
        assertEquals("mutantCode1", mutants.get(0).getCode());
    }
}
