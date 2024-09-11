package org.codecritters.code_critters.persistence.entities.hintSystem;

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

import org.codecritters.code_critters.persistence.entities.Game;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDateTime;

/**
 * During assistance mode, the user can click fields to retrieve hints about it. This entity
 * holds a field that is checked by a user. It holds the corresponding game, the coordinates of the field, and the timestamp.
 */
@Entity
public class CheckedField {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;
    private int xCoordinate;
    private int yCoordinate;
    private LocalDateTime timeChecked;

    public CheckedField() {
    }

    public CheckedField(String id, Game game, int xCoordinate, int yCoordinate, LocalDateTime timeChecked) {
        this.id = id;
        this.game = game;
        this.xCoordinate = xCoordinate;
        this.yCoordinate = yCoordinate;
        this.timeChecked = timeChecked;
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

    public int getxCoordinate() {
        return xCoordinate;
    }

    public void setxCoordinate(int xCoordinate) {
        this.xCoordinate = xCoordinate;
    }

    public int getyCoordinate() {
        return yCoordinate;
    }

    public void setyCoordinate(int yCoordinate) {
        this.yCoordinate = yCoordinate;
    }

    public LocalDateTime getTimeChecked() {
        return timeChecked;
    }

    public void setTimeChecked(LocalDateTime timeChecked) {
        this.timeChecked = timeChecked;
    }
}
