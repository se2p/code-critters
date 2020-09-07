package org.codecritters.code_critters.spring.configuration;

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


import org.codecritters.code_critters.spring.CustomAuthenticationProvider;
import org.codecritters.code_critters.spring.filter.CookieAuthFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * Configuration, welche Spring Security konfiguriert
 */
@EnableWebSecurity
@Configuration
@EnableGlobalMethodSecurity(securedEnabled = true)
@Profile("!test")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    CookieAuthFilter cookieAuthFilter;
    CustomAuthenticationProvider authenticationProvider;

    @Autowired
    public SecurityConfig(CookieAuthFilter cookieAuthFilter, CustomAuthenticationProvider authenticationProvider) {
        this.cookieAuthFilter = cookieAuthFilter;
        this.authenticationProvider = authenticationProvider;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider);
    }

    @Bean
    public FilterRegistrationBean filterRegistrationBean() {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(cookieAuthFilter);
        registrationBean.setEnabled(false);
        return registrationBean;
    }

    /**
     * Konfiguriter die HttpSecurity
     *
     * @param http zu konfigurierende HttpSecurity
     * @throws Exception Falls ein Fehler auftritt
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors()
                .and()
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/level-generator", "/xml-generator").hasRole("ADMIN")
                .antMatchers("/profile").hasRole("USER")
                .anyRequest().permitAll()
                .and()
                .headers().frameOptions().sameOrigin()
                .and()
                .addFilterBefore(cookieAuthFilter, UsernamePasswordAuthenticationFilter.class)
                .authenticationProvider(authenticationProvider);
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring()
                .antMatchers("/critter_components/**")
                .antMatchers("/lib/**")
                .antMatchers("/static/**")
                .antMatchers("/style/**")
                .antMatchers("/translation/**")
                .antMatchers("/favicon.ico")
                .antMatchers("/game")
                .antMatchers("/");
    }
}
