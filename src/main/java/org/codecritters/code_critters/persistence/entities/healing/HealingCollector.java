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

import org.codecritters.code_critters.web.enums.BerryType;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.List;
import java.util.Map;

/**
 * A Critter of the second stage healing levels. Holds the corresponding level, its codes for each berrybush, init and xml and
 * a boolean to indicate whether it has a mutated recipe or not.
 */
@Entity
public class HealingCollector {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "level_id")
    private HealLevel level;
    @Column(columnDefinition = "text")
    private String init;
    @Column(columnDefinition = "text")
    private String xml;
    private boolean mutated;

    @ElementCollection
    @CollectionTable(name = "path_list", joinColumns = @JoinColumn(name = "healing_collector_id"))
    private List<Coordinate> pathList;

    private int firstFaultyRound;

    @ElementCollection
    @CollectionTable(name = "codes_per_bush", joinColumns = @JoinColumn(name = "healing_collector_id"))
    @MapKeyColumn(name = "bush_type")
    @MapKeyEnumerated(EnumType.STRING)
    @Column(name = "code", columnDefinition = "text")
    private Map<BerryType, String> codesPerBush;

    public HealingCollector() {
    }

    public HealingCollector(String id, HealLevel level, String init, String xml, boolean mutated, List<Coordinate> pathList, int firstFaultyRound) {
        this.id = id;
        this.level = level;
        this.init = init;
        this.xml = xml;
        this.mutated = mutated;
        this.pathList = pathList;
        this.firstFaultyRound = firstFaultyRound;
    }

    public HealingCollector(HealLevel level, String init, String xml, boolean mutated, List<Coordinate> pathList) {
        this.level = level;
        this.init = init;
        this.xml = xml;
        this.mutated = mutated;
        this.pathList = pathList;
    }

    public HealingCollector(String id, HealLevel level, String init, String xml, boolean mutated, List<Coordinate> pathList, int firstFaultyRound, Map<BerryType, String> codesPerBush) {
        this.id = id;
        this.level = level;
        this.init = init;
        this.xml = xml;
        this.mutated = mutated;
        this.pathList = pathList;
        this.firstFaultyRound = firstFaultyRound;
        this.codesPerBush = codesPerBush;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public HealLevel getLevel() {
        return level;
    }

    public void setLevel(HealLevel level) {
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

    public boolean isMutated() {
        return mutated;
    }

    public void setMutated(boolean mutated) {
        this.mutated = mutated;
    }

    public List<Coordinate> getPathList() {
        return pathList;
    }

    public void setPathList(List<Coordinate> pathList) {
        this.pathList = pathList;
    }

    public int getFirstFaultyRound() {
        return firstFaultyRound;
    }

    public void setFirstFaultyRound(int firstFaultyRound) {
        this.firstFaultyRound = firstFaultyRound;
    }

    public Map<BerryType, String> getCodesPerBush() {
        return codesPerBush;
    }

    public void setCodesPerBush(Map<BerryType, String> codesPerBush) {
        this.codesPerBush = codesPerBush;
    }
}
