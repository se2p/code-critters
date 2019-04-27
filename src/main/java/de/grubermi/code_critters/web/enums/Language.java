package de.grubermi.code_critters.web.enums;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public enum Language {
    de ("de-DE"),
    en ("en-US");

    private final String name;

    Language(String s){
        name = s;
    }

    public boolean equalsName(String otherName) {
        return name.equals(otherName);
    }

    public String toString() {
        return this.name;
    }

    @JsonCreator
    public static Language forValue(String value) {
        for (Language lang : Language.values()) {
            if(lang.toString().equals(value)){
                return lang;
            }
        }
        //default value en
        return Language.en;
    }

    @JsonValue
    public String toValue() {
        return this.toString();
    }
}
