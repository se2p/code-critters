package org.codecritters.code_critters.web.dto;

import java.time.LocalDateTime;

public class GamePauseTimeDTO {

    private String gameId;

    private LocalDateTime pauseStart;

    private LocalDateTime pauseEnd;

    public GamePauseTimeDTO() {
    }

    public GamePauseTimeDTO(String gameId, LocalDateTime pauseStart, LocalDateTime pauseEnd) {
        this.gameId = gameId;
        this.pauseStart = pauseStart;
        this.pauseEnd = pauseEnd;
    }

    public String getGameId() {
        return gameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
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


