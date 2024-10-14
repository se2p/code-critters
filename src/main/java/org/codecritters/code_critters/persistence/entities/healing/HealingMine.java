package org.codecritters.code_critters.persistence.entities.healing;

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

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDateTime;

/**
 * Represents an operation of a built portal/mine of a second stage game. The frontendId can be used to identify
 * all operations on the same portal. It has the same structure as the mines in the base games.
 */
@Entity
public class HealingMine {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "healing_game_id")
    private HealingGame healingGame;
    @Column(columnDefinition = "text")
    private String code;
    @Column(columnDefinition = "text")
    private String xml;

    private LocalDateTime creationStart;

    private LocalDateTime creationEnd;

    private int xPosition;

    private int yPosition;

    private boolean deleted;

    private LocalDateTime deletionDateTime;

    private boolean updated;

    // Assigned on the frontend to clearly identify a mine and all its operations
    private String frontendId;
    private int blockCount;

    public HealingMine() {
    }

    public HealingMine(String id, HealingGame healingGame, String code, String xml, LocalDateTime creationStart, LocalDateTime creationEnd, int xPosition, int yPosition, boolean deleted, LocalDateTime deletionDateTime, boolean updated, String frontendId, int blockCount) {
        this.id = id;
        this.healingGame = healingGame;
        this.code = code;
        this.xml = xml;
        this.creationStart = creationStart;
        this.creationEnd = creationEnd;
        this.xPosition = xPosition;
        this.yPosition = yPosition;
        this.deleted = deleted;
        this.deletionDateTime = deletionDateTime;
        this.updated = updated;
        this.frontendId = frontendId;
        this.blockCount = blockCount;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public HealingGame getHealingGame() {
        return healingGame;
    }

    public void setHealingGame(HealingGame healingGame) {
        this.healingGame = healingGame;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    public LocalDateTime getCreationStart() {
        return creationStart;
    }

    public void setCreationStart(LocalDateTime creationStart) {
        this.creationStart = creationStart;
    }

    public LocalDateTime getCreationEnd() {
        return creationEnd;
    }

    public void setCreationEnd(LocalDateTime creationEnd) {
        this.creationEnd = creationEnd;
    }

    public int getxPosition() {
        return xPosition;
    }

    public void setxPosition(int xPosition) {
        this.xPosition = xPosition;
    }

    public int getyPosition() {
        return yPosition;
    }

    public void setyPosition(int yPosition) {
        this.yPosition = yPosition;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public LocalDateTime getDeletionDateTime() {
        return deletionDateTime;
    }

    public void setDeletionDateTime(LocalDateTime deletionDateTime) {
        this.deletionDateTime = deletionDateTime;
    }

    public boolean isUpdated() {
        return updated;
    }

    public void setUpdated(boolean updated) {
        this.updated = updated;
    }

    public String getFrontendId() {
        return frontendId;
    }

    public void setFrontendId(String frontendId) {
        this.frontendId = frontendId;
    }

    public int getBlockCount() {
        return blockCount;
    }

    public void setBlockCount(int blockCount) {
        this.blockCount = blockCount;
    }
}
