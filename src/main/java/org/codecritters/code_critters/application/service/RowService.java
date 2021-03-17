package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.ConstraintViolationException;

@Service
public class RowService {

    private final RowRepository rowRepository;

    @Autowired
    public RowService(RowRepository rowRepository) {
        this.rowRepository = rowRepository;
    }

    /**
     * Deletes the row with the given id from the database along with all levels belonging to that row.
     * @param dto The RowDTO containing the name and id of the row to be deleted.
     */
    public void deleteRow(RowDTO dto) {
        if (dto.getId() == null) {
            throw new IllegalArgumentException("Cannot delete a row with id null!");
        }

        CritterRow row = rowRepository.findCritterRowById(dto.getId());
        if (row == null) {
            throw new NotFoundException("There's no row with id: " + dto.getId());
        }

        rowRepository.delete(row);
    }

    /**
     * Updates the name of the given row to the specified value.
     * @param dto The RowDTO containing the row information.
     */
    public void updateRow(RowDTO dto) {
        if (dto.getId() == null) {
            throw new IllegalArgumentException("Cannot update a row with id null!");
        } else if (dto.getName() == null || dto.getName().trim().equals("")) {
            throw new IllegalArgumentException("Cannot update the row name to null!");
        }

        CritterRow row = rowRepository.findCritterRowById(dto.getId());
        if (row == null) {
            throw new NotFoundException("There's no row with id: " + dto.getId());
        }

        row.setName(dto.getName());
        rowRepository.save(row);
    }

    /**
     * Inserts a new row with the given values into the database.
     * @param dto The RowDTO containing the row information.
     * @return The newly created row.
     */
    public RowDTO addRow(RowDTO dto) {
        if (dto.getName() == null || dto.getName().trim().equals("")) {
            throw new IllegalArgumentException("Cannot add a row with name null!");
        } else if (dto.getPosition() < 0) {
            throw new IllegalArgumentException("Cannot add a row with an invalid position: " + dto.getPosition());
        }
        CritterRow row = createRowDAO(dto);
        CritterRow addRow;

        try {
            addRow = rowRepository.save(row);
        } catch (ConstraintViolationException e) {
            throw new AlreadyExistsException("Failed to insert the new row", e);
        }
        return createRowDTO(addRow);
    }

    private CritterRow createRowDAO(RowDTO dto) {
        CritterRow critterRow = new CritterRow();

        if (dto.getId() != null) {
            critterRow.setId(dto.getId());
        }
        if (dto.getName() != null) {
            critterRow.setName(dto.getName());
        }
        if (dto.getPosition() >= 0) {
            critterRow.setPosition(dto.getPosition());
        }

        return critterRow;
    }

    private RowDTO createRowDTO(CritterRow row) {
        RowDTO dto = new RowDTO();

        dto.setId(row.getId());
        dto.setName(row.getName());
        dto.setPosition(row.getPosition());

        return dto;
    }
}
