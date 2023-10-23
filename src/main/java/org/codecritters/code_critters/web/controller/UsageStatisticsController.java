package org.codecritters.code_critters.web.controller;

/*-
 * #%L
 * Code Critters
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

import org.codecritters.code_critters.application.service.StatisticService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.codecritters.code_critters.web.dto.usageStats.GamesOfUserDTO;
import org.codecritters.code_critters.web.dto.usageStats.GamingDetailDTO;
import org.codecritters.code_critters.web.dto.usageStats.MineHistoryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class UsageStatisticsController {

    private final StatisticService statisticService;

    @Autowired
    public UsageStatisticsController(StatisticService statisticService) {
        this.statisticService = statisticService;
    }

    /**
     * Gets all the games together with game information for a given username.
     * @param userName The username
     * @return All games by the given user
     */
    @GetMapping(path = "/statistics/games")
    public GamesOfUserDTO getGamesOfUser(@RequestParam String userName) {
        return statisticService.getAllGamesOfUser(userName);
    }

    /**
     * Gets all details of a given game, e.g. its duration, score, mines, killed and finished mutants/humans.
     * @param gameId The gameId
     * @return Details of a given game
     */
    @GetMapping(path = "/statistics/game")
    public GamingDetailDTO getGameDetails(@RequestParam String gameId) {
        return statisticService.getGameDetails(gameId);
    }

    /**
     * Gets a detailed view over a given mine (identified its by position) of a game, holding information over
     * the complete history of operations (creation, update, deletion) and details about them.
     * E.g. the start and end time of the operation, the code of the mine.
     * @param xPosition The x position of a mine in the game
     * @param yPosition The y positino of a mine in the game
     * @param gameId The gameId
     * @return Detailed view over mine operations
     */
    @GetMapping(path = "statistics/mine")
    public MineHistoryDTO getMineHistory(@RequestParam int xPosition,@RequestParam  int yPosition,
                                         @RequestParam String gameId) {
        return statisticService.getMineHistory(xPosition, yPosition, gameId);
    }
}
