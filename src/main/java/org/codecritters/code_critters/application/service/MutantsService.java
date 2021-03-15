package org.codecritters.code_critters.application.service;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */

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
            Mutant mutant = new Mutant(level, critter.getCode(), critter.getInit(), critter.getXml());
            mutantRepository.save(mutant);
        }
    }

    public void updateMutants(MutantsDTO dto) {
        Level level = levelRepository.findByName(dto.getName());
        for (MutantDTO critter : dto.getMutants()) {
            System.out.println(critter.getCode());
            Mutant mutant = new Mutant(critter.getId(), level, critter.getCode(), critter.getInit(), critter.getXml());
            mutantRepository.save(mutant);
        }
    }
}
