package de.grubermi.code_critters.persistence.entities;

import de.grubermi.code_critters.web.enums.Language;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @NotEmpty
    @Column(unique = true)
    private String username;
    @NotEmpty
    @Column(unique = true)
    private String email;
    private String password;
    private String cookie;
    private String secret;
    private String salt;
    private boolean resetPassword;
    private boolean active;
    @Enumerated(EnumType.STRING)
    private Language language;

    public User(String username, String email, String password, String cookie, String secret, String salt, boolean resetPassword, boolean active, Language language) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.cookie = cookie;
        this.secret = secret;
        this.salt = salt;
        this.resetPassword = resetPassword;
        this.active = active;
        this.language = language;
    }

    public User() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.cookie = cookie;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public boolean getResetPassword() {
        return resetPassword;
    }

    public void setResetPassword(boolean resetPassword) {
        this.resetPassword = resetPassword;
    }

    public boolean getActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }
}
