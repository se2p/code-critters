package org.codecritters.code_critters.web.dto.usageStats;

/**
 * Represents the return type of a request to /statistics/game. It holds the user, game details like duration,
 * some mine data, details about the finished and killed humans and mutants in the game.
 */
public class GamingDetailDTO {

    /**
     * Is the username of the player.
     */
    private String user;

    /**
     * Holds the requested game and playing information like the score, game starting time,
     * duration and pauses.
     */
    private GameDetails game;

    /**
     * Holds all the mines that were placed during the game. It has the total number of mines,
     * and a list of details per mine, e.g. its code and its x- and y-position.
     */
    private MineData mineData;

    /**
     * This object holds details of all mutants in the game. E.g. the total number of killed and
     * finished mutants, together with a list of all corresponding mutants (represented by their code).
     */
    private MutantAndHumanDetails mutantDetails;

    /**
     * This object holds details of all humans in the game. E.g. the total number of killed and
     * finished humans, together with a list of all corresponding humans (represented by their code).
     */
    private MutantAndHumanDetails humanDetails;


    public GamingDetailDTO(String user, GameDetails game, MineData mineData, MutantAndHumanDetails mutantDetails, MutantAndHumanDetails humanDetails) {
        this.user = user;
        this.game = game;
        this.mineData = mineData;
        this.mutantDetails = mutantDetails;
        this.humanDetails = humanDetails;
    }

    public GamingDetailDTO() {
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public GameDetails getGame() {
        return game;
    }

    public void setGame(GameDetails game) {
        this.game = game;
    }

    public MineData getMineData() {
        return mineData;
    }

    public void setMineData(MineData mineData) {
        this.mineData = mineData;
    }

    public MutantAndHumanDetails getMutantDetails() {
        return mutantDetails;
    }

    public void setMutantDetails(MutantAndHumanDetails mutantDetails) {
        this.mutantDetails = mutantDetails;
    }

    public MutantAndHumanDetails getHumanDetails() {
        return humanDetails;
    }

    public void setHumanDetails(MutantAndHumanDetails humanDetails) {
        this.humanDetails = humanDetails;
    }
}
