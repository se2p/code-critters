package org.codecritters.code_critters.spring.filter;

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

import org.codecritters.code_critters.spring.CustomAuthentication;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.util.WebUtils;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Component
public class CookieAuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (this.isAuthenticationRequired()) {
            CustomAuthentication auth = new CustomAuthentication();
            Cookie cookie = WebUtils.getCookie((HttpServletRequest) request, "id");
            auth.setCookie(cookie != null ? cookie.getValue() : null);
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
