package org.codecritters.code_critters.web.controller;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
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

import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.application.service.UserService;
import org.codecritters.code_critters.web.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping(value = "/users")
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    /**
     * Registers a new user
     *
     * @param dto     Contains the users data
     * @param request Request containing the data for computing base URL
     * @throws MalformedURLException If the request URL is not well formatted
     */
    @PostMapping(path = "/register")
    public void registerUser(@RequestBody UserDTO dto, HttpServletRequest request) throws MalformedURLException {
        try {
            userService.registerUser(dto, this.getBaseURL(request));
        } catch (Exception ignored){

        }
    }

    /**
     * Login a user
     *
     * @param dto                 User data
     * @param cookie              current user cookie
     * @param httpServletResponse Response to the client
     * @return Map containing users data
     */
    @PostMapping(path = "/login")
    public Map<String, String> loginUser(@RequestBody UserDTO dto, @CookieValue("id") String cookie, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        UserDTO user = new UserDTO();
        Map<String, String> data = new HashMap<>();

        try {
            user = userService.loginUser(dto, cookie);
            if (!user.getActive()) {
                httpServletResponse.setStatus(404);
                data.put("error", "activate_first");
            } else {
                data.put("username", user.getUsername());
                data.put("email", user.getEmail());
                data.put("role", user.getRole().toString());
                data.put("language", user.getLanguage().toString());
                SecurityContextHolder.clearContext();
                HttpSession session = httpServletRequest.getSession(false);
                if (session != null) {
                    session.invalidate();
                }
            }
        } catch (Exception e){
            httpServletResponse.setStatus(404);
            data.put("error", e.getMessage());
        }

        return data;
    }

    @PostMapping(path = "/logout")
    @Secured("ROLE_USER")
    public void logoutUser(@CookieValue("id") String cookie, HttpServletRequest httpServletRequest) {
        userService.logoutUser(cookie);
        SecurityContextHolder.clearContext();
        HttpSession session = httpServletRequest.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }

    @DeleteMapping(path = "/delete")
    @Secured("ROLE_USER")
    public void deleteUser(@CookieValue("id") String cookie, HttpServletRequest httpServletRequest) {
        userService.deleteUser(cookie);
        SecurityContextHolder.clearContext();
        HttpSession session = httpServletRequest.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }

    @PostMapping(path = "/change")
    public void changeUser(@RequestBody UserDTO dto, @CookieValue("id") String cookie, HttpServletRequest request) throws MalformedURLException {
        userService.changeUser(dto, cookie, this.getBaseURL(request));
    }

    @PostMapping(path = "/forgot")
    public void forgotPassword(@RequestBody UserDTO dto, HttpServletRequest request) throws MalformedURLException {
        userService.forgotPassword(dto, this.getBaseURL(request));
    }

    /**
     * Activates a user
     *
     * @param secret              string, that referes to a user
     * @param httpServletResponse html response for rewrite URL
     * @param request             request data for computing URL
     * @throws MalformedURLException If the request URL is not well formated
     */
    @GetMapping(path = "/activate/{secret}")
    public void activateUser(@PathVariable(value = "secret") String secret, HttpServletResponse httpServletResponse, HttpServletRequest request) throws MalformedURLException {
        String url = getBaseURL(request) + "?activated=";
        url += userService.activateUser(secret);

        httpServletResponse.setHeader("Location", url);
        httpServletResponse.setStatus(302);
    }


    @PostMapping(path = "/reset/{secret}")
    public void resetPassword(@RequestBody UserDTO dto, @PathVariable(value = "secret") String secret) {
        userService.resetPassword(secret, dto);
    }

    /**
     * Return the user data to the application
     *
     * @param cookie the users cookie
     * @return Map containing the users Data
     */
    @GetMapping(path = "/me")
    @Secured("ROLE_USER")
    public Map<String, String> getMe(@CookieValue("id") String cookie) {
        UserDTO user = userService.getUserByCookie(cookie);
        if(user == null){
            throw new NotFoundException("Cookie invalid", "invalid_cookie");
        }
        Map<String, String> data = new HashMap<>();
        data.put("username", user.getUsername());
        data.put("email", user.getEmail());
        data.put("role", user.getRole().toString());
        data.put("language", user.getLanguage().toString());

        return data;
    }

    /**
     * Computes the requests base URL
     *
     * @param request Request containing the data
     * @return base URL computed from the request
     * @throws MalformedURLException If the request URL is not well formatted
     */
    private String getBaseURL(HttpServletRequest request) throws MalformedURLException {
        URL requestURL = new URL(request.getRequestURL().toString());
        String port = requestURL.getPort() == -1 ? "" : ":" + requestURL.getPort();
        return requestURL.getProtocol() + "://" + requestURL.getHost() + port;
    }
}
