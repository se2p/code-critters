package org.codecritters.code_critters.application.service.healing;

import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.entities.healing.HealLevel;
import org.codecritters.code_critters.persistence.entities.healing.HealingCollector;
import org.codecritters.code_critters.persistence.entities.healing.HealingGame;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.persistence.repository.healing.HealLevelRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingCollectorRepository;
import org.codecritters.code_critters.persistence.repository.healing.HealingGameRepository;
import org.codecritters.code_critters.web.dto.healing.HealingGameDTO;
import org.codecritters.code_critters.web.dto.healing.KilledMutantDTO;
import org.junit.Test;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.mockito.ArgumentMatchers.any;

import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@RunWith(MockitoJUnitRunner.class)
public class HealingGameServiceTest {


    @InjectMocks
    private HealingGameService healingGameService;
    @Mock
    private HealLevelRepository healLevelRepository;
    @Mock
    private UserRepositiory userRepositiory;
    @Mock
    private HealingGameRepository healingGameRepository;
    @Mock
    private HealingCollectorRepository healingCollectorRepository;


    private final HealLevel healLevel = new HealLevel();
    private final String gameId = "1234";
    private final String userId = "user1234";
    private final String cookie = "cookiestring";
    private User user;

    private HealingGame healingGame;
    private HealingGameDTO gameDTO = new HealingGameDTO("level_1", gameId, healLevel, LocalDateTime.now(),
            LocalDateTime.now(), 600, 5, 3, 0, userId, new ArrayList<>(),
            Arrays.asList("killedcollectorid1", "killedcollectorid2"),  Arrays.asList("mutantid1", "mutantid2"),  Arrays.asList("finishedcollectorid1", "finishedcollectorid2"));


    @Before
    public void setUp() {
        KilledMutantDTO mutant = new KilledMutantDTO();
        mutant.setId("mutant1");
        List<KilledMutantDTO> killedList = new ArrayList<>();
        killedList.add(mutant);
        List<String> missedMuts = new ArrayList<>();
        missedMuts.add("missedmutantid1");
        List<String> finishedHealthy = new ArrayList<>();
        finishedHealthy.add("finishedcollectorid1");
        List<String> missedHealthy = new ArrayList<>();
        missedHealthy.add("killedcollectorid1");
        user = new User();
        user.setId(userId);
        healingGame = new HealingGame(gameId, healLevel, LocalDateTime.now(), LocalDateTime.now(), 600, 5, 3, 0);
        healingGame.setUserID(userId);
        gameDTO = new HealingGameDTO("level_1", gameId, healLevel, LocalDateTime.now(),
                LocalDateTime.now(), 600, 5, 3, 0, userId, killedList,
                missedHealthy, missedMuts,  finishedHealthy);
    }
    @Test
    public void testCreateHealGame() {
        when(healLevelRepository.findByName(gameDTO.getName())).thenReturn(healLevel);
        when(userRepositiory.findByCookie(cookie)).thenReturn(user);
        when(healingGameRepository.save(any())).thenReturn(healingGame);

        HealingGameDTO createdGame = healingGameService.createGame(gameDTO, cookie);

        assertAll(
                () -> assertEquals(gameId, createdGame.getId()),
                () -> assertEquals(healLevel, createdGame.getLevel()),
                () -> assertEquals(userId, createdGame.getUserID()),
                () -> assertEquals(healingGame.getStart(), createdGame.getStart()),
                () -> assertEquals(healingGame.getEnd(), createdGame.getEnd())
        );

        verify(healingGameRepository).save(any());
    }

    @Test
    public void testSaveHealGame() {
        List<String> mutantIds = gameDTO.getKilledMutantsList().stream().map(KilledMutantDTO::getId).collect(Collectors.toList());
        HealingCollector hc = new HealingCollector();
        hc.setId("mutant1");
        List<HealingCollector> detecetdList = new ArrayList<>();
        detecetdList.add(hc);

        HealingCollector hc1 = new HealingCollector();
        hc1.setId("missedmutantid1");
        List<HealingCollector> missedMutants = new ArrayList<>();
        missedMutants.add(hc1);

        HealingCollector hc2 = new HealingCollector();
        hc2.setId("finishedcollectorid1");
        List<HealingCollector> finishedHealthy = new ArrayList<>();
        finishedHealthy.add(hc2);

        HealingCollector hc3 = new HealingCollector();
        hc2.setId("killedcollectorid1");
        List<HealingCollector> missedHealthy = new ArrayList<>();
        missedHealthy.add(hc3);


        when(healLevelRepository.findById(gameDTO.getLevel().getId())).thenReturn(Optional.of(healLevel));
        when(healingCollectorRepository.findByIdIn(mutantIds)).thenReturn(detecetdList);
        when(healingCollectorRepository.findByIdIn(gameDTO.getFinishedMutantsList())).thenReturn(missedMutants);
        when(healingCollectorRepository.findByIdIn(gameDTO.getFinishedCollectorsList())).thenReturn(finishedHealthy);
        when(healingCollectorRepository.findByIdIn(gameDTO.getKilledCollectorsList())).thenReturn(missedHealthy);

        healingGameService.saveGame(gameDTO);

        verify(healingGameRepository).save(any(HealingGame.class));
    }
}
