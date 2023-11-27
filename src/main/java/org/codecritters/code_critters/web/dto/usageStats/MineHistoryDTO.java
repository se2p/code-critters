package org.codecritters.code_critters.web.dto.usageStats;

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

import java.util.List;

/**
 * Represents the return object of /statistics/mine. Contains all infos and operation history of
 * a mine from a game.
 */
public class MineHistoryDTO {

    /**
     * It is the gameId of the game in which this mine has been placed.
     */
    private String gameId;

    /**
     * Holds the x position of a mine.
     */
    private int xPosition;

    /**
     * Holds the y position of a mine.
     */
    private int yPosition;

    /**
     * States whether at those coordinates a mine has been placed.
     */
    private boolean minePlaced;

    /**
     * States whether the mine has been edited again after the first creation.
     */
    private boolean updated;

    /**
     * States whether the mine has been deleted.
     */
    private boolean deleted;

    /**
     * Holds a detailed list of the mine and its course and changes throughout the game.
     * Creation, Update and Deletion operations are listed in ascending order of starting times.
     * Each of them holds the start and end times of the update/creation and the xml and js code
     * of the resulting mine.
     */
    private List<MineOperation> mineOperationList;


    public MineHistoryDTO(String gameId, int xPosition, int yPosition, boolean minePlaced, boolean updated, boolean deleted,
                          List<MineOperation> mineOperationList) {
        this.gameId = gameId;
        this.xPosition = xPosition;
        this.yPosition = yPosition;
        this.minePlaced = minePlaced;
        this.updated = updated;
        this.deleted = deleted;
        this.mineOperationList = mineOperationList;
    }

    public MineHistoryDTO() {
    }

    public String getGameId() {
        return gameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
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

    public boolean isMinePlaced() {
        return minePlaced;
    }

    public void setMinePlaced(boolean minePlaced) {
        this.minePlaced = minePlaced;
    }

    public boolean isUpdated() {
        return updated;
    }

    public void setUpdated(boolean updated) {
        this.updated = updated;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public List<MineOperation> getMineHistoryList() {
        return mineOperationList;
    }

    public void setMineHistoryList(List<MineOperation> mineOperationList) {
        this.mineOperationList = mineOperationList;
    }
}
