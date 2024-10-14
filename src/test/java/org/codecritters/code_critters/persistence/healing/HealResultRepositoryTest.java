package org.codecritters.code_critters.persistence.healing;

import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealResult;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealResultRepository;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class HealResultRepositoryTest {

    @Resource
    HealResultRepository healResultRepository;

    @Resource
    HealLevelRepository healLevelRepository;

    @Resource
    UserRepositiory userRepositiory;

    private final User user1 = new User("user1", "user1@user.de", "user1", "cookie1", "secret1", "salt1", false, true, Language.de, Role.user, new Date());
    private final User user2 = new User("user2", "user2@user.de", "user2", "cookie2", "secret2", "salt2", false, true, Language.de, Role.user, new Date());
    private final HealLevel healLevel = new HealLevel();
    public final HealResult healResult1 = new HealResult(900, 3, "cookie1", healLevel, new Date(), user1);
    public final HealResult healResult2 = new HealResult(800, 2, "cookie2", healLevel, new Date(), user2);

    @Before
    public void saveResults() {
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
        userRepositiory.save(user1);
        userRepositiory.save(user2);
        healResultRepository.save(healResult1);
        healResultRepository.save(healResult2);
    }

    @Test
    public void getResultByLevelAndCookieTest() {
        HealResult foundResult = healResultRepository.getResultByLevelAndCookie(healLevel, "cookie1");
        HealResult noFoundResult = healResultRepository.getResultByLevelAndCookie(healLevel, "cookieNotExists");

        assertAll(
                () -> assertNull(noFoundResult),
                () -> assertEquals(healResult1.getId(), foundResult.getId())
        );
    }

    @Test
    public void getResultByLevelAndUserTest() {
        HealResult foundResult = healResultRepository.getResultByLevelAndUser(healLevel, user2);
        HealResult noResult = healResultRepository.getResultByLevelAndUser(null, user2);

        assertAll(
                () -> assertNull(noResult),
                () -> assertEquals(healResult2.getId(), foundResult.getId())
        );
    }
}
