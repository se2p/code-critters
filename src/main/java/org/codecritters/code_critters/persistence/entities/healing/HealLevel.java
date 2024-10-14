package org.codecritters.code_critters.persistence.entities.healing;

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
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.HashMap;
import java.util.List;

/**
 * Represents a healing level i.e. a second stage level. It contains level attributes such as
 * the CUT (the recipe code), xml, level appearance, coordinates for the loop starting point
 * and bushes.
 */
@Entity
public class HealLevel {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @NotEmpty
    @Column(unique = true)
    private String name;

    @Column
    private String displayName;

    @NotEmpty
    @Column(columnDefinition = "text")
    private String CUT;

    @Column(columnDefinition = "text")
    private String xml;

    @Column(columnDefinition = "text")
    private String test;

    @NotEmpty
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> loopStart;

    @NotEmpty
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> basketPosition;

    @NotEmpty
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> spawn;

    @OneToMany(cascade = CascadeType.ALL)
    private List<Bush> bushes;

    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.LevelDataType")
    private String[][] displayLevel;

    @Column
    private int roundsNum;

    @Column
    private int numberOfMutants;

    @Enumerated(EnumType.STRING)
    private Boardbackground boardbackground;

    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> innerLoopStart;

    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> innerBasketPosition;

    public HealLevel(String id, String name, String displayName, String CUT, String xml, String test, HashMap<String, Integer> loopStart, HashMap<String, Integer> basketPosition, HashMap<String, Integer> spawn, List<Bush> bushes, String[][] displayLevel, int roundsNum, int numberOfMutants, Boardbackground boardbackground, HashMap<String, Integer> innerLoopStart, HashMap<String, Integer> innerBasketPosition) {
        this.id = id;
        this.name = name;
        this.displayName = displayName;
        this.CUT = CUT;
        this.xml = xml;
        this.test = test;
        this.loopStart = loopStart;
        this.basketPosition = basketPosition;
        this.spawn = spawn;
        this.bushes = bushes;
        this.displayLevel = displayLevel;
        this.roundsNum = roundsNum;
        this.numberOfMutants = numberOfMutants;
        this.boardbackground = boardbackground;
        this.innerLoopStart = innerLoopStart;
        this.innerBasketPosition = innerBasketPosition;
    }

    public HealLevel(String id, String name, String displayName, String CUT, String xml, String test, HashMap<String, Integer> loopStart, HashMap<String, Integer> spawn, List<Bush> bushes, String[][] displayLevel, int roundsNum, int numberOfMutants, Boardbackground boardbackground, HashMap<String, Integer> innerLoopStart) {
        this.id = id;
        this.name = name;
        this.displayName = displayName;
        this.CUT = CUT;
        this.xml = xml;
        this.test = test;
        this.loopStart = loopStart;
        this.spawn = spawn;
        this.bushes = bushes;
        this.displayLevel = displayLevel;
        this.roundsNum = roundsNum;
        this.numberOfMutants = numberOfMutants;
        this.boardbackground = boardbackground;
        this.innerLoopStart = innerLoopStart;
    }

    public HealLevel(String name, String displayName, String CUT, String xml, String test, HashMap<String, Integer> loopStart, HashMap<String, Integer> spawn, List<Bush> bushes, String[][] displayLevel, int roundsNum, int numberOfMutants, Boardbackground boardbackground, HashMap<String, Integer> innerLoopStart) {
        this.name = name;
        this.displayName = displayName;
        this.CUT = CUT;
        this.xml = xml;
        this.test = test;
        this.loopStart = loopStart;
        this.spawn = spawn;
        this.bushes = bushes;
        this.displayLevel = displayLevel;
        this.roundsNum = roundsNum;
        this.numberOfMutants = numberOfMutants;
        this.boardbackground = boardbackground;
        this.innerLoopStart = innerLoopStart;
    }

    public HealLevel() {
    }

    public HealLevel(String id) {
        this.id = id;
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

    public List<Bush> getBushes() {
        return bushes;
    }

    public void setBushes(List<Bush> bushes) {
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
