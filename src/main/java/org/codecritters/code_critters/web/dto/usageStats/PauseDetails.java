package org.codecritters.code_critters.web.dto.usageStats;

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

import java.time.LocalDateTime;

/**
 * Object to build a return object for /statistics.
 * Holds the start and end time of a game pause.
 */
public class PauseDetails {

    private LocalDateTime pauseStart;

    private LocalDateTime pauseEnd;

    public PauseDetails(LocalDateTime pauseStart, LocalDateTime pauseEnd) {
        this.pauseStart = pauseStart;
        this.pauseEnd = pauseEnd;
    }

    public LocalDateTime getPauseStart() {
        return pauseStart;
    }

    public void setPauseStart(LocalDateTime pauseStart) {
        this.pauseStart = pauseStart;
    }

    public LocalDateTime getPauseEnd() {
        return pauseEnd;
    }

    public void setPauseEnd(LocalDateTime pauseEnd) {
        this.pauseEnd = pauseEnd;
    }
}
