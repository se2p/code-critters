package de.grubermi.code_critters.persistence.entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
//@Table(indexes = {@Index(columnList = "name", name = "level_name")})
public class Result {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    private int score;
    private int stars;
    private String cookie;

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "user.id")
    private User user;

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "level.id")
    private Level level;

    private Date updated;

    public Result() {
    }

    public Result(int score, int stars, String cookie, Level level, Date updated, User user) {
        this.score = score;
        this.stars = stars;
        this.cookie = cookie;
        this.level = level;
        this.updated = updated;
        this.user = user;
    }

    public Result(int score, String cookie, Level level, int stars) {
        this.score = score;
        this.cookie = cookie;
        this.level = level;
        this.stars = stars;
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

    public Level getLevel() {
        return level;
    }

    public void setLevel(Level level) {
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
