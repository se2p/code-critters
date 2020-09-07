package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertAll;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class UserRepositoryTest {

    @Resource
    private UserRepositiory repository;

    private final User user1 = new User("admin1", "admin1@admin.de", "admin1", "cookie1", "secret1", "salt1", false, true, Language.de, Role.admin, new Date());
    private final User user2 = new User("admin2", "admin2@admin.com", "admin2", "cookie2", "secret2", "salt2", false, true, Language.en, Role.admin, new Date());
    private final User user3 = new User("user1", "user1@user.de", "user1", "cookie3", "secret3", "salt3", false, true, Language.de, Role.user, new Date());

    @Before
    public void setup() {
        repository.save(user1);
        repository.save(user2);
        repository.save(user3);
    }

    @Test
    public void existsByUsernameOrEmailTest() {
        assertAll("Test if existsByUsernameOrEmail works",
                () -> assertTrue(repository.existsByUsernameOrEmail(user1.getUsername(), user1.getEmail())),
                () -> assertTrue(repository.existsByUsernameOrEmail("user", user2.getEmail())),
                () -> assertTrue(repository.existsByUsernameOrEmail(user3.getUsername(), "some email")),
                () -> assertFalse(repository.existsByUsernameOrEmail("admin3", "admin3@admin.com"))
        );
    }

    @Test
    public void findByUsernameOrEmailTest() {
        User findUser = repository.findByUsernameOrEmail(user1.getUsername(), "admin");
        User noUser = repository.findByUsernameOrEmail("user3", "user");

        assertAll("Test if findByUsernameOrEmail works",
                () -> assertNull(noUser),
                () -> assertEquals(user1.getId(), findUser.getId())
        );
    }

    @Test
    public void findBySecretTest() {
        User findUser = repository.findBySecret(user1.getSecret());
        assertEquals(user1.getId(), findUser.getId());
    }

    @Test
    public void findByCookieTest() {
        User findUser = repository.findByCookie(user1.getCookie());
        assertEquals(user1.getId(), findUser.getId());
    }

    @Test
    public void findByCookieAndLastUsedAfterTest() throws ParseException {
        String target = "Sat Aug 29 16:15:50 CEST 2020";
        DateFormat df = new SimpleDateFormat("EEE MMM dd kk:mm:ss z yyyy", Locale.ENGLISH);
        Date result =  df.parse(target);
        User findUser = repository.findByCookieAndLastUsedAfter(user3.getCookie(), result);
        User noUser = repository.findByCookieAndLastUsedAfter(user1.getCookie(), new Date());
        assertAll("Test if findByCookieAndLastUsedAfter works",
                () -> assertNull(noUser),
                () -> assertEquals(findUser.getId(), user3.getId())
        );
    }

    @Test
    public void findByUsernameAndEmailTest() {
        User findUser = repository.findByUsernameAndEmail(user1.getUsername(), user1.getEmail());
        User noUser = repository.findByUsernameAndEmail(user1.getUsername(), "user@user.com");
        assertAll("Test if findByUsernameAndEmail works",
                () -> assertNull(repository.findByUsernameAndEmail(user1.getId(), "user@user.com")),
                () -> assertEquals(findUser.getId(), user1.getId())
        );
    }

    @Test
    public void findAllByRoleTest() {
        List<User> admins = repository.findAllByRole(Role.admin);
        List<User> users = repository.findAllByRole(Role.user);
        assertAll("Test if findAllByRole works",
                () -> assertEquals(2, admins.size()),
                () -> assertEquals(1, users.size())
        );
    }

    @Test
    public void existsByCookieTest() {
        assertAll("Test if existsByCookieTest works",
                () -> assertTrue(repository.existsByCookie(user1.getCookie())),
                () -> assertFalse(repository.existsByCookie("cookie4"))
        );
    }

    @Test
    public void existsByEmailTest() {
        assertAll("Test if existsByEmail works",
                () -> assertTrue(repository.existsByEmail(user2.getEmail())),
                () -> assertFalse(repository.existsByEmail("admin1@admin.com"))
        );
    }

    @Test
    public void existsByUsernameTest() {
        assertAll("Test if existsByUsername works",
                () -> assertTrue(repository.existsByUsername(user3.getUsername())),
                () -> assertFalse(repository.existsByUsername("user2"))
        );
    }
}