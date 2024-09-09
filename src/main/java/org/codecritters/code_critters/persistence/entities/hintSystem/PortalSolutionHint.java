package org.codecritters.code_critters.persistence.entities.hintSystem;

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

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import org.codecritters.code_critters.persistence.entities.Level;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

/**
 * Holds an example solution and helpful elements for a portal of a given level. It holds e.g. lists of CUT blocks
 * that are tested with the portal, and all its possible coordinates, and the portal XML.
 */
@Entity
public class PortalSolutionHint {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "level_id")
    @JsonIdentityInfo(
            generator = ObjectIdGenerators.PropertyGenerator.class,
            property = "id")
    private Level level;

    private String name;

    @ElementCollection
    private List<String> codeBlockToBeTested;
    @ElementCollection
    private List<String> associatedComponentIds;

    // Maybe no list needed? Just final xml?
    @ElementCollection
    @CollectionTable(name = "portal_solution_xmls", joinColumns = @JoinColumn(name = "portal_solution_hint_id"))
    @Column(name = "portal_solution_xml", columnDefinition = "text")
    private List<String> portalSolutionXmls;
    @ElementCollection
    private List<Coordinate> possibleCoordinates;

    // most important code blocks in the CUT (e.g. if-condition where critter behavior changes)
    @ElementCollection
    private List<String> keyCodeBlocks;


    public PortalSolutionHint() {
    }

    public PortalSolutionHint(String id, Level level, String name, List<String> codeBlockToBeTested, List<String> associatedComponentIds, List<String> portalSolutionXmls, List<Coordinate> possibleCoordinates, List<String> keyCodeBlocks) {
        this.id = id;
        this.level = level;
        this.name = name;
        this.codeBlockToBeTested = codeBlockToBeTested;
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

    public Level getLevel() {
        return this.level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getCodeBlockToBeTested() {
        return codeBlockToBeTested;
    }

    public void setCodeBlockToBeTested(List<String> codeBlockToBeTested) {
        this.codeBlockToBeTested = codeBlockToBeTested;
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

    public void setPortalSolutionXmls(List<String> portalXmls) {
        this.portalSolutionXmls = portalXmls;
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
