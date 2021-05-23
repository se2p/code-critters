package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.customDataTypes.LevelResultType;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Result;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
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
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class ResultRepositoryTest {

    @Resource
    ResultRepository repository;

    @Resource
    LevelRepository levels;

    @Resource
    RowRepository rows;

    @Resource
    UserRepositiory users;

    private final User user1 = new User("admin1", "admin1@admin.de", "admin1", "cookie1", "secret1", "salt1", false, true, Language.de, Role.admin, new Date());
    private final User user2 = new User("user1", "user1@user.de", "user1", "cookie3", "secret3", "salt3", false, true, Language.de, Role.user, new Date());
    private final CritterRow row1 = new CritterRow("Tutorial", 0);
    String[][] levelArray = {
            {"wood", "grass", "wood"},
            {"grass", "grass", "wood"}
    };
    private final Level level1 = new Level(row1, "level_1", 10, 5, "cut", "test", "xml", "init", levelArray, 2);
    private final Level level2 = new Level(row1, "level_2", 10, 5, "cut", "test", "xml", "init", levelArray, 2);
    private final Result result1 = new Result(800, "cookie3", level1, 2, user2);
    private final Result result2 = new Result(950, "cookie3", level2, 3, user2);
    private final Result result3 = new Result(500, "cookie1", level1, 1, user1);
    private final Result result4 = new Result(950, "cookie4", level1, 3, null);

    @Before
    public void saveResults() throws InterruptedException {
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
        users.save(user1);
        users.save(user2);
        rows.save(row1);
        levels.save(level1);
        levels.save(level2);
        repository.save(result1);
        repository.save(result2);
        repository.save(result3);
        repository.save(result4);
        Thread.sleep(1000);
    }

    @Test
    public void getResultByLevelAndCookieTest() {
        Result findResult = repository.getResultByLevelAndCookie(level1, "cookie3");
        Result noResult = repository.getResultByLevelAndCookie(level1, "cookie5");

        assertAll("Test if getResultByLevelAndCookie works",
                () -> assertNull(noResult),
                () -> assertEquals(result1.getId(), findResult.getId())
        );
    }

    @Test
    public void getResultByLevelAndUserTest() {
        Result findResult = repository.getResultByLevelAndUser(level2, user2);
        Result noResult = repository.getResultByLevelAndUser(null, user2);

        assertAll("Test if getResultByLevelAndUser works",
                () -> assertNull(noResult),
                () -> assertEquals(result2.getId(), findResult.getId())
        );
    }

    @Test
    public void getAllByUpdatedBeforeAndUserIsNullTest() {
        List<Result> findResult = repository.getAllByUpdatedBeforeAndUserIsNull(new Date());
        assertEquals(1, findResult.size());
    }

    @Test
    public void deleteAllByUserTest() {
        repository.deleteAllByUser(user2);
        assertAll("All result data should have been deleted",
                () -> assertNull(repository.getResultByLevelAndUser(level1, user2)),
                () -> assertNull(repository.getResultByLevelAndUser(level2, user2))
        );
    }

    @Test
    public void getLevelNamesAndResultByGroupWithCookieTest() {
        List<LevelResultType> levelResults = levels.getLevelNamesAndResultByGroup(row1, "cookie3");
        int score1 = levelResults.get(0).getScore();
        int score2 = levelResults.get(1).getScore();
        assertAll("LevelRepository method should return all scores for a given cookie and CritterRow",
                () -> assertEquals(2, levelResults.size()),
                () -> assertEquals(result1.getScore(), score1),
                () -> assertEquals(result2.getScore(), score2)
        );
    }

    @Test
    public void getLevelNamesAndResultByGroupWithUserTest() {
        List<LevelResultType> levelResults = levels.getLevelNamesAndResultByGroup(row1, user1);
        int score1 = levelResults.get(0).getScore();
        assertAll("LevelRepository method should return all scores for a given CritterRow and User",
                () -> assertEquals(2, levelResults.size()),
                () -> assertEquals(result3.getScore(), score1),
                () -> assertNull(levelResults.get(1).getScore())
        );
    }

    @Test
    public void deleteAllByLevel() {
        repository.deleteAllByLevel(level1);
        assertAll("LevelRepository method should have deleted two results 1 and 3 but keep 2",
                () -> assertNull(repository.getResultByLevelAndCookie(level1, "cookie3")),
                () -> assertNull(repository.getResultByLevelAndCookie(level1, "cookie1")),
                () -> assertEquals(result2.getScore(), repository.getResultByLevelAndCookie(level2, "cookie3").getScore())
        );
    }
}