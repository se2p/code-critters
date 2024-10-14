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

/**
 * Represents a killed, i.e. detected, mutant of a healing game.
 */
public class KilledMutantDTO {

    private String id;
    private int currentRoundNum;

    public KilledMutantDTO() {
    }

    public KilledMutantDTO(String id, int currentRoundNum) {
        this.id = id;
        this.currentRoundNum = currentRoundNum;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getCurrentRoundNum() {
        return currentRoundNum;
    }

    public void setCurrentRoundNum(int currentRoundNum) {
        this.currentRoundNum = currentRoundNum;
    }
}
