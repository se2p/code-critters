package de.grubermi.code_critters.persistence.entities;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
//@Table(indexes = {@Index(columnList = "name", name = "level_name")})
public class Mine {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    private int x;
    private int y;
    @NotEmpty
    @Column(columnDefinition = "text")
    private String code;
    @NotEmpty
    @Column(columnDefinition = "text")
    private String xml;
    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "result.id")
    private Result result;


    public Mine() {
    }

    public Mine(int x, int y, String code, String xml, Result result) {
        this.x = x;
        this.y = y;
        this.code = code;
        this.xml = xml;
        this.result = result;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }
}
