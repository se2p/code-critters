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

import org.codecritters.code_critters.web.enums.Boardbackground;

import java.util.HashMap;
import java.util.List;

/**
 * DTO for healing levels with level attributes such as the name, the code under test, bushes and
 * level appearance.
 */
public class HealLevelDTO {
    private String id;
    private String name;
    private String displayName;
    private String CUT;
    private String xml;
    private String test; // only for the "help" section -> would be the solution test, will maybe implemented in future?
    private HashMap<String, Integer> loopStart;
    private HashMap<String, Integer> basketPosition;
    private HashMap<String, Integer> spawn;
    private String[][] displayLevel;
    private List<BushDTO> bushes;
    private int numberOfMutants;
    private int roundsNum;
    private Boardbackground boardbackground;
    private HashMap<String, Integer> innerLoopStart;
    private HashMap<String, Integer> innerBasketPosition;


    public HealLevelDTO(String id, String name, String displayName, String CUT, String xml, String test, HashMap<String, Integer> loopStart, HashMap<String, Integer> basketPosition, HashMap<String, Integer> spawn, String[][] displayLevel, List<BushDTO> bushes, int numberOfMutants, int roundsNum, Boardbackground boardbackground) {
        this.id = id;
        this.name = name;
        this.displayName = displayName;
        this.CUT = CUT;
        this.xml = xml;
        this.test = test;
        this.loopStart = loopStart;
        this.basketPosition = basketPosition;
        this.spawn = spawn;
        this.displayLevel = displayLevel;
        this.bushes = bushes;
        this.numberOfMutants = numberOfMutants;
        this.roundsNum = roundsNum;
        this.boardbackground = boardbackground;
    }

    public HealLevelDTO(String id, String name, String displayName, String CUT, String xml, String test, HashMap<String, Integer> loopStart, HashMap<String, Integer> spawn, String[][] displayLevel, List<BushDTO> bushes, int numberOfMutants, int roundsNum, Boardbackground boardbackground, HashMap<String, Integer> innerLoopStart) {
        this.id = id;
        this.name = name;
        this.displayName = displayName;
        this.CUT = CUT;
        this.xml = xml;
        this.test = test;
        this.loopStart = loopStart;
        this.spawn = spawn;
        this.displayLevel = displayLevel;
        this.bushes = bushes;
        this.roundsNum = roundsNum;
        this.numberOfMutants = numberOfMutants;
        this.boardbackground = boardbackground;
        this.innerLoopStart = innerLoopStart;
    }

    public HealLevelDTO(String id, String name, String displayName, String CUT, String xml, String test, HashMap<String, Integer> loopStart, HashMap<String, Integer> spawn, String[][] displayLevel, List<BushDTO> bushes, int numberOfMutants, int roundsNum, Boardbackground boardbackground) {
        this.id = id;
        this.name = name;
        this.displayName = displayName;
        this.CUT = CUT;
        this.xml = xml;
        this.test = test;
        this.loopStart = loopStart;
        this.spawn = spawn;
        this.displayLevel = displayLevel;
        this.bushes = bushes;
        this.numberOfMutants = numberOfMutants;
        this.roundsNum = roundsNum;
        this.boardbackground = boardbackground;
    }

    public HealLevelDTO() {
    }



    public HashMap<String, Integer> getLoopStart() {
        return loopStart;
    }

    public void setLoopStart(HashMap<String, Integer> loopStart) {
        this.loopStart = loopStart;
    }

    public HashMap<String, Integer> getSpawn() {
        return spawn;
    }

    public void setSpawn(HashMap<String, Integer> spawn) {
        this.spawn = spawn;
    }

    public List<BushDTO> getBushes() {
        return bushes;
    }

    public void setBushes(List<BushDTO> bushes) {
        this.bushes = bushes;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCUT() {
        return CUT;
    }

    public void setCUT(String CUT) {
        this.CUT = CUT;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }

    public String[][] getDisplayLevel() {
        return displayLevel;
    }

    public void setDisplayLevel(String[][] displayLevel) {
        this.displayLevel = displayLevel;
    }

    public int getRoundsNum() {
        return roundsNum;
    }

    public void setRoundsNum(int roundsNum) {
        this.roundsNum = roundsNum;
    }

    public int getNumberOfMutants() {
        return numberOfMutants;
    }

    public void setNumberOfMutants(int numberOfMutants) {
        this.numberOfMutants = numberOfMutants;
    }

    public Boardbackground getBoardbackground() {
        return boardbackground;
    }

    public void setBoardbackground(Boardbackground boardbackground) {
        this.boardbackground = boardbackground;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public HashMap<String, Integer> getInnerLoopStart() {
        return innerLoopStart;
    }

    public void setInnerLoopStart(HashMap<String, Integer> innerLoopStart) {
        this.innerLoopStart = innerLoopStart;
    }

    public HashMap<String, Integer> getBasketPosition() {
        return basketPosition;
    }

    public void setBasketPosition(HashMap<String, Integer> basketPosition) {
        this.basketPosition = basketPosition;
    }

    public HashMap<String, Integer> getInnerBasketPosition() {
        return innerBasketPosition;
    }

    public void setInnerBasketPosition(HashMap<String, Integer> innerBasketPosition) {
        this.innerBasketPosition = innerBasketPosition;
    }
}
