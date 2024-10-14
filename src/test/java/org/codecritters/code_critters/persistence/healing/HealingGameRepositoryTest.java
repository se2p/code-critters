package org.codecritters.code_critters.persistence.healing;

import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealingGame;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingGameRepository;
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
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class HealingGameRepositoryTest {

    @Resource
    private HealingGameRepository healingGameRepository;

    @Resource
    private HealLevelRepository healLevelRepository;

    private final HealLevel healLevel = new HealLevel();
    private final String userId = "userId";
    private final HealingGame healingGame = new HealingGame(healLevel, LocalDateTime.now(), userId);

    @Before
    public void setup() {
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 1);
        spawn.put("y", 8);
        HashMap<String, Integer> start = new HashMap<>();
        start.put("x", 3);
        start.put("y", 8);
        HashMap<String, Integer> basketPosition = new HashMap<>();
        basketPosition.put("x", 2);
        basketPosition.put("y", 8);
        healLevel.setSpawn(spawn);
        healLevel.setLoopStart(start);
        healLevel.setBasketPosition(basketPosition);
        healLevel.setCUT("code");
        healLevel.setName("level_1");
        healLevelRepository.save(healLevel);
        HealingGame savedGame = healingGameRepository.save(healingGame);
        healingGame.setId(savedGame.getId());
    }

    @Test
    public void testFindAllByUserId() {
        List<HealingGame> healingGames = healingGameRepository.findAllByUserID(healingGame.getUserID());

        assertEquals(1, healingGames.size());
        assertEquals(userId, healingGames.get(0).getUserID());
    }
}
