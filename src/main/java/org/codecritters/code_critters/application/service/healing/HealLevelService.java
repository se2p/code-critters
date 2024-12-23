package org.codecritters.code_critters.application.service.healing;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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

import org.codecritters.code_critters.application.exception.NotFoundException;
import org.codecritters.code_critters.persistence.entities.Level;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.entities.healing.Bush;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealResult;
import org.codecritters.code_critters.persistence.entities.healing.HealingCollector;
import org.codecritters.code_critters.persistence.entities.hintSystem.Hint;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealResultRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingCollectorRepository;
import org.codecritters.code_critters.web.dto.ResultDTO;
import org.codecritters.code_critters.web.dto.healing.BushDTO;
import org.codecritters.code_critters.web.dto.healing.HealLevelDTO;
import org.codecritters.code_critters.web.dto.healing.HealingCollectorsDTO;
import org.codecritters.code_critters.web.dto.hintSystem.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Service to provide heal level data (i.e. second stage level).
 */
@Service
public class HealLevelService {

    private final HealLevelRepository healLevelRepository;
    private final HealResultRepository healResultRepository;
    private final UserRepositiory userRepositiory;
    private final HealingCollectorRepository healingCollectorRepository;

    @Autowired
    public HealLevelService(HealLevelRepository healLevelRepository, HealingCollectorRepository healingCollectorRepository, UserRepositiory userRepositiory, HealResultRepository healResultRepository) {
        this.healLevelRepository = healLevelRepository;
        this.healingCollectorRepository = healingCollectorRepository;
        this.userRepositiory = userRepositiory;
        this.healResultRepository = healResultRepository;
    }

    /**
     * Gets requested level.
     * @param name of the level
     * @return DTO of the level
     */
    public HealLevelDTO getLevel(String name) {
        HealLevel level = healLevelRepository.findByName(name);
        if (level == null) {
            throw new NotFoundException("There is no healing level with name " + name);
        }
        return createDto(level);
    }

    /**
     * Gets the critters for a healing level.
     * @param levelName of the healing level
     * @return List of HealingCollectorDTOs
     */
    public List<HealingCollectorsDTO> getCollectors(String levelName) {
        String id = healLevelRepository.getIdByName(levelName);
        if (id == null) {
            throw new NotFoundException("No such level");
        }
        HealLevel healLevel = new HealLevel(id);

        List<HealingCollector> collectors = healingCollectorRepository.getCodeByLevel(healLevel);

        if (collectors == null || collectors.size() == 0) {
            throw new NotFoundException("No mutants could be found");
        }

        List<HealingCollectorsDTO> collectorsDTOs = new ArrayList<>();
        for (HealingCollector collector : collectors) {
            HealingCollectorsDTO dto = new HealingCollectorsDTO(collector.getId(), collector.getInit(),
                    collector.getXml(), collector.isMutated(), collector.getPathList(), collector.getFirstFaultyRound(), collector.getCodesPerBush());
            collectorsDTOs.add(dto);
        }

        return collectorsDTOs;
    }


    private HealLevelDTO createDto(HealLevel level) {
        List<BushDTO> bushes = createBushesList(level.getBushes());

        HealLevelDTO healLevelDTO = new HealLevelDTO(level.getId(), level.getName(), level.getDisplayName(), level.getCUT(),
                level.getXml(), level.getTest(), level.getLoopStart(), level.getBasketPosition(), level.getSpawn(), level.getDisplayLevel(), bushes,
                level.getNumberOfMutants(), level.getRoundsNum(), level.getBoardbackground(), createHintDtoList(level));
        if (level.getInnerLoopStart() != null) {
            healLevelDTO.setInnerLoopStart(level.getInnerLoopStart());
        }
        if (level.getInnerBasketPosition() != null) {
            healLevelDTO.setInnerBasketPosition(level.getInnerBasketPosition());
        }

        return healLevelDTO;
    }

    private List<BushDTO> createBushesList(List<Bush> bushes) {
        List<BushDTO> bushesDTOs = new ArrayList<>();
        bushes.forEach(bush -> {
            BushDTO bushDTO = new BushDTO(bush.getCoordinates(), bush.getBerryType());
            bushesDTOs.add(bushDTO);
        });

        return bushesDTOs;
    }

    private List<HintDTO> createHintDtoList(HealLevel level) {
        List<Hint> levelHints = level.getLevelHints();
        List<HintDTO> hintDTOList = new ArrayList<>();


        if (levelHints != null && !levelHints.isEmpty()) {
            levelHints.forEach(hint -> {
                Map<Integer, CutBlocksDTO> cutBlocksDTOMap = new HashMap<>();
                Map<Integer, ComponentsDTO> componentsDTOMap = new HashMap<>();
                Map<Integer, ExpectedClickedCoordsDTO> clickedCoordsDTOMap = new HashMap<>();
                Map<Integer, List<String>> answerOptionsListDTOMap = new HashMap<>();



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

                hint.getAnswerOptionsList().forEach((integer, answerOptionsList) -> {
                    List<String> answerOptions = answerOptionsList.getAnswerOptions(); // TODODODO
                    answerOptionsListDTOMap.put(integer, answerOptions);
                });


                HintDTO hintDTO = new HintDTO(hint.getId(), hint.getHintSituation(),
                        hint.getHintTexts(), hint.getAssociatedCoordinates(), cutBlocksDTOMap,  componentsDTOMap,
                        hint.getPortalXmls(), clickedCoordsDTOMap, hint.getExpectedUserInteraction(), hint.getExpectedPortalJsCode(), answerOptionsListDTOMap, hint.getSolutionAnswer());

                hintDTOList.add(hintDTO);
            });
        }


        return hintDTOList;
    }
}
