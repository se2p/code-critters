package org.codecritters.code_critters.web.dto.usageStats;

import java.time.LocalDateTime;

/**
 * Object to build a return object for /statistics.
 * Holds the start and end time of a game pause.
 */
public class PauseDetails {

    private LocalDateTime pauseStart;

    private LocalDateTime pauseEnd;

    public PauseDetails(LocalDateTime pauseStart, LocalDateTime pauseEnd) {
        this.pauseStart = pauseStart;
        this.pauseEnd = pauseEnd;
    }

    public LocalDateTime getPauseStart() {
        return pauseStart;
    }

    public void setPauseStart(LocalDateTime pauseStart) {
        this.pauseStart = pauseStart;
    }

    public LocalDateTime getPauseEnd() {
        return pauseEnd;
    }

    public void setPauseEnd(LocalDateTime pauseEnd) {
        this.pauseEnd = pauseEnd;
    }
}
