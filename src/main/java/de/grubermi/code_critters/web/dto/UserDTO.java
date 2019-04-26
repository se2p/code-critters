package de.grubermi.code_critters.web.dto;

import com.sun.org.apache.xpath.internal.operations.Bool;

public class UserDTO {

    private String username;
    private String email;
    private String password;
    private String cookie;
    private Boolean active;

    public UserDTO(String username, String email, String password, String cookie, Boolean active) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.cookie = cookie;
        this.active = active;
    }

    public UserDTO(String username, String email, String password, String cookie) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.cookie = cookie;
    }

    public UserDTO(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

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

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }
}
