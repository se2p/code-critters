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

import org.codecritters.code_critters.web.enums.HintSituation;

import java.time.LocalDateTime;
import java.util.List;

/**
 * Represents the DTO of AssistantInfo => usage information of the assistant in a certain game. Holds the corresponding
 * game, a list of steps that were visited during the assistant mode, the hint situation (e.g. first_portal, introduction),
 * and the timestamp when the assistant mode was closed.
 */
public class AssistantInfoDTO {

    private String id;
    private String gameId;
    private List<VisitedStepDTO> visitedSteps;
    private HintSituation hintSituation;
    private LocalDateTime timeClosed;
    private List<String> builtPortalIds;


    public AssistantInfoDTO() {
    }

    public AssistantInfoDTO(String gameId, List<VisitedStepDTO> visitedSteps, HintSituation hintSituation, LocalDateTime timeClosed, List<String> builtPortalIds) {
        this.gameId = gameId;
        this.visitedSteps = visitedSteps;
        this.hintSituation = hintSituation;
        this.timeClosed = timeClosed;
    }

    public String getGameId() {
        return gameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public List<VisitedStepDTO> getVisitedSteps() {
        return visitedSteps;
    }

    public void setVisitedSteps(List<VisitedStepDTO> visitedSteps) {
        this.visitedSteps = visitedSteps;
    }

    public HintSituation getHintSituation() {
        return hintSituation;
    }

    public void setHintSituation(HintSituation hintSituation) {
        this.hintSituation = hintSituation;
    }

    public LocalDateTime getTimeClosed() {
        return timeClosed;
    }

    public void setTimeClosed(LocalDateTime timeClosed) {
        this.timeClosed = timeClosed;
    }

    public List<String> getBuiltPortalIds() {
        return builtPortalIds;
    }

    public void setPortalIds(List<String> builtPortalIds) {
        this.builtPortalIds = builtPortalIds;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setBuiltPortalIds(List<String> builtPortalIds) {
        this.builtPortalIds = builtPortalIds;
    }
}
