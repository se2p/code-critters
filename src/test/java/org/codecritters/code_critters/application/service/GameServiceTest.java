package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.IncompleteDataException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Mutant;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.entities.hintSystem.AssistantInfo;
import org.codecritters.code_critters.persistence.entities.hintSystem.CheckedField;
import org.codecritters.code_critters.persistence.repository.*;
import org.codecritters.code_critters.web.dto.GameDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantInfoDTO;
import org.codecritters.code_critters.web.dto.hintSystem.CheckedFieldDTO;
import org.codecritters.code_critters.web.dto.hintSystem.VisitedStepDTO;
import org.codecritters.code_critters.web.enums.HintSituation;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.Assert.assertNotNull;
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

    @Mock
    private AssistantInfoRepository assistantInfoRepository;

    private static final String COOKIE = "cookie";
    private static final String ID = "1";
    private final Level level = new Level();
    private final User user = new User();
    private final GameDTO gameDTO = new GameDTO("level", ID, level, LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0,
            0, null, Arrays.asList("some", "id"), new ArrayList<>(),  Arrays.asList("some", "id"), new ArrayList<>());
    private final Game game = new Game(ID, level, LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0, 0, ID, new ArrayList<>());
    private final List<VisitedStepDTO> visitedStepsDTO = new ArrayList<>();
    private final AssistantInfoDTO assistantInfoDTO = new AssistantInfoDTO(ID, visitedStepsDTO, HintSituation.INTRODUCTION, LocalDateTime.now(), new ArrayList<>());
    private final AssistantInfo assistantInfo = new AssistantInfo();
    private final CheckedField checkedField = new CheckedField();
    private final CheckedFieldDTO checkedFieldDTO = new CheckedFieldDTO(ID, 5, 7, LocalDateTime.now());
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

    @Test
    public void testSaveAssistantUsageInformation() {
        when(gameRepository.findById(game.getId())).thenReturn(Optional.of(game));
        assistantInfo.setId("savedId");
        when(assistantInfoRepository.save(any(AssistantInfo.class))).thenReturn(assistantInfo);

        AssistantInfoDTO result = gameService.saveAssistantUsageInformation(assistantInfoDTO, game.getId());

        verify(gameRepository).findById(game.getId());
        verify(assistantInfoRepository).save(any(AssistantInfo.class));
        assertNotNull(result);
        assertEquals("savedId", result.getId());
        assertEquals(assistantInfoDTO.getGameId(), result.getGameId());
        assertEquals(assistantInfoDTO.getHintSituation(), result.getHintSituation());

    }

    @Test
    public void testSaveAssistantUsageInformationUpdate() {
        // prepare and fill updated assistantInfoDTO
        String existingUsageInfoId = "existingUsageInfoId";
        assistantInfoDTO.setId(existingUsageInfoId);
        List<VisitedStepDTO> visitedStepsDTOFilled = new ArrayList<>();
        VisitedStepDTO visitedStepDTO1 = new VisitedStepDTO(existingUsageInfoId, LocalDateTime.now(), 0);
        VisitedStepDTO visitedStepDTO2 = new VisitedStepDTO(existingUsageInfoId, LocalDateTime.now(), 1);
        visitedStepsDTOFilled.add(visitedStepDTO1);
        visitedStepsDTOFilled.add(visitedStepDTO2);
        assistantInfoDTO.setVisitedSteps(visitedStepsDTOFilled);

        when(gameRepository.findById(game.getId())).thenReturn(Optional.of(game));

        assistantInfo.setId(existingUsageInfoId);
        when(assistantInfoRepository.findById(existingUsageInfoId)).thenReturn(Optional.of(assistantInfo));
        when(assistantInfoRepository.save(any(AssistantInfo.class))).thenReturn(assistantInfo);

        AssistantInfoDTO result = gameService.saveAssistantUsageInformation(assistantInfoDTO, game.getId());

        verify(gameRepository).findById(game.getId());
        verify(assistantInfoRepository).save(any(AssistantInfo.class));
        assertNotNull(result);
        assertEquals(assistantInfoDTO.getId(), result.getId());
        assertEquals(assistantInfoDTO.getGameId(), result.getGameId());
        assertEquals(assistantInfoDTO.getHintSituation(), result.getHintSituation());
        assertEquals(assistantInfoDTO.getVisitedSteps().size(), assistantInfoDTO.getVisitedSteps().size());
    }

    @Test
    public void testSaveAssistantCheckedFields() {
        when(gameRepository.findById(game.getId())).thenReturn(Optional.of(game));

        CheckedField result = gameService.saveAssistantCheckedFields(checkedFieldDTO, game.getId());

        verify(gameRepository).findById(game.getId());
        verify(gameRepository).save(any(Game.class));
        assertEquals(checkedFieldDTO.getxCoordinate(), result.getxCoordinate());
        assertEquals(checkedFieldDTO.getyCoordinate(), result.getyCoordinate());
        assertEquals(checkedFieldDTO.getTimeChecked(), result.getTimeChecked());
        assertEquals(checkedFieldDTO.getGameId(), result.getGame().getId());
    }

    @Test
    public void testSaveAssistantCheckedFieldsGameNull() {
        assertThrows(IncompleteDataException.class,
                () -> gameService.saveAssistantCheckedFields(checkedFieldDTO, null)
        );
    }
}
