package org.codecritters.code_critters.web.dto.usageStats;

import java.time.LocalDateTime;
import java.util.List;

/**
 * Object to build a return object for /statistics.
 * Holds information about a game.
 */
public class GameDetails {

    private String gameId;

    private String levelId;

    private int score;

    private LocalDateTime gameStart;

    private LocalDateTime gameEnd;

    private long duration;

    private boolean paused;

    private List<PauseDetails> pauses;

    public GameDetails(String gameId, String levelId, int score, LocalDateTime gameStart, LocalDateTime gameEnd, long duration, boolean paused, List<PauseDetails> pauses) {
        this.gameId = gameId;
        this.levelId = levelId;
        this.score = score;
        this.gameStart = gameStart;
        this.gameEnd = gameEnd;
        this.duration = duration;
        this.paused = paused;
        this.pauses = pauses;
    }

    public String getGameId() {
        return gameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public String getLevelId() {
        return levelId;
    }

    public void setLevelId(String levelId) {
        this.levelId = levelId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public LocalDateTime getGameStart() {
        return gameStart;
    }

    public void setGameStart(LocalDateTime gameStart) {
        this.gameStart = gameStart;
    }

    public LocalDateTime getGameEnd() {
        return gameEnd;
    }

    public void setGameEnd(LocalDateTime gameEnd) {
        this.gameEnd = gameEnd;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public boolean isPaused() {
        return paused;
    }

    public void setPaused(boolean paused) {
        this.paused = paused;
    }

    public List<PauseDetails> getPauses() {
        return pauses;
    }

    public void setPauses(List<PauseDetails> pauses) {
        this.pauses = pauses;
    }
}
