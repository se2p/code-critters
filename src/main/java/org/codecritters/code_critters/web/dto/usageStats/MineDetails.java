package org.codecritters.code_critters.web.dto.usageStats;

/**
 * Object to build a return object for /statistics.
 * Holds information of mines in a game.
 */
public class MineDetails {

    private String id;

    private String code;

    private int xPosition;

    private int yPosition;

    private boolean deleted;

    private boolean updated;

    public MineDetails(String id, String code, int xPosition, int yPosition, boolean deleted, boolean updated) {
        this.id = id;
        this.code = code;
        this.xPosition = xPosition;
        this.yPosition = yPosition;
        this.deleted = deleted;
        this.updated = updated;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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

    public boolean isUpdated() {
        return updated;
    }

    public void setUpdated(boolean updated) {
        this.updated = updated;
    }
}
