package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.IncompleteDataException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Mine;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.MineRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.usageStats.GamesOfUserDTO;

import org.codecritters.code_critters.web.dto.usageStats.GamingDetailDTO;
import org.codecritters.code_critters.web.dto.usageStats.MineHistoryDTO;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;

import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class StatisticsServiceTest {

    @InjectMocks
    private StatisticService statisticService;

    @Mock
    private UserRepositiory userRepository;

    @Mock
    private GameRepository gameRepository;

    @Mock
    private MineRepository mineRepository;

    private Level level = new Level();

    private User user = new User();

    private List<Game> games = new ArrayList<>();

    private String gameId = "someGameId";

    private String incorrectGameId = "incorrectId";

    private String userId = "someUserId";

    private String userName = "name";

    private int xPos = 6;

    private int yPos = 8;

    private GamesOfUserDTO gamesOfUserDTO = new GamesOfUserDTO();

    private Game game = new Game(gameId, level, LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0, 0, userId, new ArrayList<>());

    private Mine mine = new Mine();

    private List<Mine> mines = new ArrayList<>();

    @BeforeEach
    public void setup() {
        games = new ArrayList<>();
        mines = new ArrayList<>();
        user.setId(userId);
        user.setUsername(userName);
        game.setId(gameId);
        game.setUserID(userId);
        games.add(game);
        gamesOfUserDTO.setUser(user.getUsername());
        mines.add(mine);
    }

    @Test
    public void testGetAllGamesOfUser() {
        games = new ArrayList<>();
        user.setId(userId);
        user.setUsername(userName);
        game.setId(gameId);
        game.setUserID(userId);
        games.add(game);
        gamesOfUserDTO.setUser(user.getUsername());
        when(userRepository.findByUsernameOrEmail(any(), any())).thenReturn(user);
        when(gameRepository.findAllByUserID(any())).thenReturn(games);

        GamesOfUserDTO result = statisticService.getAllGamesOfUser(userName);

        assertAll(
                () -> assertEquals(userName, result.getUser()),
                () -> assertTrue(result.getGames().size() == 1)
        );
    }

    @Test
    public void testGetAllGamesOfUserNoName() {
        assertThrows(IncompleteDataException.class,
                () -> statisticService.getAllGamesOfUser(""));
    }

    @Test
    public void testGetAllGamesOfUserIncorrectName() {
        assertThrows(NotFoundException.class,
                () -> statisticService.getAllGamesOfUser("incorrectName"));
    }

    @Test
    public void testGetMineHistory() {
        mine = new Mine("id", game, "code", "code", LocalDateTime.now(), LocalDateTime.now(), xPos, yPos, false, null, false, "someFrontEndID");
        mines = new ArrayList<>();
        mines.add(mine);

        when(mineRepository.findAllByFrontendId(any())).thenReturn(mines);

        MineHistoryDTO result = statisticService.getMineHistory("someFrontEndID");

        assertAll(
                () -> assertEquals("someFrontEndID", result.getFrontendId()),
                () -> assertEquals(gameId, result.getGameId())
        );
    }

    @Test
    public void testGetMineHistoryNoSuchFrontendId() {
        mines = new ArrayList<>();
        when(mineRepository.findAllByFrontendId(any())).thenReturn(mines);

        assertThrows(NotFoundException.class,
                () -> statisticService.getMineHistory("someFrontendID123-123"));
    }

    @Test
    public void testGetGameDetails() {
        user.setId(userId);
        user.setUsername(userName);
        game.setId(gameId);
        game.setUserID(userId);

        when(gameRepository.findById(any())).thenReturn(Optional.of(game));
        when(userRepository.findById(userId)).thenReturn(Optional.of(user));

        GamingDetailDTO result = statisticService.getGameDetails(gameId);

        assertAll(
                () -> assertEquals(userName, result.getUser()),
                () -> assertEquals(gameId, result.getGame().getGameId())
        );
    }

    @Test
    public void testGetGameDetailsIncorrectId() {
        when(gameRepository.findById(incorrectGameId)).thenReturn(Optional.ofNullable(null));

        assertThrows(NotFoundException.class,
                () -> statisticService.getGameDetails(incorrectGameId)
        );

    }
}
