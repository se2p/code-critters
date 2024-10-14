package org.codecritters.code_critters.persistence.healing;

import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealingCollector;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingCollectorRepository;
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
import static org.junit.jupiter.api.Assertions.assertTrue;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class},
        loader = AnnotationConfigContextLoader.class
)
@Transactional
@ActiveProfiles("test")
public class HealingCollectorRepositoryTest {

    @Resource
    HealingCollectorRepository healingCollectorRepository;

    @Resource
    HealLevelRepository healLevelRepository;


    private HealLevel healLevel = new HealLevel();
    private final HealingCollector hc1 = new HealingCollector(healLevel, "init", "xml1", false, new ArrayList<>());
    private final HealingCollector hc2 = new HealingCollector(healLevel, "init", "xml2", false, new ArrayList<>());

    @Before
    public void saveHealingCollectors() {
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 1);
        spawn.put("y", 8);
        HashMap<String, Integer> loopStart = new HashMap<>();
        loopStart.put("x", 2);
        loopStart.put("y", 8);
        HashMap<String, Integer> basketPosition = new HashMap<>();
        basketPosition.put("x", 1);
        basketPosition.put("y", 8);
        healLevel.setSpawn(spawn);
        healLevel.setLoopStart(loopStart);
        healLevel.setBasketPosition(basketPosition);
        healLevel.setCUT("code");
        healLevel.setName("level_1");
        healLevelRepository.save(healLevel);
        hc1.setId("id1");
        hc2.setId("id2");
        healingCollectorRepository.save(hc1);
        healingCollectorRepository.save(hc2);
    }

    @Test
    public void getCodeByLevelTest() {
        List<HealingCollector> mutants = healingCollectorRepository.getCodeByLevel(healLevel);
        assertEquals(2, mutants.size());
    }

    @Test
    public void findByIdInTest() {
        HealingCollector saved1 = healingCollectorRepository.save(hc1);
        HealingCollector saved2 = healingCollectorRepository.save(hc2);
        hc1.setId(saved1.getId());
        hc2.setId(saved2.getId());

        List<String> ids = new ArrayList<>();
        ids.add(hc1.getId());
        ids.add(hc2.getId());

        List<HealingCollector> collectors = healingCollectorRepository.findByIdIn(ids);

        assertEquals(2, collectors.size());
        assertTrue(collectors.get(0).getId() == hc1.getId()
                || collectors.get(0).getId() == hc2.getId());
        assertTrue(collectors.get(0).getXml() == hc1.getXml()
                || collectors.get(0).getXml() == hc2.getXml());
    }
}
