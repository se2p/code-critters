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
import org.codecritters.code_critters.persistence.entities.Mine;
import org.codecritters.code_critters.persistence.entities.healing.HealingGame;
import org.codecritters.code_critters.persistence.entities.healing.HealingMine;
import org.codecritters.code_critters.web.enums.HintSituation;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Represents usage information of the assistant in a certain game. Holds the corresponding game,
 * a list of steps that were visited during the assistant mode, the hint situation (e.g. first_portal, introduction),
 * the timestamp when the assistant mode was closed, and a list of portals that were built during assistance mode.
 */
@Entity
public class AssistantInfo {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;

    @ManyToOne
    @JoinColumn(name = "healing_game_id")
    private HealingGame healingGame;

    @OneToMany(mappedBy = "assistantInfo", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<VisitedStep> visitedSteps = new ArrayList<>();
    private HintSituation hintSituation;
    private LocalDateTime timeClosed;
    @OneToMany(mappedBy = "assistantInfo", cascade = CascadeType.ALL)
    private List<Mine> builtPortalsBaseGame = new ArrayList<>();

    @OneToMany(mappedBy = "assistantInfo", cascade = CascadeType.ALL)
    private List<HealingMine> builtPortalsHealGame = new ArrayList<>();

    public AssistantInfo() {
    }

    public AssistantInfo(String id, Game game, List<VisitedStep> visitedSteps, HintSituation hintSituation, LocalDateTime timeClosed, List<Mine> builtPortalsBaseGame) {
        this.id = id;
        this.game = game;
        this.visitedSteps = visitedSteps;
        this.hintSituation = hintSituation;
        this.timeClosed = timeClosed;
        this.builtPortalsBaseGame = builtPortalsBaseGame;
    }

    public AssistantInfo(Game game, List<VisitedStep> visitedSteps, HintSituation hintSituation, LocalDateTime timeClosed, List<Mine> builtPortalsBaseGame) {
        this.game = game;
        this.visitedSteps = visitedSteps;
        this.hintSituation = hintSituation;
        this.timeClosed = timeClosed;
        this.builtPortalsBaseGame = builtPortalsBaseGame;
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

    public List<VisitedStep> getVisitedSteps() {
        return visitedSteps;
    }

    public void setVisitedSteps(List<VisitedStep> visitedSteps) {
        this.visitedSteps = visitedSteps;
    }

    public void addVisitedStep(VisitedStep visitedStep) {
        visitedSteps.add(visitedStep);
        visitedStep.setAssistantInfo(this);
    }

    public void removeVisitedStep(VisitedStep visitedStep) {
        visitedSteps.remove(visitedStep);
        visitedStep.setAssistantInfo(this);
    }

    public HintSituation getHintSituation() {
        return hintSituation;
    }

    public void setHintSituation(HintSituation hintSituation) {
        this.hintSituation = hintSituation;
    }

    public LocalDateTime getTimeClosed() {
        return timeClosed;
    }

    public void setTimeClosed(LocalDateTime timeClosed) {
        this.timeClosed = timeClosed;
    }

    public List<Mine> getBuiltPortalsBaseGame() {
        return builtPortalsBaseGame;
    }

    public void setBuiltPortalsBaseGame(List<Mine> builtPortals) {
        this.builtPortalsBaseGame = builtPortals;
    }

    public void addBuiltPortal(Mine builtPortal) {
        this.builtPortalsBaseGame.add(builtPortal);
        builtPortal.setAssistantInfo(this);
    }

    public void addBuiltPortals(List<Mine> builtPortal) {
        builtPortalsBaseGame.addAll(builtPortal);
        builtPortalsBaseGame.forEach(portal -> {
            portal.setAssistantInfo(this);
        });
    }

    public HealingGame getHealingGame() {
        return healingGame;
    }

    public void setHealingGame(HealingGame healingGame) {
        this.healingGame = healingGame;
    }

    public List<HealingMine> getBuiltPortalsHealGame() {
        return builtPortalsHealGame;
    }

    public void setBuiltPortalsHealGame(List<HealingMine> builtPortalsHealGame) {
        this.builtPortalsHealGame = builtPortalsHealGame;
    }

    public void addBuiltPortalHealGame(HealingMine builtPortal) {
        this.builtPortalsHealGame.add(builtPortal);
        builtPortal.setAssistantInfo(this);
    }
}
