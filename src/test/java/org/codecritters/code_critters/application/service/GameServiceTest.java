package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.IncompleteDataException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Mutant;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.MutantRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.GameDTO;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class GameServiceTest {

    @InjectMocks
    private GameService gameService;

    @Mock
    private LevelRepository levelRepository;

    @Mock
    private UserRepositiory userRepositiory;

    @Mock
    private GameRepository gameRepository;

    @Mock
    private MutantRepository mutantRepository;

    private static final String COOKIE = "cookie";
    private static final String ID = "1";
    private final Level level = new Level();
    private final User user = new User();
    private final GameDTO gameDTO = new GameDTO("level", ID, level, LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0,
            0, null, Arrays.asList("some", "id"), new ArrayList<>(),  Arrays.asList("some", "id"), new ArrayList<>());
    private final Game game = new Game(ID, level, LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0, 0, ID, new ArrayList<>());

    @BeforeEach
    public void setup() {
        user.setId(ID);
        game.setUserID(ID);
        gameDTO.setId(ID);
    }

    @Test
    public void testCreateGame() {
        when(levelRepository.findByName(gameDTO.getName())).thenReturn(level);
        when(userRepositiory.findByCookie(COOKIE)).thenReturn(user);
        when(gameRepository.save(any())).thenReturn(game);
        GameDTO saved = gameService.createGame(gameDTO, COOKIE);

        assertAll(
                () -> assertEquals(ID, saved.getId()),
                () -> assertEquals(ID, saved.getUserID()),
                () -> assertEquals(game.getStart(), saved.getStart()),
                () -> assertEquals(game.getEnd(), saved.getEnd())
        );

        verify(gameRepository).save(any());
    }

    @Test
    public void testCreateGameUserNull() {
        game.setUserID(null);
        when(levelRepository.findByName(gameDTO.getName())).thenReturn(level);
        when(gameRepository.save(any())).thenReturn(game);

        GameDTO saved = gameService.createGame(gameDTO, COOKIE);

        assertAll(
                () -> assertEquals(ID, saved.getId()),
                () -> assertNull(saved.getUserID()),
                () -> assertEquals(game.getStart(), saved.getStart()),
                () -> assertEquals(game.getEnd(), saved.getEnd())
        );

        verify(gameRepository).save(any());
    }

    @Test
    public void testCreateGameGameIdNull() {
        when(levelRepository.findByName(gameDTO.getName())).thenReturn(level);
        when(userRepositiory.findByCookie(COOKIE)).thenReturn(user);
        when(gameRepository.save(any())).thenReturn(new Game());

        assertThrows(IllegalStateException.class,
                () -> gameService.createGame(gameDTO, COOKIE)
        );
    }

    @Test
    public void testCreateGameLevelNull() {
        assertThrows(NotFoundException.class,
                () -> gameService.createGame(gameDTO, COOKIE)
        );
    }

    @Test
    public void testSaveGame() {
        when(levelRepository.findByName(gameDTO.getName())).thenReturn(level);
        when(mutantRepository.findByIdIn(any())).thenReturn(new ArrayList<Mutant>());
        gameService.saveGame(gameDTO);
        verify(gameRepository).save(any());
    }

    @Test
    public void testSaveGameIdNull() {
        gameDTO.setId(null);
        when(levelRepository.findByName(gameDTO.getName())).thenReturn(level);
        assertThrows(IncompleteDataException.class,
                () -> gameService.saveGame(gameDTO)
        );
    }

    @Test
    public void testSaveGameLevelNull() {
        assertThrows(NotFoundException.class,
                () -> gameService.saveGame(gameDTO)
        );
    }
}
