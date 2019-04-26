package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.persistence.entities.User;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.SecureRandom;

@Service
public class PasswordService {

    public User hashPassword(String password, User user) {
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);

        Pbkdf2PasswordEncoder pbkdf2PasswordEncoder = new Pbkdf2PasswordEncoder(salt.toString());
        password = pbkdf2PasswordEncoder.encode(password);

        user.setPassword(password);
        user.setSalt(salt.toString());
        return user;
    }

    boolean verifyPassword(String rawPassword, String encodedPassword, String salt) {
        Pbkdf2PasswordEncoder pbkdf2PasswordEncoder = new Pbkdf2PasswordEncoder(salt);
        return pbkdf2PasswordEncoder.matches(rawPassword, encodedPassword);
    }
}
