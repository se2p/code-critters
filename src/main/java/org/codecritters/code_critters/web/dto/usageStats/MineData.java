package org.codecritters.code_critters.web.dto.usageStats;

import java.util.List;

/**
 * Object to build a return object for /statistics.
 * Holds the number and list of mines in a game.
 */
public class MineData {

    private int numMines;

    private List<MineDetails> details;

    public MineData(int numMines, List<MineDetails> details) {
        this.numMines = numMines;
        this.details = details;
    }

    public int getNumMines() {
        return numMines;
    }

    public void setNumMines(int numMines) {
        this.numMines = numMines;
    }

    public List<MineDetails> getDetails() {
        return details;
    }

    public void setDetails(List<MineDetails> details) {
        this.details = details;
    }
}
