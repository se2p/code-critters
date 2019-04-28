package de.grubermi.code_critters.spring.filter;

import de.grubermi.code_critters.spring.CustomAuthentication;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.util.WebUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Objects;

@Component
public class CookieAuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (this.isAuthenticationRequired()) {
            CustomAuthentication auth = new CustomAuthentication();
            auth.setCookie(Objects.requireNonNull(WebUtils.getCookie((HttpServletRequest) request, "id")).getValue());
            SecurityContextHolder.getContext().setAuthentication(auth);
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }

    private boolean isAuthenticationRequired() {
        // apparently filters have to check this themselves.  So make sure they have a proper AuthenticatedAccount in their session.
        Authentication existingAuth = SecurityContextHolder.getContext().getAuthentication();
        if ((existingAuth == null) || !existingAuth.isAuthenticated()) {
            return true;
        }

        return !(existingAuth instanceof CustomAuthentication);
    }
}
