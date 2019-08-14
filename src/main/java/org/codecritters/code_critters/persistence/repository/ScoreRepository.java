package org.codecritters.code_critters.persistence.repository;

import org.codecritters.code_critters.persistence.entities.Score;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScoreRepository extends CrudRepository<Score, String> {

    @Query(nativeQuery = true,
            value = "SELECT * FROM score AS s ORDER BY s.score DESC LIMIT 10")
    List<Score> findTop10();

    Score findByUsername(String username);

    @Query(nativeQuery = true,
            value = "SELECT COUNT(*) as number FROM score AS s")
    int countAll();
}
