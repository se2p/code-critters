package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.IllegalActionException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.UserDTO;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class UserServiceTest {

    @InjectMocks
    private UserService userService;

    @Mock
    private UserRepositiory userRepositiory;

    @Mock
    private ResultRepository resultRepository;

    @Mock
    private MailService mailService;

    @Mock
    private PasswordService passwordService;

    private final UserDTO user1 = new UserDTO("user1", "user@user.com", "password", null);
    private final UserDTO user2 = new UserDTO("admin1", "admin@admin.de", "admin", Language.de);
    private final String url = "url";
    private final String cookie = "cookie";
    private final String secret = "secret";

    @Test
    public void registerUserDataNullTest() {
        UserDTO usernameNull = new UserDTO(null, "email", "password", null);
        UserDTO emailNull = new UserDTO("user", null, "password", null);
        UserDTO passwordNull = new UserDTO("user", "email", null, null);

        Exception noUsername = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(usernameNull, url)
        );
        Exception noEmail = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(emailNull, url)
        );
        Exception noPassword = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(passwordNull, url)
        );

        assertAll("These inputs are all null and should throw exceptions",
                () -> assertEquals("These fields cannot be empty", noUsername.getMessage()),
                () -> assertEquals("These fields cannot be empty", noEmail.getMessage()),
                () -> assertEquals("These fields cannot be empty", noPassword.getMessage())
        );
    }

    @Test
    public void registerUserEmptyStringTest() {
        UserDTO usernameEmpty = new UserDTO("   ", "email", "password", null);
        UserDTO emailEmpty = new UserDTO("user", "   ", "password", null);
        UserDTO passwordEmpty = new UserDTO("user", "email", "  ", null);

        Exception noUsername = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(usernameEmpty, url)
        );
        Exception noEmail = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(emailEmpty, url)
        );
        Exception noPassword = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(passwordEmpty, url)
        );

        assertAll("These inputs are all empty and should throw exceptions",
                () -> assertEquals("These fields cannot be empty", noUsername.getMessage()),
                () -> assertEquals("These fields cannot be empty", noEmail.getMessage()),
                () -> assertEquals("These fields cannot be empty", noPassword.getMessage())
        );
    }

    @Test
    public void registerUserInputTooLongTest() {
        UserDTO longUsername = new UserDTO("suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuper long username", "email", "password", null);
        UserDTO longEmail = new UserDTO("user", "suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuper long email", "password", null);
        UserDTO longPassword = new UserDTO("user", "email", "suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuper long password", null);

        Exception usernameTooLong = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(longUsername, url)
        );
        Exception emailTooLong = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(longEmail, url)
        );
        Exception passwordTooLong = assertThrows(IllegalActionException.class,
                () -> userService.registerUser(longPassword, url)
        );

        assertAll("These inputs should all be too long and throw exceptions",
                () -> assertEquals("The input has to be less than 50 characters!", usernameTooLong.getMessage()),
                () -> assertEquals("The input has to be less than 50 characters!", emailTooLong.getMessage()),
                () -> assertEquals("The input has to be less than 50 characters!", passwordTooLong.getMessage())
        );
    }

    @Test
    public void registerUserUsernameOrEmailExistsTest() {
        UserDTO usernameExists = new UserDTO("user1", "email1", "password1", null);
        UserDTO emailExists = new UserDTO("user2", "email2", "password2", null);

        given(userRepositiory.existsByUsername(usernameExists.getUsername())).willReturn(true);
        given(userRepositiory.existsByEmail(emailExists.getEmail())).willReturn(true);

        Exception foundUsername = assertThrows(AlreadyExistsException.class,
                () -> userService.registerUser(usernameExists, url)
        );
        Exception foundEmail = assertThrows(AlreadyExistsException.class,
                () -> userService.registerUser(emailExists, url)
        );

        assertAll("These inputs should throw AlreadyExistsExceptions",
                () -> assertEquals("User with this username already exists!", foundUsername.getMessage()),
                () -> assertEquals("User with this email already exists!", foundEmail.getMessage())
        );

        verify(userRepositiory, times(1)).existsByUsername(usernameExists.getUsername());
        verify(userRepositiory, times(1)).existsByUsername(emailExists.getUsername());
        verify(userRepositiory, times(1)).existsByEmail(emailExists.getEmail());
    }

    @Test
    public void registerUserTest() {
        given(userRepositiory.existsByUsername(anyString())).willReturn(false);
        given(userRepositiory.existsByEmail(anyString())).willReturn(false);
        given(passwordService.hashPassword(anyString(), any())).willReturn(new User());
        userService.registerUser(user1, url);
        userService.registerUser(user2, url);
        verify(userRepositiory, times(2)).save(any());
    }

    @Test
    public void loginUserTest() {
        given(userRepositiory.findByUsernameOrEmail(user1.getUsername(), user1.getEmail())).willReturn(new User());
        given(passwordService.verifyPassword(any(), any(), any())).willReturn(true);
        userService.loginUser(user1, cookie);
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void loginUserExceptionsTest() {
        given(userRepositiory.findByUsernameOrEmail(user1.getUsername(), user1.getEmail())).willReturn(new User());
        given(userRepositiory.findByUsernameOrEmail(user2.getUsername(), user2.getEmail())).willReturn(null);
        given(passwordService.verifyPassword(any(), any(), any())).willReturn(false);

        Exception verifyPasswordFalse = assertThrows(NotFoundException.class,
                () -> userService.loginUser(user1, cookie)
        );
        Exception userNull = assertThrows(NotFoundException.class,
                () -> userService.loginUser(user2, cookie)
        );

        assertAll("Both login attempts should throw exceptions",
                () -> assertEquals("Username or Password incorrect", verifyPasswordFalse.getMessage()),
                () -> assertEquals("Username or Password incorrect", userNull.getMessage())
        );
        verify(userRepositiory, times(2)).findByUsernameOrEmail(anyString(), anyString());
        verify(passwordService, times(1)).verifyPassword(any(), any(), any());
    }

    @Test
    public void forgotPasswordTest() {
        given(userRepositiory.findByUsernameAndEmail(user1.getUsername(), user1.getEmail())).willReturn(new User());
        given(userRepositiory.findByUsernameAndEmail(user2.getUsername(), user2.getEmail())).willReturn(null);
        Exception noUser = assertThrows(NotFoundException.class,
                () -> userService.forgotPassword(user2, url)
        );
        userService.forgotPassword(user1, url);
        assertEquals("This should get an exception message", "Username or Password incorrect", noUser.getMessage());
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void resetPasswordTest() {
        User user = new User();
        user.setResetPassword(true);
        given(userRepositiory.findBySecret(secret)).willReturn(user);
        given(passwordService.hashPassword(any(), any())).willReturn(user);
        Exception noUser = assertThrows(NotFoundException.class,
                () -> userService.resetPassword("no secret", user1)
        );
        userService.resetPassword(secret, user1);
        assertAll("resetPassword test",
                () -> assertEquals("Incorrect Secret", noUser.getMessage()),
                () -> assertFalse(user.getResetPassword())
        );
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void activateUserTest() {
        given(userRepositiory.findBySecret(secret)).willReturn(new User());
        given(userRepositiory.save(any())).willReturn(new User());
        assertAll(
                () -> assertTrue(userService.activateUser(secret)),
                () -> assertFalse(userService.activateUser("no secret"))
        );
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void getUserByCookieTest() {
        given(userRepositiory.findByCookieAndLastUsedAfter(anyString(), any())).willReturn(new User());
        assertNotNull(userService.getUserByCookie(cookie));
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void logoutUserTest() {
        given(userRepositiory.findByCookie(cookie)).willReturn(new User());
        userService.logoutUser(cookie);
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void deleteUserExceptionTest() {
        User lastAdmin = new User();
        List<User> users = new ArrayList<User>();
        users.add(lastAdmin);
        given(userRepositiory.findByCookie(cookie)).willReturn(lastAdmin);
        given(userRepositiory.findAllByRole(Role.admin)).willReturn(users);
        Exception exception = assertThrows(IllegalActionException.class,
                () -> userService.deleteUser(cookie)
        );
        assertEquals("Cannot delete last remaining admin", exception.getMessage());
    }

    @Test
    public void deleteUserTest() {
        given(userRepositiory.findByCookie(cookie)).willReturn(new User());
        given(userRepositiory.findAllByRole(Role.admin)).willReturn(new LinkedList<>());
        userService.deleteUser(cookie);
        verify(resultRepository, times(1)).deleteAllByUser(any());
        verify(userRepositiory, times(1)).delete(any());
    }

    @Test
    public void changeUserUsernameOrEmailWrongTest() {
        UserDTO dto1 = new UserDTO(null, "email", "oldPassword", "password", Language.en);
        UserDTO dto2 = new UserDTO("user", null, "oldPassword", "password", Language.en);
        UserDTO dto3 = new UserDTO("", "email", "oldPassword", "password", Language.de);
        UserDTO dto4 = new UserDTO("user", "", "oldPassword", "password", Language.de);
        Exception usernameNull = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto1, cookie, url)
        );
        Exception emailNull = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto2, cookie, url)
        );
        Exception usernameEmpty = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto3, cookie, url)
        );
        Exception emailEmpty = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto4, cookie, url)
        );
        assertAll("Should all contain the same message",
                () -> assertEquals("These fields cannot be empty", usernameNull.getMessage()),
                () -> assertEquals("These fields cannot be empty", emailNull.getMessage()),
                () -> assertEquals("These fields cannot be empty", usernameEmpty.getMessage()),
                () -> assertEquals("These fields cannot be empty", emailEmpty.getMessage())
        );
    }

    @Test
    public void changeUserLongUsernameOrEmailTest() {
        UserDTO dto1 = new UserDTO("suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuper long username", "email", "oldPassword", "password", Language.de);
        UserDTO dto2 = new UserDTO("user", "suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuper long email", "oldPassword", "password", Language.en);
        Exception longUsername = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto1, cookie, url)
        );
        Exception longEmail = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto2, cookie, url)
        );
        assertAll("Should all contain the same message",
                () -> assertEquals("The input has to be less than 50 characters!", longUsername.getMessage()),
                () -> assertEquals("The input has to be less than 50 characters!", longEmail.getMessage())
        );
    }

    @Test
    public void changeUserPasswordExceptionsTest() {
        UserDTO dto1 = new UserDTO("user", "email", "suuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuper long password");
        UserDTO dto2 = new UserDTO("user", "email", "");
        Exception longPassword = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto1, cookie, url)
        );
        Exception PasswordEmpty = assertThrows(IllegalActionException.class,
                () -> userService.changeUser(dto2, cookie, url)
        );
        assertAll("Should get two different messages",
                () -> assertEquals("The input has to be less than 50 characters!", longPassword.getMessage()),
                () -> assertEquals("These fields cannot be empty", PasswordEmpty.getMessage())
        );
    }

    @Test
    public void changeUserOldPasswordTest() {
        UserDTO dto = new UserDTO("user", "email", "oldPassword", "password", Language.en);
        given(userRepositiory.findByCookie(cookie)).willReturn(new User());
        given(passwordService.verifyPassword(anyString(), any(), any())).willReturn(true);
        given(passwordService.hashPassword(anyString(), any())).willReturn(new User());
        userService.changeUser(dto, cookie, url);
        verify(userRepositiory, times(2)).save(any());
    }

    @Test
    public void changeUserOldPasswordExceptionTest() {
        UserDTO dto = new UserDTO("user", "email", "oldPassword", "password", Language.en);
        given(userRepositiory.findByCookie(cookie)).willReturn(new User());
        given(passwordService.verifyPassword(anyString(), any(), any())).willReturn(false);
        Exception exception = assertThrows(NotFoundException.class,
                () -> userService.changeUser(dto, cookie, url)
        );
        assertEquals("Password incorrect", exception.getMessage());
    }

    @Test
    public void changeUserChangeUsernameTest() {
        given(userRepositiory.findByCookie(cookie)).willReturn(new User());
        given(userRepositiory.existsByUsername(user2.getUsername())).willReturn(true);
        Exception exception = assertThrows(AlreadyExistsException.class,
                () -> userService.changeUser(user2, cookie, url)
        );
        userService.changeUser(user1, cookie, url);
        assertEquals("User with this username already exists!", exception.getMessage());
        verify(userRepositiory, times(1)).save(any());
    }

    @Test
    public void changeUserChangeEmailTest() {
        given(userRepositiory.findByCookie(cookie)).willReturn(new User());
        given(userRepositiory.existsByEmail(user2.getEmail())).willReturn(true);
        Exception exception = assertThrows(AlreadyExistsException.class,
                () -> userService.changeUser(user2, cookie, url)
        );
        userService.changeUser(user1, cookie, url);
        assertEquals("User with this email already exists!", exception.getMessage());
        verify(userRepositiory, times(1)).save(any());
    }
}