package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.application.exception.AlreadyExistsException;
import de.grubermi.code_critters.application.exception.NotFoundException;
import de.grubermi.code_critters.persistence.entities.Level;
import de.grubermi.code_critters.persistence.entities.Mutant;
import de.grubermi.code_critters.persistence.repository.LevelRepository;
import de.grubermi.code_critters.persistence.repository.MutantRepository;
import de.grubermi.code_critters.web.dto.LevelDTO;
import de.grubermi.code_critters.web.dto.MutantDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.ConstraintViolationException;
import java.util.LinkedList;
import java.util.List;

@Service
public class LevelService {

    private final LevelRepository levelRepository;
    private final MutantRepository mutantRepository;

    @Autowired
    public LevelService(LevelRepository levelRepository, MutantRepository mutantRepository){
        this.levelRepository = levelRepository;
        this.mutantRepository = mutantRepository;
    }

    public void createLevel (LevelDTO dto) {
        try {
            levelRepository.save(createLevelDAO(dto));
        } catch (ConstraintViolationException e){
            throw new AlreadyExistsException("Tried to insert a level name that already exists", e);
        }
    }

    public LevelDTO getLevel(String name){
        Level level = levelRepository.findByName(name);
        if(level == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return createDto(level);
    }

    public String getTest(String name){
        String test = levelRepository.getTestByName(name);
        if(test == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return test;
    }

    public String getCUT(String name){
        String cut = levelRepository.getCUTByName(name);
        if(cut == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return cut;
    }

    public boolean existsLevel(String name){
        return levelRepository.findByName(name) != null;
    }

    private LevelDTO createDto(Level level) {
        LevelDTO dto = new LevelDTO();
        dto.setId(level.getId());
        dto.setName(level.getName());
        dto.setLevel(level.getLevel());
        dto.setCUT(level.getCUT());
        dto.setTest(level.getTest());
        dto.setSpawn(level.getSpawn());
        dto.setInit(level.getInit());
        dto.setXml(level.getXml());
        dto.setTower(level.getTower());
        dto.setNumberOfCritters(level.getNumberOfCritters());
        dto.setNumberOfHumans(level.getNumberOfHumans());

        return dto;
    }

    private Level createLevelDAO(LevelDTO dto) {
        Level level = new Level();
        if (dto.getId() != null) {
            level.setId(dto.getId());
        }
        if (dto.getName() != null) {
            level.setName(dto.getName());
        }
        if (dto.getLevel() != null) {
            level.setLevel(dto.getLevel());
        }
        if (dto.getCUT() != null) {
            level.setCUT(dto.getCUT());
        }
        if (dto.getInit() != null) {
            level.setInit(dto.getInit());
        }
        if (dto.getXml() != null) {
            level.setXml(dto.getXml());
        }
        if (dto.getTest() != null) {
            level.setTest(dto.getTest());
        }
        if (dto.getTower() != null) {
            level.setTower(dto.getTower());
        }
        if (dto.getSpawn() != null) {
            level.setSpawn(dto.getSpawn());
        }
        level.setNumberOfCritters(dto.getNumberOfCritters());
        level.setNumberOfHumans(dto.getNumberOfHumans());

        return level;
    }

    public List<String> getLevelNames() {
        return levelRepository.getLevelNames();

    }

    public List<MutantDTO> getMutants(String name) {
        String id = levelRepository.getIdByName(name);
        if(id == null) {
            throw new NotFoundException("No such level");
        }
        Level level = new Level(id);

        List<String[]> mutants = mutantRepository.getCodeByLevel(level);
        if(mutants == null || mutants.size() == 0) {
            throw new NotFoundException("No mutants could be found");
        }
        List<MutantDTO> mutantsDto = new LinkedList<MutantDTO>();
        for (Object[] mutant: mutants) {
            MutantDTO dto = new MutantDTO((String) mutant[0], (String) mutant[1]);
            mutantsDto.add(dto);
        }
        return mutantsDto;
    }

    public String getInit(String name) {
        String init = levelRepository.getInitByName(name);
        if(init == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return init;
    }
}
