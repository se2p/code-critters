package de.grubermi.code_critters.spring;

import de.grubermi.code_critters.application.service.UserService;
import de.grubermi.code_critters.web.dto.UserDTO;
import de.grubermi.code_critters.web.enums.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.Set;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

    UserService userService;

    @Autowired
    public CustomAuthenticationProvider(UserService userService) {
        this.userService = userService;
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        assert authentication instanceof CustomAuthentication : "Illegal Authentication type";
        //timeout check implied in getUserByCookie
        UserDTO dto = userService.getUserByCookie(((CustomAuthentication) authentication).getCookie());
        Set<GrantedAuthority> authorities = new HashSet<>();
        GrantedAuthority grantedAuthorityAnonymous = new SimpleGrantedAuthority("ROLE_ANONYMOUS");
        authorities.add(grantedAuthorityAnonymous);
        authentication.setAuthenticated(true);
        if (dto != null && dto.getRole() != null && dto.getActive()) {

            if (dto.getRole() == Role.user || dto.getRole() == Role.admin) {
                GrantedAuthority grantedAuthorityUser = new SimpleGrantedAuthority("ROLE_USER");
                authorities.add(grantedAuthorityUser);

            }
            if (dto.getRole() == Role.admin) {
                GrantedAuthority grantedAuthorityAdmin = new SimpleGrantedAuthority("ROLE_ADMIN");
                authorities.add(grantedAuthorityAdmin);
            }
        }
        ((CustomAuthentication) authentication).setAuthorities(authorities);
        return authentication;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return CustomAuthentication.class.isAssignableFrom(aClass);
    }
}
