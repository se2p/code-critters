package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    private CritterRow createRowDAO(RowDTO dto) {
        CritterRow critterRow = new CritterRow();

        if (dto.getId() != null) {
            critterRow.setId(dto.getId());
        }
        if (dto.getName() != null) {
            critterRow.setName(dto.getName());
        }

        return critterRow;
    }
}
