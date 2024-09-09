package org.codecritters.code_critters.application.service;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
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

import org.codecritters.code_critters.application.exception.AlreadyExistsException;
import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.customDataTypes.LevelResultType;
import org.codecritters.code_critters.persistence.customDataTypes.SortByLevelName;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.entities.hintSystem.Hint;
import org.codecritters.code_critters.persistence.entities.hintSystem.PortalSolutionHint;
import org.codecritters.code_critters.persistence.repository.LevelRepository;
import org.codecritters.code_critters.persistence.repository.MutantRepository;
import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.dto.LevelDTO;
import org.codecritters.code_critters.web.dto.LevelNamesDTO;
import org.codecritters.code_critters.web.dto.MutantDTO;
import org.codecritters.code_critters.web.dto.RowDTO;
import org.codecritters.code_critters.web.dto.hintSystem.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.ConstraintViolationException;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Service
public class LevelService {

    private final LevelRepository levelRepository;
    private final MutantRepository mutantRepository;
    private final RowRepository rowRepository;
    private final UserRepositiory userRepositiory;
    private final ResultRepository resultRepository;

    @Autowired
    public LevelService(LevelRepository levelRepository, MutantRepository mutantRepository, RowRepository rowRepository,
                        UserRepositiory userRepositiory, ResultRepository resultRepository) {
        this.levelRepository = levelRepository;
        this.mutantRepository = mutantRepository;
        this.rowRepository = rowRepository;
        this.userRepositiory = userRepositiory;
        this.resultRepository = resultRepository;
    }

    public void createLevel(LevelDTO dto) {
        if (levelRepository.findByName(dto.getName()) != null) {
            throw new AlreadyExistsException("Tried to insert a level name that already exists");
        }

        try {
            levelRepository.save(createLevelDAO(dto));
        } catch (ConstraintViolationException e) {
            throw new AlreadyExistsException("Tried to insert a level that already exists", e);
        }
    }

    public void deleteLevel(String name) {
        Level level = levelRepository.findByName(name);

        if (level == null) {
            throw new NotFoundException("There's no level with name: " + name);
        } else {
            levelRepository.deleteById(level.getId());
        }
    }

    public void updateLevel(LevelDTO dto) {
        try {
            levelRepository.save(createLevelDAO(dto));
        } catch (ConstraintViolationException e) {
            throw new AlreadyExistsException("Failed to update the level", e);
        }
    }

    public LevelDTO getLevel(String name) {
        Level level = levelRepository.findByName(name);
        if (level == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return createDto(level);
    }

    public String getTest(String name) {
        String test = levelRepository.getTestByName(name);
        if (test == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return test;
    }

    public String getCUT(String name) {
        String cut = levelRepository.getCUTByName(name);
        if (cut == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return cut;
    }

    public CritterRow getRow(String id) {
        CritterRow row = rowRepository.findCritterRowById(id);
        if (row == null) {
            throw new NotFoundException("There's no row with id: " + id);
        }
        return row;
    }

    public boolean existsLevel(String name) {
        return levelRepository.findByName(name) != null;
    }

    private LevelDTO createDto(Level level) {
        LevelDTO dto = new LevelDTO();
        dto.setDisplayName(level.getDisplayName());
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
        dto.setRow(level.getRow().getName());
        dto.setFreeMines(level.getFreeMines());
        dto.setHints(createHintDtoList(level));
        dto.setPortalSolutions(createPortalSolutionsList(level));

        return dto;
    }

    private List<PortalSolutionHintDTO> createPortalSolutionsList(Level level) {
        List<PortalSolutionHint> portalSolutionHintList = level.getPortalSolutions();
        List<PortalSolutionHintDTO> portalSolutionsDTOs = new ArrayList<>();

        if (portalSolutionHintList != null && portalSolutionHintList.size() > 0) {
            portalSolutionHintList.forEach(portalSolutionHint -> {
                PortalSolutionHintDTO portalSolutionHintDTO = new PortalSolutionHintDTO(portalSolutionHint.getId(),
                        portalSolutionHint.getName(), portalSolutionHint.getCodeBlockToBeTested(),
                        portalSolutionHint.getAssociatedComponentIds(), portalSolutionHint.getPortalSolutionXmls(),
                        portalSolutionHint.getPossibleCoordinates(), portalSolutionHint.getKeyCodeBlocks());
                portalSolutionsDTOs.add(portalSolutionHintDTO);
            });
        }

        return portalSolutionsDTOs;
    }

    private List<HintDTO> createHintDtoList(Level level) {
        List<Hint> levelHints = level.getLevelHints();
        List<HintDTO> hintDTOList = new ArrayList<>();


        if (levelHints != null && levelHints.size() > 0) {
            levelHints.forEach(hint -> {
                Map<Integer, CutBlocksDTO> cutBlocksDTOMap = new HashMap<>();
                Map<Integer, ComponentsDTO> componentsDTOMap = new HashMap<>();
                Map<Integer, ExpectedClickedCoordsDTO> clickedCoordsDTOMap = new HashMap<>();

                hint.getExpectedClickedCoordinates().forEach((integer, coordinates) -> {
                    ExpectedClickedCoordsDTO coordsDTO = new ExpectedClickedCoordsDTO(coordinates.getCoordinates());
                    clickedCoordsDTOMap.put(integer, coordsDTO);
                });

                hint.getAssociatedComponentIds().forEach((integer, associatedComponentIds) -> {
                    ComponentsDTO componentsDTO = new ComponentsDTO(associatedComponentIds.getComponentIds());
                    componentsDTOMap.put(integer, componentsDTO);
                });

                hint.getAssociatedCutBlocks().forEach((integer, associatedCutBlocks) -> {
                    CutBlocksDTO blocksDTO = new CutBlocksDTO(associatedCutBlocks.getBlockIds());
                    cutBlocksDTOMap.put(integer, blocksDTO);
                });

                HintDTO hintDTO = new HintDTO(hint.getId(), hint.getHintSituation(),
                        hint.getHintTexts(), hint.getAssociatedCoordinates(), cutBlocksDTOMap,  componentsDTOMap,
                        hint.getPortalXmls(), clickedCoordsDTOMap, hint.getExpectedUserInteraction(), hint.getExpectedPortalJsCode());

                hintDTOList.add(hintDTO);
            });
        }


        return hintDTOList;
    }

    private Level createLevelDAO(LevelDTO dto) {
        Level level = new Level();
        if (dto.getId() != null) {
            level.setId(dto.getId());
        }
        if (dto.getName() != null) {
            level.setName(dto.getName());
        }
        if (dto.getDisplayName() != null) {
            level.setDisplayName(dto.getDisplayName());
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
        if (dto.getRow() != null) {
            level.setRow(getRow(dto.getRow()));
        }
        level.setNumberOfCritters(dto.getNumberOfCritters());
        level.setNumberOfHumans(dto.getNumberOfHumans());
        level.setFreeMines(dto.getFreeMines());

        return level;
    }

    public List<String> getLevelNames() {
        List<String> list = levelRepository.getLevelNames();
        Collections.sort(list, (o1, o2) -> {
            if(o1.startsWith("level_") && o2.startsWith("level_"));{
                if(Integer.valueOf(o1.substring(6)) < Integer.valueOf(o2.substring(6))){
                    return -1;
                } else if(Integer.valueOf(o1.substring(6)) > Integer.valueOf(o2.substring(6))){
                    return 1;
                }
            }
            return 0;
        });
        return list;

    }

    private List<String> getLevelDisplayNames() {
        List<String> levelDisplayNames = levelRepository.getLevelDisplayNames();
        Collections.sort(levelDisplayNames, (o1, o2) -> {
            if(o1.startsWith("Level ") && o2.startsWith("Level ")) {
                String num1 = o1.replaceAll("[^0-9]", "");
                String num2 = o2.replaceAll("[^0-9]", "");
                if(Integer.valueOf(num1) < Integer.valueOf(num2)){
                    return -1;
                } else if(Integer.valueOf(num1) > Integer.valueOf(num2)){
                    return 1;
                }
            }
            return 0;
        });
        return levelDisplayNames;
    }

    /**
     * Gets all level names as a list of objects holding the basic name
     * (e.g. level_1) and the displayName (e.g. Level 1 - Woods)
     * @return A list of LevelNamesDTOs
     */
    public List<LevelNamesDTO> getLevelNamesAll() {
        // get sorted names lists
        List<String> levelDisplayNames = getLevelDisplayNames();
        List<String> levelNames = getLevelNames();

        List<LevelNamesDTO> levelNamesDTOS = new ArrayList<>();
        for (int i = 0; i < levelNames.size(); i++) {
            for (int j = 0; j < levelDisplayNames.size(); j++) {
                if (i == j) {
                    LevelNamesDTO cur = new LevelNamesDTO(levelNames.get(i), levelDisplayNames.get(j));
                    levelNamesDTOS.add(cur);
                }
            }
        }
        return levelNamesDTOS;
    }

    public List<MutantDTO> getMutants(String name) {
        String id = levelRepository.getIdByName(name);
        if (id == null) {
            throw new NotFoundException("No such level");
        }
        Level level = new Level(id);

        List<String[]> mutants = mutantRepository.getCodeByLevel(level);
        if (mutants == null || mutants.size() == 0) {
            throw new NotFoundException("No mutants could be found");
        }
        List<MutantDTO> mutantsDto = new LinkedList<MutantDTO>();
        for (Object[] mutant : mutants) {
            MutantDTO dto = new MutantDTO((String) mutant[0], (String) mutant[1], (String) mutant[2], (String) mutant[3]);
            mutantsDto.add(dto);
        }
        return mutantsDto;
    }

    public String getInit(String name) {
        String init = levelRepository.getInitByName(name);
        if (init == null) {
            throw new NotFoundException("There's no level with name: " + name);
        }
        return init;
    }

    public List getLevelsGrouped(String cookie) {
        List groupedLevels = new LinkedList();

        Collection<CritterRow> rows = rowRepository.getRows();
        if(userRepositiory.existsByCookie(cookie)){
            User user = userRepositiory.findByCookie(cookie);
            for (CritterRow row : rows) {
                HashMap map = new HashMap<String, Object>();
                map.put("name", row.getName());
                map.put("id", row.getId());
                map.put("position", row.getPosition());

                // Sort list of levels to ensure correct order
                List<LevelResultType> sortedList = levelRepository.getLevelNamesAndResultByGroup(row, user);
                Collections.sort(sortedList, new SortByLevelName());

                map.put("levels", sortedList);
                groupedLevels.add(map);
            }
        } else {
            for (CritterRow row : rows) {
                HashMap map = new HashMap<String, Object>();
                map.put("name", row.getName());
                map.put("id", row.getId());
                map.put("position", row.getPosition());

                // Sort list of levels to ensure correct order
                List<LevelResultType> sortedList = levelRepository.getLevelNamesAndResultByGroup(row, cookie);
                Collections.sort(sortedList, new SortByLevelName());

                map.put("levels", sortedList);
                groupedLevels.add(map);
            }
        }
        return groupedLevels;
    }

    public void storeImage(MultipartFile image) {
        String name = image.getOriginalFilename();
        //TODO: Fix path
        File file = new File("./images/" + name);
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
            image.transferTo(file.getAbsoluteFile());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<RowDTO> getRows() {
        Collection<CritterRow> rows = rowRepository.getRows();

        List<RowDTO> rowDTOS = new LinkedList<>();

        for (CritterRow row : rows) {
            rowDTOS.add(new RowDTO(row.getId(), row.getName(), row.getPosition()));
        }

        return rowDTOS;
    }
}
