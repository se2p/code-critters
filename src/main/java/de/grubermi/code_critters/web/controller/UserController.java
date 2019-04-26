package de.grubermi.code_critters.web.controller;

import de.grubermi.code_critters.application.service.UserService;
import de.grubermi.code_critters.web.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
     * @param cookie  contains the currently used cookie data
     * @param request Request containing the data for computing base URL
     * @throws MalformedURLException If the request URL is not well formatted
     */
    @PostMapping(path = "/register")
    public void registerUser(@RequestBody UserDTO dto, @CookieValue("id") String cookie, HttpServletRequest request) throws MalformedURLException {
        userService.registerUser(dto, cookie, this.getBaseURL(request));
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
    public Map<String, String> loginUser(@RequestBody UserDTO dto, @CookieValue("id") String cookie, HttpServletResponse httpServletResponse) {
        UserDTO user = userService.loginUser(dto, cookie);

        Map<String, String> data = new HashMap<>();

        if (user == null) {
            httpServletResponse.setStatus(404);
            data.put("error", "no_user");
        } else if (!user.getActive()) {
            httpServletResponse.setStatus(404);
            data.put("error", "activate_first");
        } else {
            data.put("username", user.getUsername());
            data.put("email", user.getEmail());
            data.put("role", "user");
        }

        return data;
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
    public Map<String, String> getMe(@CookieValue("id") String cookie) {
        UserDTO user = userService.getUserByCookie(cookie);

        Map<String, String> data = new HashMap<>();
        data.put("username", user.getUsername());
        data.put("email", user.getEmail());
        data.put("role", "user");

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
