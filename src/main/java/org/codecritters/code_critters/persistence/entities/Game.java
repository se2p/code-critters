package org.codecritters.code_critters.persistence.entities;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2021 Michael Gruber
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

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
public class Game {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "level_id")
    private Level level;
    private LocalDateTime start;
    private LocalDateTime end;
    private int score;
    private int mutantsKilled;
    private int humansFinished;
    private double gameTime;
    @Column(name = "user_id")
    private String userID;

    public Game() {}

    public Game(Level level, LocalDateTime start) {
        this.level = level;
        this.start = start;
    }

    public Game(Level level, LocalDateTime start, String userID) {
        this.level = level;
        this.start = start;
        this.userID = userID;
    }

    public Game(Level level, LocalDateTime start, LocalDateTime end) {
        this.level = level;
        this.start = start;
        this.end = end;
    }

    public Game(Level level, LocalDateTime start, LocalDateTime end, String userID) {
        this.level = level;
        this.start = start;
        this.end = end;
        this.userID = userID;
    }

    public Game(String id, Level level, LocalDateTime start, LocalDateTime end, int score, int mutantsKilled,
                int humansFinished, double gameTime) {
        this.id = id;
        this.level = level;
        this.start = start;
        this.end = end;
        this.score = score;
        this.mutantsKilled = mutantsKilled;
        this.humansFinished = humansFinished;
        this.gameTime = gameTime;
    }

    public Game(String id, Level level, LocalDateTime start, LocalDateTime end, int score, int mutantsKilled,
                int humansFinished, double gameTime, String userID) {
        this.id = id;
        this.level = level;
        this.start = start;
        this.end = end;
        this.score = score;
        this.mutantsKilled = mutantsKilled;
        this.humansFinished = humansFinished;
        this.gameTime = gameTime;
        this.userID = userID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Level getLevel() {
        return level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    public LocalDateTime getStart() {
        return start;
    }

    public void setStart(LocalDateTime start) {
        this.start = start;
    }

    public LocalDateTime getEnd() {
        return end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
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

    public double getGameTime() {
        return gameTime;
    }

    public void setGameTime(double gameTime) {
        this.gameTime = gameTime;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Game game = (Game) o;
        return id.equals(game.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
