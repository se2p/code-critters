package de.grubermi.code_critters.web.dto;

import de.grubermi.code_critters.web.enums.Language;
import de.grubermi.code_critters.web.enums.Role;

public class UserDTO {

    private String username;
    private String email;
    private String password;
    private String cookie;
    private boolean active;
    private Language language;
    private Role role;


    //needed for registration
    public UserDTO(String username, String email, String password, Language language) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.language = language;
    }

    //needed for login
    public UserDTO(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    //needed for password reset
    public UserDTO(String password) {
        this.password = password;
    }

    public UserDTO() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
