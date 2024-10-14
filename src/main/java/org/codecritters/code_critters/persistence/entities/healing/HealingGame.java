package org.codecritters.code_critters.persistence.entities.healing;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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

import org.codecritters.code_critters.persistence.entities.PauseTime;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Represents a played game of a healing level. It holds the level, the user, and tracked game attributes such as
 * the start and end time, score and detected/missed mutants and collectors.
 */
@Entity
public class HealingGame {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    String id;
    @ManyToOne
    @JoinColumn(name = "level_id")
    private HealLevel level;

    // start time holds the time the game page has been opened
    private LocalDateTime start;
    // end time holds the time when test writing is over i.e. when critters are sent (in UTC)
    private LocalDateTime end;
    private int score;
    private int mutantsKilled;
    private int collectorsFinished;
    // holds the total game time (in ms) from opening the game page until the game is finished
    private double gameTime;

    @Column(name = "user_id")
    private String userID;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "Finished_Healthy_Collectors",
            joinColumns = { @JoinColumn(name = "healing_game_id") },
            inverseJoinColumns = { @JoinColumn(name = "collector_id") }
    )
    private List<HealingCollector> gameFinishedHealthyCollectorsList = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "Missed_Healthy_Collectors",
            joinColumns = { @JoinColumn(name = "healing_game_id") },
            inverseJoinColumns = { @JoinColumn(name = "collector_id") }
    )
    private List<HealingCollector> gameMissedHealthyCollectorsList = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "Detected_Mutants",
            joinColumns = { @JoinColumn(name = "healing_game_id") },
            inverseJoinColumns = { @JoinColumn(name = "collector_id") }
    )
    private List<GameHealingCollector> gameDetectedMutantsList = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "Missed_Mutants",
            joinColumns = { @JoinColumn(name = "healing_game_id") },
            inverseJoinColumns = { @JoinColumn(name = "collector_id") }
    )
    private List<HealingCollector> gameMissedMutantsList = new ArrayList<>();


    public HealingGame() {
    }


    public HealingGame(String id, HealLevel level, LocalDateTime start, LocalDateTime end, int score, int mutantsKilled, int collectorsFinished, double gameTime) {
        this.id = id;
        this.level = level;
        this.start = start;
        this.end = end;
        this.score = score;
        this.mutantsKilled = mutantsKilled;
        this.collectorsFinished = collectorsFinished;
        this.gameTime = gameTime;
    }

    public HealingGame(HealLevel level, LocalDateTime start) {
        this.level = level;
        this.start = start;
    }

    public HealingGame(HealLevel level, LocalDateTime start, String userID) {
        this.level = level;
        this.start = start;
        this.userID = userID;
    }

    public HealingGame(String id, HealLevel level, LocalDateTime start, LocalDateTime end, int score, int mutantsKilled, int collectorsFinished, double gameTime, String userID, List<HealingCollector> gameFinishedHealthyCollectorsList, List<HealingCollector> gameMissedHealthyCollectorsList, List<GameHealingCollector> gameDetectedMutantsList, List<HealingCollector> gameMissedMutantsList) {
        this.id = id;
        this.level = level;
        this.start = start;
        this.end = end;
        this.score = score;
        this.mutantsKilled = mutantsKilled;
        this.collectorsFinished = collectorsFinished;
        this.gameTime = gameTime;
        this.userID = userID;
        this.gameFinishedHealthyCollectorsList = gameFinishedHealthyCollectorsList;
        this.gameMissedHealthyCollectorsList = gameMissedHealthyCollectorsList;
        this.gameDetectedMutantsList = gameDetectedMutantsList;
        this.gameMissedMutantsList = gameMissedMutantsList;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public HealLevel getLevel() {
        return level;
    }

    public void setLevel(HealLevel level) {
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

    public int getCollectorsFinished() {
        return collectorsFinished;
    }

    public void setCollectorsFinished(int collectorsFinished) {
        this.collectorsFinished = collectorsFinished;
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

    public List<HealingCollector> getGameFinishedHealthyCollectorsList() {
        return gameFinishedHealthyCollectorsList;
    }

    public void setGameFinishedHealthyCollectorsList(List<HealingCollector> gameFinishedHealthyCollectorsList) {
        this.gameFinishedHealthyCollectorsList = gameFinishedHealthyCollectorsList;
    }

    public List<HealingCollector> getGameMissedHealthyCollectorsList() {
        return gameMissedHealthyCollectorsList;
    }

    public void setGameMissedHealthyCollectorsList(List<HealingCollector> gameMissedHealthyCollectorsList) {
        this.gameMissedHealthyCollectorsList = gameMissedHealthyCollectorsList;
    }

    public List<GameHealingCollector> getGameDetectedMutantsList() {
        return gameDetectedMutantsList;
    }

    public void setGameDetectedMutantsList(List<GameHealingCollector> gameDetectedMutantsList) {
        this.gameDetectedMutantsList = gameDetectedMutantsList;
    }

    public List<HealingCollector> getGameMissedMutantsList() {
        return gameMissedMutantsList;
    }

    public void setGameMissedMutantsList(List<HealingCollector> gameMissedMutantsList) {
        this.gameMissedMutantsList = gameMissedMutantsList;
    }
}
