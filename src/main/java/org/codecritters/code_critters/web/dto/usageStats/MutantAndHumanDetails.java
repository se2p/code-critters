package org.codecritters.code_critters.web.dto.usageStats;

/**
 * Object to build a return object for /statistics.
 * Holds the details of all killed and finished critters of a game.
 */
public class MutantAndHumanDetails {

    private CrittersNumAndDetails killed;

    private CrittersNumAndDetails finished;

    public MutantAndHumanDetails(CrittersNumAndDetails killed, CrittersNumAndDetails finished) {
        this.killed = killed;
        this.finished = finished;
    }

    public CrittersNumAndDetails getKilled() {
        return killed;
    }

    public void setKilled(CrittersNumAndDetails killed) {
        this.killed = killed;
    }

    public CrittersNumAndDetails getFinished() {
        return finished;
    }

    public void setFinished(CrittersNumAndDetails finished) {
        this.finished = finished;
    }
}
