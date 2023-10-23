package org.codecritters.code_critters.web.dto.usageStats;

/**
 * Object to build a return object for /statistics.
 * Holds all info about a critter (humans and mutants) and the "count" of how often this
 * type of critter is in the game.
 */
public class CritterDetails {

    private String code;

    private String init;

    private int count;

    public CritterDetails(String code, String init, int count) {
        this.code = code;
        this.init = init;
        this.count = count;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}

