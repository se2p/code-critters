package de.grubermi.code_critters;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

/**
 * Einstiegspunkt in die Applikation
 */

//@PropertySource("file:./resources/application.properties")
@SpringBootApplication
public class Code_CrittersServiceApplication {

    /**
     * Startet die Application
     *
     * @param args  Benoetigte Argumente
     */
    public static void main(String[] args) {
        SpringApplication.run(Code_CrittersServiceApplication.class, args);
    }
}
