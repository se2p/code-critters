package org.codecritters.code_critters.web.dto.usageStats;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
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

import org.codecritters.code_critters.web.enums.Operation;

import java.time.LocalDateTime;

/**
 * Object to build a return object for /statistics.
 * Holds the information of one operation of a mine (e.g. the creation, an update,..).
 */
public class MineOperation {

    private Operation operation;

    private LocalDateTime start;

    private LocalDateTime end;

    private String xml;

    private String code;

    public MineOperation() {
    }

    public MineOperation(Operation operation, LocalDateTime start, LocalDateTime end, String xml, String code) {
        this.operation = operation;
        this.start = start;
        this.end = end;
        this.xml = xml;
        this.code = code;
    }

    public Operation getOperation() {
        return operation;
    }

    public void setOperation(Operation operation) {
        this.operation = operation;
    }

    public LocalDateTime getStart() {
        return start;
    }

    public void setStart(LocalDateTime start) {
        this.start = start;
    }

    public LocalDateTime getEnd() {
        return end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
