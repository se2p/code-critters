package org.codecritters.code_critters.spring.filter;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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


import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
@Order(Ordered.HIGHEST_PRECEDENCE)
public class TrailingSlashFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String fullURL = ServletUriComponentsBuilder
                .fromRequest(request)
                .build()
                .toString();
        String URI = request.getRequestURI();
        if (fullURL.endsWith("/") && !URI.equals("/")) {
            fullURL = fullURL.substring(0, fullURL.length() - 1);
            response.setStatus(HttpStatus.MOVED_PERMANENTLY.value());
            response.setHeader(HttpHeaders.LOCATION, fullURL);
        } else if(URI.equals("")){
            response.setStatus(HttpStatus.MOVED_PERMANENTLY.value());
            response.setHeader(HttpHeaders.LOCATION, fullURL + "/");
        } else {
            filterChain.doFilter(request, response);
        }
    }
}
