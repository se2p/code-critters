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

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/game").setViewName("forward:/game.html");
        registry.addViewController("/profile").setViewName("forward:/profile.html");
        registry.addViewController("/resetPassword").setViewName("forward:/resetPassword.html");
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
