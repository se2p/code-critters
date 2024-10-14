package org.codecritters.code_critters.persistence.entities.healing;

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

import org.codecritters.code_critters.persistence.entities.User;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * Stores results for the healing levels. It holds the user, the score and which level.
 */
@Entity
public class HealResult {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    private int score;
    private int stars;
    private String cookie;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "level_id")
    private HealLevel level;

    private Date updated;

    public HealResult() {
    }

    public HealResult(int score, int stars, String cookie, HealLevel level, Date updated, User user) {
        this.score = score;
        this.stars = stars;
        this.cookie = cookie;
        this.level = level;
        this.updated = updated;
        this.user = user;
    }

    public HealResult(int score, String cookie, HealLevel level, int stars, User user) {
        this.score = score;
        this.cookie = cookie;
        this.level = level;
        this.stars = stars;
        this.user = user;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.cookie = cookie;
    }

    public HealLevel getLevel() {
        return level;
    }

    public void setLevel(HealLevel level) {
        this.level = level;
    }

    public int getStars() {
        return stars;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @PrePersist
    protected void onCreate() {
        updated = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        updated = new Date();
    }
}
