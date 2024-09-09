package org.codecritters.code_critters.web.dto.hintSystem;

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

import java.util.List;

/**
 * DTO that holds a list of block ids from frontend components relevant for a hint.
 */
public class CutBlocksDTO {

    private List<String> blockIds;

    public CutBlocksDTO(List<String> blockIds) {
        this.blockIds = blockIds;
    }

    public CutBlocksDTO() {
    }

    public List<String> getBlockIds() {
        return blockIds;
    }

    public void setBlockIds(List<String> blockIds) {
        this.blockIds = blockIds;
    }
}
