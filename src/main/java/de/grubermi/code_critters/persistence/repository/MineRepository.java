package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.Mine;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MineRepository extends CrudRepository<Mine, String> {


}
