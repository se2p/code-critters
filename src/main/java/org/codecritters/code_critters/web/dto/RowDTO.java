package org.codecritters.code_critters.web.dto;

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

public class RowDTO {

    private String id;
    private String name;
    private int position;

    /**
     * Specifies the row to which a level belongs.
     * @param id The row's id.
     * @param name The row's name.
     */
    public RowDTO(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public RowDTO(String id, String name, int position) {
        this.id = id;
        this.name = name;
        this.position = position;
    }

    public RowDTO() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPosition() {
        return  position;
    }

    public void setPosition(int position) {
        this.position = position;
    }
}
