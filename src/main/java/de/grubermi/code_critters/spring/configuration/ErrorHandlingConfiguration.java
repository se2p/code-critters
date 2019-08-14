package de.grubermi.code_critters.spring.configuration;

import de.grubermi.code_critters.web.controller.CustomErrorController;
import org.springframework.boot.autoconfigure.AutoConfigureBefore;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorViewResolver;
import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
@AutoConfigureBefore({ErrorMvcAutoConfiguration.class})
public class ErrorHandlingConfiguration {

    @Bean
    @ConditionalOnMissingBean(CustomErrorController.class)
    public CustomErrorController customErrorController(ErrorAttributes errorAttributes,
                                                       ServerProperties serverProperties,
                                                       List<ErrorViewResolver> errorViewResolvers) {

        return new CustomErrorController(errorAttributes, serverProperties.getError(), errorViewResolvers);
    }
}
