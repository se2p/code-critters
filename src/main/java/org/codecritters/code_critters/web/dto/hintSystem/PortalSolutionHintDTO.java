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

import org.codecritters.code_critters.persistence.entities.hintSystem.Coordinate;

import java.util.List;

/**
 * DTO for a portal solution. It holds all important elements such as the XML, all possible coordinates
 * and a list of CUT blocks to highlight.
 */
public class PortalSolutionHintDTO {

    private String id;
    private String name;
    private List<String> codeBlocksToBeTested;
    private List<String> associatedComponentIds;
    private List<String> portalSolutionXmls;
    private List<Coordinate> possibleCoordinates;
    private List<String> keyCodeBlocks;

    public PortalSolutionHintDTO() {
    }

    public PortalSolutionHintDTO(String id, String name, List<String> codeBlocksToBeTested, List<String> associatedComponentIds, List<String> portalSolutionXmls, List<Coordinate> possibleCoordinates, List<String> keyCodeBlocks) {
        this.id = id;
        this.name = name;
        this.codeBlocksToBeTested = codeBlocksToBeTested;
        this.associatedComponentIds = associatedComponentIds;
        this.portalSolutionXmls = portalSolutionXmls;
        this.possibleCoordinates = possibleCoordinates;
        this.keyCodeBlocks = keyCodeBlocks;
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

    public List<String> getCodeBlocksToBeTested() {
        return codeBlocksToBeTested;
    }

    public void setCodeBlocksToBeTested(List<String> codeBlocksToBeTested) {
        this.codeBlocksToBeTested = codeBlocksToBeTested;
    }

    public List<String> getAssociatedComponentIds() {
        return associatedComponentIds;
    }

    public void setAssociatedComponentIds(List<String> associatedComponentIds) {
        this.associatedComponentIds = associatedComponentIds;
    }

    public List<String> getPortalSolutionXmls() {
        return portalSolutionXmls;
    }

    public void setPortalSolutionXmls(List<String> portalSolutionXmls) {
        this.portalSolutionXmls = portalSolutionXmls;
    }

    public List<Coordinate> getPossibleCoordinates() {
        return possibleCoordinates;
    }

    public void setPossibleCoordinates(List<Coordinate> possibleCoordinates) {
        this.possibleCoordinates = possibleCoordinates;
    }

    public List<String> getKeyCodeBlocks() {
        return keyCodeBlocks;
    }

    public void setKeyCodeBlocks(List<String> keyCodeBlocks) {
        this.keyCodeBlocks = keyCodeBlocks;
    }
}
