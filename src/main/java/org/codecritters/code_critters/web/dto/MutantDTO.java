package org.codecritters.code_critters.web.dto;

public class MutantDTO {

    private String code;
    private String init;

    public MutantDTO(String code, String init) {
        this.code = code;
        this.init = init;
    }

    public MutantDTO() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }
}
