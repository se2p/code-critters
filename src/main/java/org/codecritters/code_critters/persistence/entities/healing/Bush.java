package org.codecritters.code_critters.persistence.entities.healing;

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
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.HashMap;

/**
 * Entity for a berry bush of a second-stage level.
 */
@Entity
public class Bush {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @NotEmpty
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> coordinates;

    @Enumerated(EnumType.STRING)
    private BerryType berryType;

    public Bush() {
    }

    public Bush(String id, HashMap<String, Integer> coordinates, BerryType berryType) {
        this.id = id;
        this.coordinates = coordinates;
        this.berryType = berryType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
