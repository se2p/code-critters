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

import java.util.List;

/**
 * Return type of /statistics/games. Holds the username and a list of all her/his games.
 */
public class GamesOfUserDTO {

    /**
     * Holds the username of the player of a game.
     */
    private String user;

    /**
     * Is a list of all games by this user, holding certain attributes of the
     * game like the score or number of killed mutants.
     */
    private List<GameMinimal> games;

    private List<GameMinimal> healingGames;

    public GamesOfUserDTO(String user, List<GameMinimal> games) {
        this.user = user;
        this.games = games;
    }

    public GamesOfUserDTO(String user, List<GameMinimal> games, List<GameMinimal> healingGames) {
        this.user = user;
        this.games = games;
        this.healingGames = healingGames;
    }

    public GamesOfUserDTO() {
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public List<GameMinimal> getGames() {
        return games;
    }

    public void setGames(List<GameMinimal> games) {
        this.games = games;
    }

    public List<GameMinimal> getHealingGames() {
        return healingGames;
    }

    public void setHealingGames(List<GameMinimal> healingGames) {
        this.healingGames = healingGames;
    }
}
