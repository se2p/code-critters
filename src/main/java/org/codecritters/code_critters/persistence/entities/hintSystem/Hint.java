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
import org.codecritters.code_critters.web.enums.ExpectedInteraction;
import org.codecritters.code_critters.web.enums.HintSituation;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Map;


/**
 * Represents a hint for a certain level. It holds all necessary properties for a hint, such
 * as the hint text, the relevant frontend components and blockly blocks, or coordinates needed
 * to show something on the gameboard. It is structured with maps, where the key is an integer
 * that indicates which hint elements belong together. I.e. the objects with the same map key
 * belong to the same hint step.
 */
@Entity
public class Hint {

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
    private HintSituation hintSituation;

    // The hint text divided into different parts => the one text per step, with the step number as key
    @ElementCollection
    private Map<Integer, String> hintTexts;

    // The coordinates that are relevant for a given step (= map key)
    @ElementCollection
    @CollectionTable(name = "associated_coordinates", joinColumns = @JoinColumn(name = "hint_id"))
    private Map<Integer, Coordinate> associatedCoordinates;

    // The block ids from the CUT that are relevant for given steps
    @JsonIdentityInfo(
            generator = ObjectIdGenerators.PropertyGenerator.class,
            property = "id")
    @OneToMany(mappedBy = "hint", cascade = CascadeType.ALL)
    private Map<Integer, AssociatedCutBlocks> associatedCutBlocks;

    // The frontend components ids relevant for the given steps
    @JsonIdentityInfo(
            generator = ObjectIdGenerators.PropertyGenerator.class,
            property = "id")
    @OneToMany(mappedBy = "hint", cascade = CascadeType.ALL)
    private Map<Integer, AssociatedComponentIds> associatedComponentIds;

    // The xml code necessary to show a test hint for given hint steps
    @ElementCollection
    @CollectionTable(name = "portal_xmls", joinColumns = @JoinColumn(name = "hint_id"))
    @MapKeyColumn(name = "portal_xml_key")
    @Column(name = "portal_xml", columnDefinition = "text")
    private Map<Integer, String> portalXmls;

    // The coordinates a player is expected to click during the hint mode in given steps
    @JsonIdentityInfo(
            generator = ObjectIdGenerators.PropertyGenerator.class,
            property = "id")
    @OneToMany(mappedBy = "hint", cascade = CascadeType.ALL)
    private Map<Integer, ExpectedClickedCoordinate> expectedClickedCoordinates;

    // The expected interaction of the user in the different steps
    @ElementCollection
    private Map<Integer, ExpectedInteraction> expectedUserInteraction;

    // The portal js code that is expected to be built by the user in given steps
    @ElementCollection
    @Column(name = "expected_portal_js_code", columnDefinition = "text")
    private Map<Integer, String> expectedPortalJsCode;


    public Hint() {
    }

    public Hint(String id, Level level, HintSituation hintSituation, Map<Integer, String> hintTexts, Map<Integer, Coordinate> associatedCoordinates, Map<Integer, AssociatedCutBlocks> associatedCutBlocks, Map<Integer, AssociatedComponentIds> associatedComponentIds, Map<Integer, String> portalXmls, Map<Integer, ExpectedClickedCoordinate> expectedClickedCoordinates) {
        this.id = id;
        this.level = level;
        this.hintSituation = hintSituation;
        this.hintTexts = hintTexts;
        this.associatedCoordinates = associatedCoordinates;
        this.associatedCutBlocks = associatedCutBlocks;
        this.associatedComponentIds = associatedComponentIds;
        this.portalXmls = portalXmls;
        this.expectedClickedCoordinates = expectedClickedCoordinates;
    }

    public Hint(String id, Level level, HintSituation hintSituation, Map<Integer, String> hintTexts, Map<Integer, Coordinate> associatedCoordinates, Map<Integer, AssociatedCutBlocks> associatedCutBlocks, Map<Integer, AssociatedComponentIds> associatedComponentIds, Map<Integer, String> portalXmls, Map<Integer, ExpectedClickedCoordinate> expectedClickedCoordinates, Map<Integer, ExpectedInteraction> expectedUserInteraction, Map<Integer, String> expectedPortalJsCode) {
        this.id = id;
        this.level = level;
        this.hintSituation = hintSituation;
        this.hintTexts = hintTexts;
        this.associatedCoordinates = associatedCoordinates;
        this.associatedCutBlocks = associatedCutBlocks;
        this.associatedComponentIds = associatedComponentIds;
        this.portalXmls = portalXmls;
        this.expectedClickedCoordinates = expectedClickedCoordinates;
        this.expectedUserInteraction = expectedUserInteraction;
        this.expectedPortalJsCode = expectedPortalJsCode;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Level getLevel() {
        return level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    public HintSituation getHintSituation() {
        return hintSituation;
    }

    public void setHintSituation(HintSituation hintSituation) {
        this.hintSituation = hintSituation;
    }

    public Map<Integer, Coordinate> getAssociatedCoordinates() {
        return associatedCoordinates;
    }

    public void setAssociatedCoordinates(Map<Integer, Coordinate> associatedCoordinates) {
        this.associatedCoordinates = associatedCoordinates;
    }

    public Map<Integer, AssociatedCutBlocks> getAssociatedCutBlocks() {
        return associatedCutBlocks;
    }

    public void setAssociatedCutBlocks(Map<Integer, AssociatedCutBlocks> associatedCutBlocks) {
        this.associatedCutBlocks = associatedCutBlocks;
    }

    public Map<Integer, AssociatedComponentIds> getAssociatedComponentIds() {
        return associatedComponentIds;
    }

    public void setAssociatedComponentIds(Map<Integer, AssociatedComponentIds> associatedComponentIds) {
        this.associatedComponentIds = associatedComponentIds;
    }

    public Map<Integer, String> getPortalXmls() {
        return portalXmls;
    }

    public void setPortalXmls(Map<Integer, String> portalXmls) {
        this.portalXmls = portalXmls;
    }

    public Map<Integer, ExpectedClickedCoordinate> getExpectedClickedCoordinates() {
        return expectedClickedCoordinates;
    }

    public void setExpectedClickCoordinates(Map<Integer, ExpectedClickedCoordinate> expectedClickedCoordinates) {
        this.expectedClickedCoordinates = expectedClickedCoordinates;
    }

    public Map<Integer, String> getHintTexts() {
        return hintTexts;
    }

    public void setHintTexts(Map<Integer, String> hintTexts) {
        this.hintTexts = hintTexts;
    }

    public void setExpectedClickedCoordinates(Map<Integer, ExpectedClickedCoordinate> expectedClickedCoordinates) {
        this.expectedClickedCoordinates = expectedClickedCoordinates;
    }

    public Map<Integer, ExpectedInteraction> getExpectedUserInteraction() {
        return expectedUserInteraction;
    }

    public void setExpectedUserInteraction(Map<Integer, ExpectedInteraction> expectedUserInteraction) {
        this.expectedUserInteraction = expectedUserInteraction;
    }

    public Map<Integer, String> getExpectedPortalJsCode() {
        return expectedPortalJsCode;
    }

    public void setExpectedPortalJsCode(Map<Integer, String> expectedPortalJsCode) {
        this.expectedPortalJsCode = expectedPortalJsCode;
    }
}

