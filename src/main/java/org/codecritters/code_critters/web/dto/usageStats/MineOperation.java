package org.codecritters.code_critters.web.dto.usageStats;

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
