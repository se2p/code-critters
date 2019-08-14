package org.codecritters.code_critters.web.dto;

import java.util.List;

public class MutantsDTO {

    private String name;
    private List<MutantDTO> mutants;

    public MutantsDTO(String name, List<MutantDTO> mutants) {
        this.name = name;
        this.mutants = mutants;
    }

    public MutantsDTO() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<MutantDTO> getMutants() {
        return mutants;
    }

    public void setMutants(List<MutantDTO> mutants) {
        this.mutants = mutants;
    }
}
