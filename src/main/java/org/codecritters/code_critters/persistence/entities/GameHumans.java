package org.codecritters.code_critters.persistence.entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Represents all humans of a game. The killed flag indicates whether the human has been
 * killed or has finished the game. The count attribute holds the number of killed/finished
 * humans with the same init and cut.
 */
@Entity
public class GameHumans {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;

    private String init;

    private String cut;

    private int count;

    private boolean killed;

    public GameHumans() {
    }

    public GameHumans(Game game, String init, String cut, int count, boolean killed) {
        this.game = game;
        this.init = init;
        this.cut = cut;
        this.count = count;
        this.killed = killed;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }

    public String getCut() {
        return cut;
    }

    public void setCut(String cut) {
        this.cut = cut;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public boolean isKilled() {
        return killed;
    }

    public void setKilled(boolean killed) {
        this.killed = killed;
    }
}
