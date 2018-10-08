package de.grubermi.code_critters.web.dto;

public class MineDTO {

    private int x;
    private int y;
    private String code;
    private String xml;

    public MineDTO() {
    }

    public MineDTO(int x, int y, String code, String xml) {
        this.x = x;
        this.y = y;
        this.code = code;
        this.xml = xml;
    }

    public MineDTO(int x, int y, String xml) {
        this.x = x;
        this.y = y;
        this.xml = xml;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }
}
