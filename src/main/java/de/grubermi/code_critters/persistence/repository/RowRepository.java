package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.Row;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface RowRepository extends CrudRepository<Row, String> {

    @Query("SELECT r FROM Row as r ORDER BY r.position ASC")
    Collection<Row> getRows();
}
