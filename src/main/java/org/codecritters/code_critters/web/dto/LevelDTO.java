package org.codecritters.code_critters.web.dto;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
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

import java.util.HashMap;

public class LevelDTO {

    private String id;
    private String name;
    private int numberOfCritters;
    private int numberOfHumans;
    private String CUT;
    private String init;
    private String xml;
    private String test;
    private String[][] level;
    private HashMap<String, Integer> tower;
    private HashMap<String, Integer> spawn;
    private String row;

    public LevelDTO(String id, String name, int numberOfCritters, int numberOfHumans, String CUT, String init, String xml, String test, String[][] level, HashMap<String, Integer> tower, HashMap<String, Integer> spawn, String row) {
        this.id = id;
        this.name = name;
        this.numberOfCritters = numberOfCritters;
        this.numberOfHumans = numberOfHumans;
        this.CUT = CUT;
        this.init = init;
        this.xml = xml;
        this.test = test;
        this.level = level;
        this.tower = tower;
        this.spawn = spawn;
        this.row = row;
    }

    public LevelDTO(String id, String name, int numberOfCritters, int numberOfHumans, String CUT, String xml, String test, String init, String[][] level) {
        this.id = id;
        this.name = name;
        this.numberOfCritters = numberOfCritters;
        this.numberOfHumans = numberOfHumans;
        this.CUT = CUT;
        this.init = init;
        this.test = test;
        this.level = level;
        this.xml = xml;
    }

    public LevelDTO() {
    }

    public LevelDTO(String name, int numberOfCritters, int numberOfHumans, String CUT, String test, String[][] level,
                    HashMap<String, Integer> spawn, HashMap<String, Integer> tower) {
        this.name = name;
        this.numberOfCritters = numberOfCritters;
        this.numberOfHumans = numberOfHumans;
        this.CUT = CUT;
        this.test = test;
        this.level = level;
        this.spawn = spawn;
        this.tower = tower;
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

    public int getNumberOfCritters() {
        return numberOfCritters;
    }

    public void setNumberOfCritters(int numberOfCritters) {
        this.numberOfCritters = numberOfCritters;
    }

    public int getNumberOfHumans() {
        return numberOfHumans;
    }

    public void setNumberOfHumans(int numberOfHumans) {
        this.numberOfHumans = numberOfHumans;
    }

    public String getCUT() {
        return CUT;
    }

    public void setCUT(String CUT) {
        this.CUT = CUT;
    }

    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }

    public String[][] getLevel() {
        return level;
    }

    public void setLevel(String[][] level) {
        this.level = level;
    }

    public HashMap<String, Integer> getTower() {
        return tower;
    }

    public void setTower(HashMap<String, Integer> tower) {
        this.tower = tower;
    }

    public HashMap<String, Integer> getSpawn() {
        return spawn;
    }

    public void setSpawn(HashMap<String, Integer> spawn) {
        this.spawn = spawn;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    public String getRow() {
        return row;
    }

    public void setRow(String row) {
        this.row = row;
    }
}
