package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.Level;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LevelRepository extends CrudRepository<Level, String> {

    Level findByName(String name);

     @Query("SELECT l.name FROM Level as l ORDER BY l.name ASC")
    List<String> getLevelNames();

    @Query("SELECT l.id FROM Level AS l WHERE l.name = :name")
    String getIdByName(@Param("name") String name);

    @Query("SELECT l.test FROM Level AS l WHERE l.name = :name")
    String getTestByName(@Param("name") String name);

    @Query("SELECT l.CUT FROM Level AS l WHERE l.name = :name")
    String getCUTByName(@Param("name") String name);

    @Query("SELECT l.init FROM Level AS l WHERE l.name = :name")
    String getInitByName(@Param("name") String name);
}
