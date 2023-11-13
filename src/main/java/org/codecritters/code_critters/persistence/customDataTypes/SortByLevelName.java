package org.codecritters.code_critters.persistence.customDataTypes;

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
