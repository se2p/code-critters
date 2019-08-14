package org.codecritters.code_critters.application.service;

import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.Mutant;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.MutantRepository;
import org.codecritters.code_critters.web.dto.MutantDTO;
import org.codecritters.code_critters.web.dto.MutantsDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MutantsService {

    private final LevelRepository levelRepository;
    private final MutantRepository mutantRepository;

    @Autowired
    public MutantsService(LevelRepository levelRepository, MutantRepository mutantRepository) {
        this.levelRepository = levelRepository;
        this.mutantRepository = mutantRepository;
    }

    public void createMutants(MutantsDTO dto) {
        Level level = levelRepository.findByName(dto.getName());
        for (MutantDTO critter : dto.getMutants()) {
            Mutant mutant = new Mutant(level, critter.getCode(), critter.getInit());
            mutantRepository.save(mutant);
        }
    }
}
