package org.codecritters.code_critters.persistence.entities;

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
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.LevelDataType")
    private String[][] level;
    @NotEmpty
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> tower;
    @NotEmpty
    @Type(type = "org.codecritters.code_critters.persistence.customDataTypes.CoordinateDataType")
    private HashMap<String, Integer> spawn;
    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "row.id")
    private CritterRow row;


    public Level(CritterRow row, String name, int numberOfCritters, int numberOfHumans, String CUT, String test, String xml, String init, String[][] level) {
        this.row = row;
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

    public CritterRow getRow() {
        return row;
    }

    public void setRow(CritterRow row) {
        this.row = row;
    }
}
