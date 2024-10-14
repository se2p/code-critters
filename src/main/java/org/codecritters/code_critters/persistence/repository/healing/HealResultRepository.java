package org.codecritters.code_critters.persistence.repository.healing;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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

import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealResult;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface HealResultRepository extends CrudRepository<HealResult, String> {

    HealResult getResultByLevelAndCookie(HealLevel level, String cookie);

    HealResult getResultByLevelAndUser(HealLevel level, User user);

    void deleteAllByUser(User user);

    void deleteAllByLevel(Level level);
}
