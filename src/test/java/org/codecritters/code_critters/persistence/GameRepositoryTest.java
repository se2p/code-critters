package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.repository.GameRepository;
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
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class GameRepositoryTest {

    @Resource
    private GameRepository gameRepository;

    @Resource
    private LevelRepository levelRepository;

    @Resource
    private RowRepository rowRepository;

    private final CritterRow row1 = new CritterRow("Tutorial", 0);
    String[][] levelArray = {
            {"wood", "grass", "wood"},
            {"grass", "grass", "wood"}
    };
    private final Level level = new Level(row1, "level_1", 10, 5, "cut1", "test1", "xml1", "init1", levelArray);
    private static final String ID = "1";
    private final Game game = new Game(ID, level, LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0, 0);

    @Before
    public void setup() {
        HashMap<String, Integer> spawn = new HashMap<>();
        spawn.put("x", 1);
        spawn.put("y", 8);
        HashMap<String, Integer> tower = new HashMap<>();
        tower.put("x", 14);
        tower.put("y", 8);
        level.setSpawn(spawn);
        level.setTower(tower);
        rowRepository.save(row1);
        levelRepository.save(level);
        Game savedGame = gameRepository.save(game);
        game.setId(savedGame.getId());
    }

    @Test
    public void testFindById() {
        Optional<Game> findGame = gameRepository.findById(game.getId());
        Optional<Game> none = gameRepository.findById(ID);

        assertAll(
                () -> assertFalse(none.isPresent()),
                () -> assertTrue(findGame.isPresent()),
                () -> assertEquals(game.getId(), findGame.get().getId()),
                () -> assertEquals(game.getStart(), findGame.get().getStart()),
                () -> assertEquals(game.getEnd(), findGame.get().getEnd()),
                () -> assertEquals(game.getScore(), findGame.get().getScore()),
                () -> assertEquals(game.getMutantsKilled(), findGame.get().getMutantsKilled()),
                () -> assertEquals(game.getHumansFinished(), findGame.get().getHumansFinished()),
                () -> assertEquals(game.getGameTime(), findGame.get().getGameTime())
        );
    }
}
