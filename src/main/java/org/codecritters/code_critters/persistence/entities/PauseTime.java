package org.codecritters.code_critters.persistence.entities;

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

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class PauseTime {


    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;
    private LocalDateTime pauseStart;

    private LocalDateTime pauseEnd;

    public PauseTime() {
    }

    public PauseTime(Game game, LocalDateTime pauseStart, LocalDateTime pauseEnd) {
        this.game = game;
        this.pauseStart = pauseStart;
        this.pauseEnd = pauseEnd;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public LocalDateTime getPauseStart() {
        return pauseStart;
    }

    public void setPauseStart(LocalDateTime pauseStart) {
        this.pauseStart = pauseStart;
    }

    public LocalDateTime getPauseEnd() {
        return pauseEnd;
    }

    public void setPauseEnd(LocalDateTime pauseEnd) {
        this.pauseEnd = pauseEnd;
    }
}
