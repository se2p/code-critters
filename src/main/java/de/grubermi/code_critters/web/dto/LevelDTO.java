package de.grubermi.code_critters.web.dto;

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
