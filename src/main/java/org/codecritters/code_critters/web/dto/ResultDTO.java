package org.codecritters.code_critters.web.dto;

public class ResultDTO {

    private int score;
    private int stars;
    private String level;

    public ResultDTO() {
    }

    public ResultDTO(int score, String level, int stars) {
        this.score = score;
        this.level = level;
        this.stars = stars;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public int getStars() {
        return this.stars;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }
}
