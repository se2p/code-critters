package org.codecritters.code_critters.application.service;

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

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.IllegalActionException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.UserDTO;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserService {

    private final UserRepositiory userRepositiory;
    private final ResultRepository resultRepository;
    private final MailService mailService;
    private final PasswordService passwordService;

    private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvw0123456789";

    @Value("${spring.session.timeout}")
    private int timeout;

    @Autowired
    public UserService(UserRepositiory userRepositiory, MailService mailService, PasswordService passwordService, ResultRepository resultRepository) {
        this.userRepositiory = userRepositiory;
        this.mailService = mailService;
        this.passwordService = passwordService;
        this.resultRepository = resultRepository;
    }

    public void registerUser(UserDTO dto, String url) {
        if(dto.getUsername() == null || dto.getEmail() == null || dto.getPassword() == null) {
            throw new IllegalActionException("These fields cannot be empty", "fill_fields");
        }

        if (dto.getUsername().trim().equals("") || dto.getEmail().trim().equals("") || dto.getPassword().trim().equals("")) {
            throw new IllegalActionException("These fields cannot be empty", "fill_fields");
        }

        if ((dto.getUsername().length() > 50) || (dto.getEmail().length() > 50) || (dto.getPassword().length() > 50)) {
            throw new IllegalActionException("The input has to be less than 50 characters!", "long_data");
        }

        if (userRepositiory.existsByUsername(dto.getUsername())) {
            throw new AlreadyExistsException("User with this username already exists!", "username_exists");
        }

        if(userRepositiory.existsByEmail(dto.getEmail())) {
            throw new AlreadyExistsException("User with this email already exists!", "email_exists");
        }

        User user = new User();
        user.setUsername(dto.getUsername());
        user.setEmail(dto.getEmail());
        if (dto.getLanguage() == null) {
            user.setLanguage(Language.en);
        }
        user.setLanguage(dto.getLanguage());
        user = passwordService.hashPassword(dto.getPassword(), user);
        user.setRole(Role.user);
        user.setActive(false);
        user.setSecret(generateSecret());

        Map<String, String> mailTemplateData = new HashMap();

        String link = url + "/users/activate/" + user.getSecret();

        mailTemplateData.put("receiver", user.getEmail());
        mailTemplateData.put("subject", "welcome");
        mailTemplateData.put("user", user.getUsername());
        mailTemplateData.put("secret", link);
        mailTemplateData.put("baseURL", url);
        mailService.sendMessageFromTemplate("register", mailTemplateData, user.getLanguage());

        userRepositiory.save(user);
    }

    public UserDTO loginUser(UserDTO dto, String cookie) {
        User user = userRepositiory.findByUsernameOrEmail(dto.getUsername(), dto.getEmail());

        if (user != null) {

            if ((dto.getPassword() != null) && (passwordService.verifyPassword(dto.getPassword(), user.getPassword(), user.getSalt()))) {
                user.setCookie(cookie);
                userRepositiory.save(user);
                return userToDTO(user);
            } else {
                throw new NotFoundException("Username or Password incorrect", "invalid_username_or_password");
            }
        }
        throw new NotFoundException("Username or Password incorrect", "invalid_username_or_password");
    }

    public void forgotPassword(UserDTO dto, String url) {
        User user = userRepositiory.findByUsernameOrEmail(dto.getUsername(), dto.getEmail());
        if (user != null) {
            user.setSecret(generateSecret());
            user.setResetPassword(true);
            userRepositiory.save(user);

            Map<String, String> mailTemplateData = new HashMap();

            String link = url + "/resetPassword?secret=" + user.getSecret();

            mailTemplateData.put("receiver", user.getEmail());
            mailTemplateData.put("subject", "reset_pw");
            mailTemplateData.put("user", user.getUsername());
            mailTemplateData.put("secret", link);
            mailTemplateData.put("baseURL", url);
            mailService.sendMessageFromTemplate("forgotPassword", mailTemplateData, user.getLanguage());
        } else {
            throw new NotFoundException("Username or Password incorrect", "invalid_username_or_password");
        }
    }

    public void resetPassword(String secret, UserDTO dto) {
        User user = userRepositiory.findBySecret(secret);
        if (user != null && user.getResetPassword()) {
            user.setSecret(null);
            user.setResetPassword(false);

            user = passwordService.hashPassword(dto.getPassword(), user);
            userRepositiory.save(user);
        } else {
            throw new NotFoundException("Incorrect Secret", "incorrect_secret");
        }
    }

    public boolean activateUser(String secret) {
        User user = userRepositiory.findBySecret(secret);
        if (user != null) {
            user.setSecret(null);
            user.setActive(true);

            return userRepositiory.save(user) != null;
        }
        return false;
    }

    private UserDTO userToDTO(User user) {
        UserDTO dto = new UserDTO();
        dto.setUsername(user.getUsername());
        dto.setEmail(user.getEmail());
        dto.setActive(user.getActive());
        dto.setLanguage(user.getLanguage());
        dto.setRole(user.getRole());

        return dto;
    }

    private String generateSecret() {
        int count = 42;
        StringBuilder builder = new StringBuilder();
        while (count-- != 0) {
            int character = (int) (Math.random() * ALPHA_NUMERIC_STRING.length());
            builder.append(ALPHA_NUMERIC_STRING.charAt(character));
        }
        return builder.toString();
    }

    public UserDTO getUserByCookie(String cookie) {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MINUTE, -timeout);
        Date date = cal.getTime();
        return getUserByCookieAndDate(cookie, date);
    }

    public UserDTO getUserByCookieAndDate(String cookie, Date date) {
        User user = userRepositiory.findByCookieAndLastUsedAfter(cookie, date);
        if (user != null) {
            userRepositiory.save(user);
            return userToDTO(user);
        }
        return null;
    }

    public void logoutUser(String cookie) {
        User user = userRepositiory.findByCookie(cookie);
        if (user != null) {
            user.setCookie(null);
            userRepositiory.save(user);
        }
    }

    public void deleteUser(String cookie) {
        User user = userRepositiory.findByCookie(cookie);

        List<User> users = userRepositiory.findAllByRole(Role.admin);
        if (users.size() == 1 && users.contains(user)) {
            throw new IllegalActionException("Cannot delete last remaining admin", "delete_last_admin");
        }
        if (user != null) {
            resultRepository.deleteAllByUser(user);
            userRepositiory.delete(user);
        }
    }

    public void changeUser(UserDTO dto, String cookie, String url) {
        User user = userRepositiory.findByCookie(cookie);

        if(dto.getUsername() == null || dto.getEmail() == null || dto.getUsername().trim().equals("") || dto.getEmail().trim().equals("")) {
            throw new IllegalActionException("These fields cannot be empty", "fill_fields");
        }

        if ((dto.getUsername().length() > 50) || (dto.getEmail().length() > 50)) {
            throw new IllegalActionException("The input has to be less than 50 characters!", "long_data");
        }

        if (dto.getPassword() != null) {
            if (dto.getPassword().length() > 50) {
                throw new IllegalActionException("The input has to be less than 50 characters!", "long_data");
            }
            if (dto.getPassword().trim().equals("")) {
                throw new IllegalActionException("These fields cannot be empty", "fill_fields");
            }
        }

        if(dto.getOldPassword() != null && !dto.getOldPassword().trim().equals("")){
            if(passwordService.verifyPassword(dto.getOldPassword(), user.getPassword(), user.getSalt())) {
                user = passwordService.hashPassword(dto.getOldPassword(), user);
                userRepositiory.save(user);
            } else {
                throw new NotFoundException("Password incorrect", "invalid_password");
            }
        }

        if(!dto.getUsername().equals(user.getUsername())){
            if(!userRepositiory.existsByUsername(dto.getUsername())) {
                user.setUsername(dto.getUsername());
            } else {
                throw new AlreadyExistsException("User with this username already exists!", "username_exists");
            }
        }

        if(!dto.getEmail().equals(user.getEmail())){
            if(!userRepositiory.existsByEmail(dto.getEmail())) {
                user.setEmail(dto.getEmail());
                user.setActive(false);
                user.setSecret(generateSecret());

                Map<String, String> mailTemplateData = new HashMap();

                String link = url + "/users/activate/" + user.getSecret();

                mailTemplateData.put("receiver", user.getEmail());
                mailTemplateData.put("subject", "Confirm Email");
                mailTemplateData.put("user", user.getUsername());
                mailTemplateData.put("secret", link);
                mailTemplateData.put("baseURL", url);
                mailService.sendMessageFromTemplate("confirmEmail", mailTemplateData, user.getLanguage());
            } else {
                throw new AlreadyExistsException("User with this email already exists!", "email_exists");
            }
        }

        userRepositiory.save(user);
    }
}
