package org.codecritters.code_critters.persistence.customDataTypes;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
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

import java.util.Comparator;

/**
 * To sort LevelResultType objects according to their level names (level_1, level_2, ...)
 */
public class SortByLevelName implements Comparator<LevelResultType> {

    public int compare(LevelResultType a, LevelResultType b) {
        if (a.getName().startsWith("level_") && b.getName().startsWith("level_")) ;
        {
            if (Integer.valueOf(a.getName().substring(6)) < Integer.valueOf(b.getName().substring(6))) {
                return -1;
            } else if (Integer.valueOf(a.getName().substring(6)) > Integer.valueOf(b.getName().substring(6))) {
                return 1;
            }
        }
        return 0;
    }
}
