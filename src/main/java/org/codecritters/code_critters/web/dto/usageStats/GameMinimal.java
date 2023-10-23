package org.codecritters.code_critters.web.dto.usageStats;

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
