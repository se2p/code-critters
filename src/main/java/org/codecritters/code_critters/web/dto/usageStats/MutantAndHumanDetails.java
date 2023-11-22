package org.codecritters.code_critters.web.dto.usageStats;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Michael Gruber
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
 * Object to build a return object for /statistics.
 * Holds the details of all killed and finished critters of a game.
 */
public class MutantAndHumanDetails {

    private CrittersNumAndDetails killed;

    private CrittersNumAndDetails finished;

    public MutantAndHumanDetails(CrittersNumAndDetails killed, CrittersNumAndDetails finished) {
        this.killed = killed;
        this.finished = finished;
    }

    public CrittersNumAndDetails getKilled() {
        return killed;
    }

    public void setKilled(CrittersNumAndDetails killed) {
        this.killed = killed;
    }

    public CrittersNumAndDetails getFinished() {
        return finished;
    }

    public void setFinished(CrittersNumAndDetails finished) {
        this.finished = finished;
    }
}
