package org.codecritters.code_critters.persistence.repository;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */

import org.codecritters.code_critters.persistence.customDataTypes.LevelResultType;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.User;
import org.springframework.data.jpa.repository.Modifying;
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
    List<String> getLevelNamesByGroup(@Param("rid") CritterRow row);

    @Query(nativeQuery = true, value = "SELECT l.name, r.score, r.stars FROM level as l LEFT JOIN ( SELECT r2.score, r2.level_id, r2.stars FROM result AS r2 WHERE r2.cookie = :cookie) AS r ON l.id = r.level_id WHERE l.row_id = :rid ORDER BY l.name ASC")
    List<LevelResultType> getLevelNamesAndResultByGroup(@Param("rid") CritterRow row, @Param("cookie") String cookie);

    @Query(nativeQuery = true, value = "SELECT l.name, r.score, r.stars FROM level as l LEFT JOIN ( SELECT r2.score, r2.level_id, r2.stars FROM result AS r2 WHERE r2.user_id = :user) AS r ON l.id = r.level_id WHERE l.row_id = :rid ORDER BY l.name ASC")
    List<LevelResultType> getLevelNamesAndResultByGroup(@Param("rid") CritterRow row, @Param("user") User user);

    @Modifying
    @Query("DELETE FROM Level AS l WHERE l.id = :id")
    void deleteById(@Param("id") String id);
}
