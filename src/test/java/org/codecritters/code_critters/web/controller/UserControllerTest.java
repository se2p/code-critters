package org.codecritters.code_critters.web.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.application.service.UserService;
import org.codecritters.code_critters.spring.configuration.SecurityTestConfig;
import org.codecritters.code_critters.web.dto.UserDTO;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.junit.Before;
import org.junit.Test;
import org.junit.jupiter.api.AfterEach;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockCookie;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.CoreMatchers.is;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@RunWith(SpringRunner.class)
@WebMvcTest(UserController.class)
@Import(SecurityTestConfig.class)
@ActiveProfiles("test")
public class UserControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private UserService userService;

    private final UserDTO user1 = new UserDTO("user1", "email1", "password1", Language.de);
    private final UserDTO user2 = new UserDTO("admin1", "email2", "password2", Language.en);
    private final MockCookie cookie = new MockCookie("id", "123");
    private final String TOKEN_ATTR_NAME = "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN";
    private final HttpSessionCsrfTokenRepository httpSessionCsrfTokenRepository = new HttpSessionCsrfTokenRepository();
    private final CsrfToken csrfToken = httpSessionCsrfTokenRepository.generateToken(new MockHttpServletRequest());

    @Before
    public void setup() {
        user1.setRole(Role.user);
        user2.setRole(Role.admin);
        user2.setActive(true);
    }

    @AfterEach
    public void resetService() {reset(userService);}

    @Test
    public void registerUserTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(user1);
        mvc.perform(post("/users/register")
                .content(user)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(userService, times(1)).registerUser(any(), any());
    }

    @Test
    public void loginUserActiveTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String admin = mapper.writeValueAsString(user2);
        given(userService.loginUser(any(), any())).willReturn(user2);
        mvc.perform(post("/users/login")
                .content(admin)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.role", is(user2.getRole().toString())))
                .andExpect(jsonPath("$.language", is(user2.getLanguage().toString())))
                .andExpect(jsonPath("$.email", is(user2.getEmail())))
                .andExpect(jsonPath("$.username", is(user2.getUsername())));
        verify(userService, times(1)).loginUser(any(), any());
    }

    @Test
    public void loginUserInactiveTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(user1);
        given(userService.loginUser(any(), any())).willReturn(user1);
        mvc.perform(post("/users/login")
                .content(user)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(jsonPath("$.error", is("activate_first")));
        verify(userService, times(1)).loginUser(any(), any());
    }

    @Test
    public void loginUserExceptionTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(user1);
        given(userService.loginUser(any(), any())).willThrow(NotFoundException.class);
        mvc.perform(post("/users/login")
                .content(user)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound());
        verify(userService, times(1)).loginUser(any(), any());
    }

    @Test
    public void logoutUserTest() throws Exception {
        mvc.perform(post("/users/logout")
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(userService, times(1)).logoutUser(cookie.getValue());
    }

    @Test
    public void deleteUserTest() throws Exception {
        mvc.perform(delete("/users/delete")
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(userService, times(1)).deleteUser(cookie.getValue());
    }

    @Test
    public void changeUserTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(user1);
        mvc.perform(post("/users/change")
                .content(user)
                .cookie(cookie)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(userService, times(1)).changeUser(any(), any(), any());
    }

    @Test
    public void forgotPasswordTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(user1);
        mvc.perform(post("/users/forgot")
                .content(user)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(userService, times(1)).forgotPassword(any(), any());
    }

    @Test
    public void activateUserTest() throws Exception {
        given(userService.activateUser(anyString())).willReturn(true);
        mvc.perform(get("/users/activate/secret")
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("http://localhost?activated=true"));
        verify(userService, times(1)).activateUser(anyString());
    }

    @Test
    public void resetPasswordTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(user1);
        mvc.perform(post("/users/reset/secret")
                .content(user)
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
        verify(userService, times(1)).resetPassword(anyString(), any());
    }

    @Test
    public void getMeTest() throws Exception{
        given(userService.getUserByCookie(cookie.getValue())).willReturn(user1);
        mvc.perform(get("/users/me")
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.role", is(user1.getRole().toString())))
                .andExpect(jsonPath("$.language", is(user1.getLanguage().toString())))
                .andExpect(jsonPath("$.email", is(user1.getEmail())))
                .andExpect(jsonPath("$.username", is(user1.getUsername())));
        verify(userService, times(1)).getUserByCookie(cookie.getValue());
    }

    @Test
    public void getMeExceptionTest() throws Exception{
        given(userService.getUserByCookie(cookie.getValue())).willReturn(null);
        mvc.perform(get("/users/me")
                .sessionAttr(TOKEN_ATTR_NAME, csrfToken)
                .param(csrfToken.getParameterName(), csrfToken.getToken())
                .cookie(cookie)
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound());
        verify(userService, times(1)).getUserByCookie(cookie.getValue());
    }
}
