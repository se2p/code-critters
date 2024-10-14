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

import org.codecritters.code_critters.persistence.entities.healing.Coordinate;
import org.codecritters.code_critters.web.enums.BerryType;
import java.util.List;
import java.util.Map;

/**
 * DTO to represent a Critter from a second stage healing level.
 */
public class HealingCollectorsDTO {

    private String id;
    private String init;
    private String xml;
    private boolean mutated;
    private List<Coordinate> pathList;
    private int firstFaultyRound;
    private Map<BerryType, String> codesPerBush;
    public HealingCollectorsDTO() {
    }

    public HealingCollectorsDTO(String id, String init, String xml, boolean mutated, List<Coordinate> pathList, int firstFaultyRound) {
        this.id = id;
        this.init = init;
        this.xml = xml;
        this.mutated = mutated;
        this.pathList = pathList;
        this.firstFaultyRound = firstFaultyRound;
    }

    public HealingCollectorsDTO(String id, String init, String xml, boolean mutated, List<Coordinate> pathList, int firstFaultyRound, Map<BerryType, String> codesPerBush) {
        this.id = id;
        this.init = init;
        this.xml = xml;
        this.mutated = mutated;
        this.pathList = pathList;
        this.firstFaultyRound = firstFaultyRound;
        this.codesPerBush = codesPerBush;
    }


    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }

    public String getId() {
        return id;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    public void setId(String id) {
        this.id = id;
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
