package org.codecritters.code_critters.web.dto.usageStats;

import java.util.List;

/**
 * Object to build a return object for /statistics.
 * Holds the total number and list of critters.
 */
public class CrittersNumAndDetails {

    private int totalNumber;

    private List<CritterDetails> details;

    public CrittersNumAndDetails(int totalNumber, List<CritterDetails> details) {
        this.totalNumber = totalNumber;
        this.details = details;
    }

    public int getTotalNumber() {
        return totalNumber;
    }

    public void setTotalNumber(int totalNumber) {
        this.totalNumber = totalNumber;
    }

    public List<CritterDetails> getDetails() {
        return details;
    }

    public void setDetails(List<CritterDetails> details) {
        this.details = details;
    }
}

