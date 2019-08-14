package org.codecritters.code_critters.persistence.entities;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Score {

    @Id
    private String username;
    private int score;
    private int levels;
    private int position;

    public Score(String username, int score, int levels, int position) {
        this.username = username;
        this.score = score;
        this.levels = levels;
        this.position = position;
    }

    public Score() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
