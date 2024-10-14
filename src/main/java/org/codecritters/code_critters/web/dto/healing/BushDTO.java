package org.codecritters.code_critters.web.dto.healing;

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

import org.codecritters.code_critters.web.enums.BerryType;

import java.util.HashMap;

/**
 * The BushDTO describes the Bush Object in a Healing Level. It holds the coordinates,
 * its number in the game (e.g. the 1st or 2nd bush), js and xml codes and berryType.
 */
public class BushDTO {

    private HashMap<String, Integer> coordinates;
    private BerryType berryType;

    public BushDTO(HashMap<String, Integer> coordinates, BerryType berryType) {
        this.coordinates = coordinates;
        this.berryType = berryType;
    }

    public BushDTO() {
    }

    public HashMap<String, Integer> getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(HashMap<String, Integer> coordinates) {
        this.coordinates = coordinates;
    }

    public BerryType getBerryType() {
        return berryType;
    }

    public void setBerryType(BerryType berryType) {
        this.berryType = berryType;
    }
}
