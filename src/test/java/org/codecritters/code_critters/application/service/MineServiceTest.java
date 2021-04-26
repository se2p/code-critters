package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.IncompleteDataException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Game;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.repository.GameRepository;
import org.codecritters.code_critters.persistence.repository.MineRepository;
import org.codecritters.code_critters.web.dto.MineDTO;
import org.codecritters.code_critters.web.dto.MinesDTO;
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

    private static final String ID = "1";
    private static final String ID2 = "2";
    private static final String CODE = "code";
    private static final String XML = "xml";
    private final Game game = new Game(ID, new Level(), LocalDateTime.now(), LocalDateTime.now(), 0, 0, 0, 0, ID);
    private MineDTO mine1 = new MineDTO(ID, CODE + ID, XML + ID);
    private MineDTO mine2 = new MineDTO(ID2, CODE + ID2, XML + ID2);
    private MinesDTO minesDTO = new MinesDTO();
    private List<MineDTO> mines = new ArrayList<>();

    @Before
    public void setup() {
        mines.add(mine1);
        mines.add(mine2);
        minesDTO.setGame(ID);
        minesDTO.setMines(mines);
    }

    @Test
    public void testSaveMines() {
        when(gameRepository.findById(ID)).thenReturn(Optional.of(game));
        mineService.saveMines(minesDTO);
        verify(mineRepository, times(2)).save(any());
    }

    @Test
    public void testSaveMinesGameNull() {
        minesDTO.setGame(null);
        assertThrows(IncompleteDataException.class,
                () -> mineService.saveMines(minesDTO)
        );
    }

    @Test
    public void testSaveMinesNotFound() {
        assertThrows(NotFoundException.class,
                () -> mineService.saveMines(minesDTO)
        );
    }
}
