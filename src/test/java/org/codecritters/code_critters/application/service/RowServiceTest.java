package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import javax.validation.ConstraintViolationException;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
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
    private RowDTO newRow = new RowDTO(null, "newRow", 1);
    private CritterRow row = new CritterRow("row", 0);
    private CritterRow returnRow = new CritterRow("newRow", 1);

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

    @Test
    public void testUpdateRow() {
        when(rowRepository.findCritterRowById(id)).thenReturn(row);
        rowService.updateRow(dto);
        verify(rowRepository).save(row);
    }

    @Test
    public void testUpdateRowNotFound() {
        assertThrows(NotFoundException.class, () -> rowService.updateRow(dto));
    }

    @Test
    public void testUpdateRowIdNull() {
        assertThrows(IllegalArgumentException.class, () -> rowService.updateRow(new RowDTO(null, "name")));
    }

    @Test
    public void testUpdateRowNameNull() {
        assertThrows(IllegalArgumentException.class, () -> rowService.updateRow(new RowDTO(id, null)));
    }

    @Test
    public void testUpdateRowNameEmpty() {
        assertThrows(IllegalArgumentException.class, () -> rowService.updateRow(new RowDTO(id, " ")));
    }

    @Test
    public void testAddRow() {
        returnRow.setId(id);
        when(rowRepository.save(any())).thenReturn(returnRow);
        RowDTO dto = rowService.addRow(newRow);
        assertAll(
                () -> assertEquals(id, dto.getId()),
                () -> assertEquals("newRow", dto.getName()),
                () -> assertEquals(1, dto.getPosition())
        );
    }

    @Test
    public void testAddRowAlreadyExists() {
        when(rowRepository.save(any())).thenThrow(ConstraintViolationException.class);
        assertThrows(AlreadyExistsException.class, () -> rowService.addRow(newRow));
    }

    @Test
    public void testAddRowNameNull() {
        assertThrows(IllegalArgumentException.class, () -> rowService.addRow(new RowDTO(id, null, 1)));
    }

    @Test
    public void testAddRowNameEmpty() {
        assertThrows(IllegalArgumentException.class, () -> rowService.addRow(new RowDTO(id, " ", 1)));
    }

    @Test
    public void testAddRowPositionNegative() {
        assertThrows(IllegalArgumentException.class, () -> rowService.addRow(new RowDTO(id, "name", -1)));
    }
}
