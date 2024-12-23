package org.codecritters.code_critters.persistence.entities.hintSystem;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

/**
 * Represents the selection of possible answers in loop level hint mode.
 * It holds the hint and a list of strings as the possible answers.
 */
@Entity
public class AnswerOptionsList {

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    @ManyToOne
    @JoinColumn(name = "hint_id")
    private Hint hint;
    @ElementCollection
    private List<String> answerOptions;

    public AnswerOptionsList() {
    }

    public AnswerOptionsList(String id, Hint hint, List<String> answerOptions) {
        this.id = id;
        this.hint = hint;
        this.answerOptions = answerOptions;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Hint getHint() {
        return hint;
    }

    public void setHint(Hint hint) {
        this.hint = hint;
    }

    public List<String> getAnswerOptions() {
        return answerOptions;
    }

    public void setAnswerOptions(List<String> answerOptions) {
        this.answerOptions = answerOptions;
    }
}
