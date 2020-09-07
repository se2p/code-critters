package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.entities.Score;
import org.codecritters.code_critters.persistence.repository.ScoreRepository;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertAll;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class ScoreRepositoryTest {

    @Resource
    private ScoreRepository repository;

    private final Score score1 = new Score("admin1", 2000, 5, 1);
    private final Score score2 = new Score("admin2", 1900, 4, 2);
    private final Score score3 = new Score("admin3", 1800, 5, 3);
    private final Score score4 = new Score("admin4", 700, 3, 4);
    private final Score score5 = new Score("admin5", 500, 1, 5);
    private final List<Score> scoreList = Arrays.asList(score1, score2, score3, score4, score5);

    @BeforeEach
    public void clearRepository() {
        repository.deleteAll();
    }

    @Test
    public void saveAndFindByUsernameTest() {
        repository.save(score1);
        Score score = repository.findByUsername("admin1");
        assertAll("Score properties don't match!",
                () -> assertTrue(repository.existsById("admin1")),
                () -> assertEquals(score.getUsername(), score1.getUsername()),
                () -> assertEquals(score.getLevels(), score1.getLevels()),
                () -> assertEquals(score.getPosition(), score1.getPosition()),
                () -> assertEquals(score.getScore(), score1.getScore())
        );
    }

    @Test
    public void saveAndCountAllTest() {
        repository.saveAll(scoreList);
        assertEquals("Repository should only contain 5 entries!", 5, repository.countAll());
    }

    @Test
    public void saveAndFindTop10With5ScoresTest() {
        repository.saveAll(scoreList);
        assertEquals("Repository should only contain 5 entries!", 5, repository.findTop10().size());
    }

    @Test
    public void saveAndFindTop10With11ScoresTest() {
        Score score6 = new Score("admin6", 450, 2, 6);
        Score score7 = new Score("admin7", 400, 2, 7);
        Score score8 = new Score("admin8", 350, 1, 8);
        Score score9 = new Score("admin9", 300, 1, 9);
        Score score10 = new Score("admin10", 250, 1, 10);
        Score score11 = new Score("admin11", 0, 0, 11);
        List<Score> scores = Arrays.asList(score1, score2, score3, score4, score5, score5, score6, score7, score8, score9, score10, score11);
        repository.saveAll(scores);
        assertEquals("This should give exactly 10 results!", 10, repository.findTop10().size());
    }

    @Test
    public void deleteAndNotExistsTest() {
        repository.save(score1);
        repository.delete(score1);
        assertNull("This entry should have been deleted!", repository.findByUsername("admin1"));
    }
}
