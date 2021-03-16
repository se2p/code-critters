package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RowServiceTest {

    @InjectMocks
    private RowService rowService;

    @Mock
    private RowRepository rowRepository;

    private String id = "id";
    private RowDTO dto = new RowDTO(id, "row");
    private CritterRow row = new CritterRow("row", 0);

    @Test
    public void testDeleteRow() {
        when(rowRepository.findCritterRowById(id)).thenReturn(row);
        rowService.deleteRow(dto);
        verify(rowRepository).delete(row);
    }

    @Test
    public void testDeleteRowNotFound() {
        assertThrows(NotFoundException.class, () -> rowService.deleteRow(dto));
    }

    @Test
    public void testDeleteRowIdNull() {
        assertThrows(IllegalArgumentException.class, () -> rowService.deleteRow(new RowDTO()));
    }
}
