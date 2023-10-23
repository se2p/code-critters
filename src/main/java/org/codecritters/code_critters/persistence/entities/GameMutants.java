package org.codecritters.code_critters.persistence.entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Represents all mutants (their ids as reference to the mutants table) of a game.
 * The killed flag indicates whether the mutant has been killed or has finished the game.
 * The count attribute holds the number of killed/finished mutants of the same type/id.
 */
@Entity
public class GameMutants {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;

    @ManyToOne
    @JoinColumn(name = "mutant_id")
    private Mutant mutant;

    private int count;

    private boolean killed;

    public GameMutants() {
    }

    public GameMutants(Game game, Mutant mutant, int count, boolean killed) {
        this.game = game;
        this.mutant = mutant;
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

    public Mutant getMutant() {
        return mutant;
    }

    public void setMutant(Mutant mutant) {
        this.mutant = mutant;
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
