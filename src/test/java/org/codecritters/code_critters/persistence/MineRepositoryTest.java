package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Mine;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.MineRepository;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;
import static org.junit.Assert.assertEquals;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class},
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class MineRepositoryTest {

    @Resource
    MineRepository mineRepository;

    @Resource
    GameRepository gameRepository;

    private final Game game = new Game();

    private final Mine mine1 = new Mine();

    private final Mine mine2 = new Mine();

    @Before
    public void setup() {
        Game savedGame = gameRepository.save(game);
        game.setId(savedGame.getId());
        mine1.setGame(savedGame);
        mine2.setGame(savedGame);
        mine1.setCode("code1");
        mine2.setCode("code2");

        mineRepository.save(mine1);
        mineRepository.save(mine2);
    }

    @Test
    public void findByGameIdTest() {
        List<Mine> mines = mineRepository.findByGameId(game.getId());

        assertEquals(2, mines.size());
        assertEquals("code1", mines.get(0).getCode());
    }
}
