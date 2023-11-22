package org.codecritters.code_critters.web.dto.usageStats;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Michael Gruber
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

/**
 * Object to build a return object for /statistics.
 * Represents information about a game.
 */
public class GameMinimal {

    private String gameId;

    private String levelId;

    private int score;

    private int mutantsKilled;

    private int humansFinished;

    public GameMinimal(String gameId, String levelId, int score, int mutantsKilled, int humansFinished) {
        this.gameId = gameId;
        this.levelId = levelId;
        this.score = score;
        this.mutantsKilled = mutantsKilled;
        this.humansFinished = humansFinished;
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

    public int getMutantsKilled() {
        return mutantsKilled;
    }

    public void setMutantsKilled(int mutantsKilled) {
        this.mutantsKilled = mutantsKilled;
    }

    public int getHumansFinished() {
        return humansFinished;
    }

    public void setHumansFinished(int humansFinished) {
        this.humansFinished = humansFinished;
    }
}
