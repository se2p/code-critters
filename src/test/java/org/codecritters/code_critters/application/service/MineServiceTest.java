package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.IncompleteDataException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Mine;
import org.codecritters.code_critters.persistence.entities.hintSystem.AssistantInfo;
import org.codecritters.code_critters.persistence.repository.AssistantInfoRepository;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.MineRepository;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.MinesDTO;
import org.codecritters.code_critters.web.dto.hintSystem.AssistantPortalSaveDTO;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class MineServiceTest {

    @InjectMocks
    private MineService mineService;

    @Mock
    private GameRepository gameRepository;

    @Mock
    private MineRepository mineRepository;

    @Mock
    private AssistantInfoRepository assistantInfoRepository;

    private static final String ID = "1";
    private static final String GAME = "1234";
    private static final String ID2 = "2";
    private static final String CODE = "code";
    private static final String XML = "xml";
    private static final String assistantInfoId = "infoId";
    private Game game = new Game(ID, new Level(), LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0, 0, ID, new ArrayList<>());
    private MineDTO mine1 = new MineDTO(ID, GAME, CODE + ID, XML + ID, LocalDateTime.now(), LocalDateTime.now(), 8, 2, false, LocalDateTime.now(), true, "frontendID1");
    private MineDTO mine2 = new MineDTO(ID2, GAME, CODE + ID2, XML + ID2, LocalDateTime.now(), LocalDateTime.now(), 5, 3, false, LocalDateTime.now(), true, "frontendID2");
    private MineDTO mine3 = new MineDTO("mine3Id", GAME, CODE + "3", XML + "3", LocalDateTime.now(), LocalDateTime.now(), 6, 9, false, LocalDateTime.now(), true, "frontendID3");

    private MinesDTO minesDTO = new MinesDTO();
    private List<MineDTO> mines = new ArrayList<>();
    private AssistantInfo assistantInfo = new AssistantInfo();
    private AssistantPortalSaveDTO assistantPortalSaveDTO = new AssistantPortalSaveDTO();

    @Before
    public void setup() {
        mines.add(mine1);
        mines.add(mine2);
        minesDTO.setGame(ID);
        minesDTO.setMines(mines);
        assistantInfo.setId(assistantInfoId);
        assistantInfo.setGame(game);
        mine3.setGame(game.getId());
        assistantPortalSaveDTO.setMine(mine3);
        assistantPortalSaveDTO.setAssistantInfoId(assistantInfoId);
    }

    @Test
    public void testSaveMine() {
        mine1.setGame(game.getId());
        when(gameRepository.findById(any())).thenReturn(Optional.of(game));
        mineService.saveMine(mine1, game.getId());
        verify(gameRepository).findById(game.getId());
        verify(mineRepository).save(any(Mine.class));
    }

    @Test
    public void testSaveMineGameNull() {
        assertThrows(IncompleteDataException.class,
                () -> mineService.saveMine(mine1, null)
        );
    }

    @Test
    public void testSavePortalDuringAssistance() {
        when(gameRepository.findById(any())).thenReturn(Optional.of(game));
        when(assistantInfoRepository.findById(assistantInfoId)).thenReturn(Optional.of(assistantInfo));
        mineService.savePortalDuringAssistance(assistantPortalSaveDTO, game.getId());

        verify(gameRepository).findById(game.getId());
        verify(assistantInfoRepository).findById(assistantInfoId);
    }

    @Test
    public void testSavePortalDuringAssistanceGameNull() {
        assertThrows(IncompleteDataException.class,
                () -> mineService.savePortalDuringAssistance(assistantPortalSaveDTO, null)
        );
    }
}
