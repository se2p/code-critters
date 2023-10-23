package org.codecritters.code_critters.persistence.entities;

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
