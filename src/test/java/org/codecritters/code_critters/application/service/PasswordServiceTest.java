package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;

import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(MockitoJUnitRunner.class)
public class PasswordServiceTest {

    @InjectMocks
    private PasswordService passwordService;

    private final User user1 = new User("admin1", "admin1@admin.de", "admin1", "cookie1", "secret1", "salt1", false, true, Language.de, Role.admin, new Date());
    private final User user2 = new User("admin2", "admin2@admin.com", "admin2", "cookie2", "secret2", "salt2", false, true, Language.en, Role.admin, new Date());

    @Test
    public void hashPasswordTest() {
        passwordService.hashPassword(user1.getPassword(), user1);
        Pbkdf2PasswordEncoder pbkdf2PasswordEncoder = new Pbkdf2PasswordEncoder(user1.getSalt());
        assertAll("Password should have been encoded and saved",
                () -> assertTrue(pbkdf2PasswordEncoder.matches("admin1", user1.getPassword())),
                () -> assertNotEquals("salt1", user1.getSalt())
        );
    }

    @Test
    public void verifyPassword() {
        passwordService.hashPassword(user2.getPassword(), user2);
        assertAll("Password should have been encoded, decoding should give the proper match",
                () -> assertTrue(passwordService.verifyPassword("admin2", user2.getPassword(), user2.getSalt())),
                () -> assertFalse(passwordService.verifyPassword("admin1", user2.getPassword(), user2.getSalt()))
        );
    }
}
