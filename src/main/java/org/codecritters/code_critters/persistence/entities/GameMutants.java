package org.codecritters.code_critters.persistence.entities;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Michael Gruber
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
