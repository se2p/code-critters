package org.codecritters.code_critters.persistence.repository;

import org.codecritters.code_critters.persistence.customDataTypes.LevelResultType;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Row;
import org.codecritters.code_critters.persistence.entities.User;
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

    @Query("SELECT l.name FROM Level as l WHERE l.row = :rid ORDER BY l.name ASC")
    List<String> getLevelNamesByGroup(@Param("rid") Row row);

    @Query(nativeQuery = true, value = "SELECT l.name, r.score, r.stars FROM level as l LEFT JOIN ( SELECT r2.score, r2.level_id, r2.stars FROM result AS r2 WHERE r2.cookie = :cookie) AS r ON l.id = r.level_id WHERE l.row_id = :rid ORDER BY l.name ASC")
    List<LevelResultType> getLevelNamesAndResultByGroup(@Param("rid") Row row, @Param("cookie") String cookie);

    @Query(nativeQuery = true, value = "SELECT l.name, r.score, r.stars FROM level as l LEFT JOIN ( SELECT r2.score, r2.level_id, r2.stars FROM result AS r2 WHERE r2.user_id = :user) AS r ON l.id = r.level_id WHERE l.row_id = :rid ORDER BY l.name ASC")
    List<LevelResultType> getLevelNamesAndResultByGroup(@Param("rid") Row row, @Param("user") User user);
}
