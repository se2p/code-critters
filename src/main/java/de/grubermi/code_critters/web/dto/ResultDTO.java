package de.grubermi.code_critters.web.dto;

public class ResultDTO {

    private MineDTO[] mines;
    private int score;
    private int stars;
    private String cookie;
    private String level;

    public ResultDTO() {
    }

    public ResultDTO(MineDTO[] mines, int score, String cookie, String level, int stars) {
        this.mines = mines;
        this.score = score;
        this.cookie = cookie;
        this.level = level;
        this.stars = stars;
    }

    public MineDTO[] getMines() {
        return mines;
    }

    public void setMines(MineDTO[] mines) {
        this.mines = mines;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.cookie = cookie;
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
