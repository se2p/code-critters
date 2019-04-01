package de.grubermi.code_critters.spring;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/game").setViewName("forward:/game.html");
        registry.addViewController("/levels").setViewName("forward:/levels.html");
        registry.addViewController("/profile").setViewName("forward:/profile.html");
        registry.addViewController("/xml-generator").setViewName("forward:/generators/xml-generator/xml-generator.html");
        registry.addViewController("/level-generator").setViewName("forward:/generators/level-generator/level-generator.html");
        registry.addViewController("/customBlocks.js").setViewName("forward:/critter_components/critter-blockly/iFrame/customBlocks.js");
    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/xml-generator/**").addResourceLocations("classpath:/static/generators/xml-generator/");
        registry.addResourceHandler("/level-generator/**").addResourceLocations("classpath:/static/generators/level-generator/");
        registry.addResourceHandler("/lib/**").addResourceLocations("classpath:/static/node_modules/");
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/node_modules/");
        registry.addResourceHandler("/critter_components/**").addResourceLocations("classpath:/static/critter_components/");
        registry.addResourceHandler("/style/**").addResourceLocations("classpath:/static/style/");
        registry.addResourceHandler("/images/**").addResourceLocations("file:./images/");
        registry.addResourceHandler("/translation/**").addResourceLocations("classpath:/static/translation/");
        //registry.addResourceHandler("/images/**").addResourceLocations("classpath:/static/critter_components/critter-blockly/iFrame/images/");

   }
}