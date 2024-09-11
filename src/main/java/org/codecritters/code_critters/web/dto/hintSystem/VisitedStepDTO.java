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

import java.time.LocalDateTime;

/**
 * Is the DTO of a hint assistant step that has been visited by a user in a game. It holds the time at which the step
 * was opened (timeSeen) and the step number.
 */
public class VisitedStepDTO {

    private String assistantInfoId;

    // time when a user sees this step
    private LocalDateTime timeSeen;
    private int hintStep;

    public VisitedStepDTO(String assistantInfoId, LocalDateTime timeSeen, int hintStep) {
        this.assistantInfoId = assistantInfoId;
        this.timeSeen = timeSeen;
        this.hintStep = hintStep;
    }

    public VisitedStepDTO() {
    }

    public String getAssistantInfoId() {
        return assistantInfoId;
    }

    public void setAssistantInfoId(String assistantInfoId) {
        this.assistantInfoId = assistantInfoId;
    }

    public LocalDateTime getTimeSeen() {
        return timeSeen;
    }

    public void setTimeSeen(LocalDateTime timeSeen) {
        this.timeSeen = timeSeen;
    }

    public int getHintStep() {
        return hintStep;
    }

    public void setHintStep(int hintStep) {
        this.hintStep = hintStep;
    }
}
