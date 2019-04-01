package de.grubermi.code_critters.persistence.repository;


import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Result;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface ResultRepository extends CrudRepository<Result, String> {

    Result getResultByLevelAndCookie(Level level, String cookie);

    List<Result> getAllByUpdatedBefore(Date date);
}
