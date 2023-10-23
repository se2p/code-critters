package org.codecritters.code_critters.web.dto.usageStats;

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

    public GamesOfUserDTO(String user, List<GameMinimal> games) {
        this.user = user;
        this.games = games;
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

}
