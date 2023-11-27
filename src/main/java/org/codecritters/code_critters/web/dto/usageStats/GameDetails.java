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
