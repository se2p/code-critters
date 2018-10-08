package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Mutant;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MutantRepository extends CrudRepository<Mutant, String> {

    @Query("SELECT m.code, m.init FROM Mutant AS m WHERE m.level = :level")
    List<String[]> getCodeByLevel(@Param("level") Level level);
}
