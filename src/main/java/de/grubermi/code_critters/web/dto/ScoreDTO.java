package de.grubermi.code_critters.web.dto;

public class ScoreDTO {

    private String user;
    private int score;
    private int levels;
    private int position;

    public ScoreDTO(String user, int score, int levels, int position) {
        this.user = user;
        this.score = score;
        this.levels = levels;
        this.position = position;
    }

    public ScoreDTO(String user, int score, int levels) {
        this.user = user;
        this.score = score;
        this.levels = levels;
    }

    public ScoreDTO() {
    }

    public ScoreDTO(String user) {
        this.user = user;
        this.score = 0;
        this.levels = 0;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getLevels() {
        return levels;
    }

    public void setLevels(int levels) {
        this.levels = levels;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }
}
