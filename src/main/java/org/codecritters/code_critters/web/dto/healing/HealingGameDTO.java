package org.codecritters.code_critters.web.dto.healing;

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

import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import java.time.LocalDateTime;
import java.util.List;

/**
 * DTO that represents a played game of a healing level. It holds the associated level, user, and tracked
 * game data such as the score, the start- and end time and lists with the collected/missed critters.
 */
public class HealingGameDTO {

    private String name;
    private String id;
    private HealLevel level;
    private LocalDateTime start;
    private LocalDateTime end;
    private int score;
    private int killedMutants;
    private int finishedCollectors;
    private double gameTime;
    private String userID;

    private List<KilledMutantDTO> killedMutantsList;

    // String list of ids
    private List<String> killedCollectorsList;

    private List<String> finishedMutantsList;

    private List<String> finishedCollectorsList;

    public HealingGameDTO(String name, String id, HealLevel level, LocalDateTime start, LocalDateTime end, int score, int killedMutants, int finishedCollectors, double gameTime, String userID, List<KilledMutantDTO> killedMutantsList, List<String> killedCollectorsList, List<String> finishedMutantsList, List<String> finishedCollectorsList) {
        this.name = name;
        this.id = id;
        this.level = level;
        this.start = start;
        this.end = end;
        this.score = score;
        this.killedMutants = killedMutants;
        this.finishedCollectors = finishedCollectors;
        this.gameTime = gameTime;
        this.userID = userID;
        this.killedMutantsList = killedMutantsList;
        this.killedCollectorsList = killedCollectorsList;
        this.finishedMutantsList = finishedMutantsList;
        this.finishedCollectorsList = finishedCollectorsList;
    }

    public HealingGameDTO() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public int getKilledMutants() {
        return killedMutants;
    }

    public void setKilledMutants(int killedMutants) {
        this.killedMutants = killedMutants;
    }

    public int getFinishedCollectors() {
        return finishedCollectors;
    }

    public void setFinishedCollectors(int finishedCollectors) {
        this.finishedCollectors = finishedCollectors;
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

    public List<KilledMutantDTO> getKilledMutantsList() {
        return killedMutantsList;
    }

    public void setKilledMutantsList(List<KilledMutantDTO> killedMutantsList) {
        this.killedMutantsList = killedMutantsList;
    }

    public List<String> getKilledCollectorsList() {
        return killedCollectorsList;
    }

    public void setKilledCollectorsList(List<String> killedCollectorsList) {
        this.killedCollectorsList = killedCollectorsList;
    }

    public List<String> getFinishedMutantsList() {
        return finishedMutantsList;
    }

    public void setFinishedMutantsList(List<String> finishedMutantsList) {
        this.finishedMutantsList = finishedMutantsList;
    }

    public List<String> getFinishedCollectorsList() {
        return finishedCollectorsList;
    }

    public void setFinishedCollectorsList(List<String> finishedCollectorsList) {
        this.finishedCollectorsList = finishedCollectorsList;
    }
}
