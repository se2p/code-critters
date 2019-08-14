package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Mutant;
import de.grubermi.code_critters.persistence.repository.LevelRepository;
import de.grubermi.code_critters.persistence.repository.MutantRepository;
import de.grubermi.code_critters.web.dto.MutantDTO;
import de.grubermi.code_critters.web.dto.MutantsDTO;
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
