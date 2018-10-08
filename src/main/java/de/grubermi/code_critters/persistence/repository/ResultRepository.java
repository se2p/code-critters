package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Mutant;
import de.grubermi.code_critters.persistence.entities.Result;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResultRepository extends CrudRepository<Result, String> {

}
