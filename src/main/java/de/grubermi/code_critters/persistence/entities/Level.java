package de.grubermi.code_critters.persistence.entities;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.HashMap;

@Entity
//@Table(indexes = {@Index(columnList = "name", name = "level_name")})
public class Level {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @NotEmpty
    @Column(unique = true)
    private String name;
    @Column(columnDefinition = "int default 10")
    private int numberOfCritters;
    @Column(columnDefinition = "int default 5")
    private int numberOfHumans;
    @NotEmpty
    @Column(columnDefinition = "text")
    private String CUT;
    @Column(columnDefinition = "text")
    private String init;
    @Column(columnDefinition = "text")
    private String xml;
    @Column(columnDefinition = "text")
    private String test;
    @NotEmpty
    @Type(type = "de.grubermi.code_critters.persistence.customDataTypes.LevelDataType")
    private String[][] level;
    @NotEmpty
    @Type(type = "de.grubermi.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> tower;
    @NotEmpty
    @Type(type = "de.grubermi.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> spawn;


    public Level(String name, int numberOfCritters, int numberOfHumans, String CUT, String test, String xml, String init, String[][] level) {
        this.name = name;
        this.numberOfCritters = numberOfCritters;
        this.numberOfHumans = numberOfHumans;
        this.CUT = CUT;
        this.test = test;
        this.level = level;
        this.init = init;
        this.xml = xml;
    }

    public Level() {
    }

    public Level(String id) {
        this.id = id;
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

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }

    public String[][] getLevel() {
        return level;
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

    public void setLevel(String[][] level) {
        this.level = level;
    }

    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }
}
