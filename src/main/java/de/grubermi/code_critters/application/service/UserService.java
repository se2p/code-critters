package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.application.exception.AlreadyExistsException;
import de.grubermi.code_critters.application.exception.IncompleteDataException;
import de.grubermi.code_critters.application.exception.NotFoundException;
import de.grubermi.code_critters.persistence.entities.User;
import de.grubermi.code_critters.persistence.repository.UserRepositiory;
import de.grubermi.code_critters.web.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class UserService {

    private final UserRepositiory userRepositiory;
    private final MailService mailService;
    private final PasswordService passwordService;
    private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvw0123456789";

    @Autowired
    public UserService(UserRepositiory userRepositiory, MailService mailService, PasswordService passwordService) {
        this.userRepositiory = userRepositiory;
        this.mailService = mailService;
        this.passwordService = passwordService;
    }

    public void registerUser(UserDTO dto, String cookie, String url) {
        if (userRepositiory.existsByUsernameOrEmail(dto.getUsername(), dto.getEmail())) {
            throw new AlreadyExistsException("User with this username or email already exists!");
        }

        User user = new User();
        if (dto.getEmail() == null) {
            throw new IncompleteDataException("Email missing");
        }
        user.setEmail(dto.getEmail());

        if (dto.getUsername() == null) {
            throw new IncompleteDataException("Username missing");
        }
        user.setUsername(dto.getUsername());

        if (dto.getLanguage() == null) {
            throw new IncompleteDataException("Language missing");
        }
        user.setLanguage(dto.getLanguage());

        if (dto.getPassword() == null) {
            throw new IncompleteDataException("Password missing");
        }

        user = passwordService.hashPassword(dto.getPassword(), user);
        user.setCookie(cookie);
        user.setActive(false);
        user.setSecret(generateSecret());

        Map<String, String> mailTemplateData = new HashMap();

        String link = url + "/users/activate/" + user.getSecret();

        mailTemplateData.put("reciver", user.getEmail());
        mailTemplateData.put("subject", "welcome");
        mailTemplateData.put("user", user.getUsername());
        mailTemplateData.put("secret", link);
        mailTemplateData.put("baseURL", url);
        //TODO change language dynamically
        mailService.sendMessageFromTemplate("register", mailTemplateData, user.getLanguage());

        userRepositiory.save(user);
    }

    public UserDTO loginUser(UserDTO dto, String cookie) {
        User user = userRepositiory.findByUsernameOrEmail(dto.getUsername(), dto.getEmail());

        if (user != null) {

            if (passwordService.verifyPassword(dto.getPassword(), user.getPassword(), user.getSalt())) {
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
        User user = userRepositiory.findByUsernameAndEmail(dto.getUsername(), dto.getEmail());
        if (user != null) {
            user.setSecret(generateSecret());
            user.setResetPassword(true);
            userRepositiory.save(user);

            Map<String, String> mailTemplateData = new HashMap();

            String link = url + "/resetPassword?secret=" + user.getSecret();

            mailTemplateData.put("reciver", user.getEmail());
            mailTemplateData.put("subject", "reset_pw");
            mailTemplateData.put("user", user.getUsername());
            mailTemplateData.put("secret", link);
            mailTemplateData.put("baseURL", url);
            //TODO change language dynamically
            mailService.sendMessageFromTemplate("forgotPassword", mailTemplateData,user.getLanguage());
        } else {
            throw new NotFoundException("Username or Password incorrect", "invalid_username_or_password");
        }
    }

    public void resetPassword(String secret, UserDTO dto) {
        User user = userRepositiory.findBySecret(secret);
        if (user != null) {
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
        User user = userRepositiory.findByCookie(cookie);
        if (user == null) {
            throw new NotFoundException("No user with this cookie", "invalid_cookie");
        }
        return this.userToDTO(user);
    }
}
