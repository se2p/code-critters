package org.codecritters.code_critters.web.dto;

public class HumanDTO {

    private String init;

    private String cut;


    public HumanDTO() {
    }

    public HumanDTO(String init, String cut, int count) {
        this.init = init;
        this.cut = cut;
    }

    public String getInit() {
        return init;
    }

    public void setInit(String init) {
        this.init = init;
    }

    public String getCut() {
        return cut;
    }

    public void setCut(String cut) {
        this.cut = cut;
    }
}
