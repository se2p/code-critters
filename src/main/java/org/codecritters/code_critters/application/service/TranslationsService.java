package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.web.enums.Language;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Properties;

@Service
public class TranslationsService {

    private static final Logger logger = LogManager.getLogger(TranslationsService.class);


    public static String translate(Language language, String key){
        try {
            Resource resource = new ClassPathResource("/static/translation/" + language.toString() + ".properties");
            Properties properties = PropertiesLoaderUtils.loadProperties(resource);
            return  properties.getProperty(key, key);
        } catch (IOException e) {
            logger.warn("Translations for " + language.toString() + "not found");
            return key;
        }
    }
}
