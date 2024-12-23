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
import org.codecritters.code_critters.web.enums.ExpectedInteraction;
import org.codecritters.code_critters.web.enums.HintSituation;

import java.util.List;
import java.util.Map;

/**
 * Represents a hintDTO for a certain level. It holds all necessary properties for a hint, such
 * as the hint text, the relevant frontend components and blockly blocks, or coordinates needed
 * to show something on the gameboard. It is structured with maps, where the key is an integer
 * that indicates which hint elements belong together. I.e. the objects with the same map key
 * belong to the same hint step.
 */
public class HintDTO {

    private String id;
    private HintSituation hintSituation;
    private Map<Integer, String> hintTexts;
    private Map<Integer, Coordinate> associatedCoordinates;
    private Map<Integer, CutBlocksDTO> associatedCutBlocks;
    private Map<Integer, ComponentsDTO> associatedComponentIds;
    private Map<Integer, String> portalXmls;
    private Map<Integer, ExpectedClickedCoordsDTO> expectedClickedCoordinates;
    private Map<Integer, ExpectedInteraction> expectedUserInteraction;
    private Map<Integer, String> expectedPortalJsCode;
    private Map<Integer, List<String>> answerOptionsList;
    private Map<Integer, String> solutionAnswer;


    public HintDTO() {
    }

    public HintDTO(String id, HintSituation hintSituation, Map<Integer, String> hintTexts, Map<Integer, Coordinate> associatedCoordinates, Map<Integer, CutBlocksDTO> associatedCutBlocks, Map<Integer, ComponentsDTO> associatedComponentIds, Map<Integer, String> portalXmls, Map<Integer, ExpectedClickedCoordsDTO> expectedClickedCoordinates, Map<Integer, ExpectedInteraction> expectedUserInteraction, Map<Integer, String> expectedPortalJsCode, Map<Integer, List<String>> answerOptionsList, Map<Integer, String> solutionAnswer) {
        this.id = id;
        this.hintSituation = hintSituation;
        this.hintTexts = hintTexts;
        this.associatedCoordinates = associatedCoordinates;
        this.associatedCutBlocks = associatedCutBlocks;
        this.associatedComponentIds = associatedComponentIds;
        this.portalXmls = portalXmls;
        this.expectedClickedCoordinates = expectedClickedCoordinates;
        this.expectedUserInteraction = expectedUserInteraction;
        this.expectedPortalJsCode = expectedPortalJsCode;
        this.answerOptionsList = answerOptionsList;
        this.solutionAnswer = solutionAnswer;
    }

    public HintDTO(String id, HintSituation hintSituation, Map<Integer, String> hintTexts, Map<Integer, Coordinate> associatedCoordinates, Map<Integer, CutBlocksDTO> associatedCutBlocks, Map<Integer, ComponentsDTO> associatedComponentIds, Map<Integer, String> portalXmls, Map<Integer, ExpectedClickedCoordsDTO> expectedClickedCoordinates, Map<Integer, ExpectedInteraction> expectedUserInteraction, Map<Integer, String> expectedPortalJsCode) {
        this.id = id;
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

    public HintSituation getHintSituation() {
        return hintSituation;
    }

    public void setHintSituation(HintSituation hintSituation) {
        this.hintSituation = hintSituation;
    }

    public Map<Integer, String> getHintTexts() {
        return hintTexts;
    }

    public void setHintTexts(Map<Integer, String> hintTexts) {
        this.hintTexts = hintTexts;
    }

    public Map<Integer, Coordinate> getAssociatedCoordinates() {
        return associatedCoordinates;
    }

    public void setAssociatedCoordinates(Map<Integer, Coordinate> associatedCoordinates) {
        this.associatedCoordinates = associatedCoordinates;
    }

    public Map<Integer, CutBlocksDTO> getAssociatedCutBlocks() {
        return associatedCutBlocks;
    }

    public void setAssociatedCutBlocks(Map<Integer, CutBlocksDTO> associatedCutBlocks) {
        this.associatedCutBlocks = associatedCutBlocks;
    }

    public Map<Integer, ComponentsDTO> getAssociatedComponentIds() {
        return associatedComponentIds;
    }

    public void setAssociatedComponentIds(Map<Integer, ComponentsDTO> associatedComponentIds) {
        this.associatedComponentIds = associatedComponentIds;
    }

    public Map<Integer, String> getPortalXmls() {
        return portalXmls;
    }

    public void setPortalXmls(Map<Integer, String> portalXmls) {
        this.portalXmls = portalXmls;
    }

    public Map<Integer, ExpectedClickedCoordsDTO> getExpectedClickedCoordinates() {
        return expectedClickedCoordinates;
    }

    public void setExpectedClickedCoordinates(Map<Integer, ExpectedClickedCoordsDTO> expectedClickedCoordinates) {
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

    public Map<Integer, List<String>> getAnswerOptionsList() {
        return answerOptionsList;
    }

    public void setAnswerOptionsList(Map<Integer, List<String>> answerOptionsList) {
        this.answerOptionsList = answerOptionsList;
    }

    public Map<Integer, String> getSolutionAnswer() {
        return solutionAnswer;
    }

    public void setSolutionAnswer(Map<Integer, String> solutionAnswer) {
        this.solutionAnswer = solutionAnswer;
    }
}
