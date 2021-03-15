package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.persistence.entities.Mutant;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.MutantRepository;
import org.codecritters.code_critters.web.dto.MutantDTO;
import org.codecritters.code_critters.web.dto.MutantsDTO;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Collections;

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class MutantsServiceTest {

    @InjectMocks
    private MutantsService mutantsService;

    @Mock
    private MutantRepository mutantRepository;

    @Mock
    private LevelRepository levelRepository;

    private static final String NAME = "level_1";

    @Test
    public void createMutantsTest() {
        MutantDTO mutant = new MutantDTO("1", "new", "id", "xml");
        MutantsDTO mutantsDTO = new MutantsDTO(NAME, Collections.singletonList(mutant));
        mutantsService.createMutants(mutantsDTO);
        verify(levelRepository, times(1)).findByName(NAME);
        verify(mutantRepository, times(1)).save(any(Mutant.class));
    }

    @Test
    public void updateMutantsTest() {
        MutantDTO mutant = new MutantDTO("1", "new", "id", "xml");
        MutantsDTO mutantsDTO = new MutantsDTO(NAME, Collections.singletonList(mutant));
        mutantsService.updateMutants(mutantsDTO);
        verify(levelRepository).findByName(NAME);
        verify(mutantRepository).save(any(Mutant.class));
    }
}
