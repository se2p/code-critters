package de.grubermi.code_critters.spring;


import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * Configuration, welche Spring Security konfiguriert
 */
@EnableWebSecurity
@Configuration
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    /**
     * Konfiguriter die HttpSecurity
     *
     * @param http zu konfigurierende HttpSecurity
     * @throws Exception Falls ein Fehler auftritt
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors().and().authorizeRequests()
                .anyRequest().permitAll().and()
                .headers().frameOptions().sameOrigin().and().csrf().disable();
    }
}
