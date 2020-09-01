package de.grubermi.code_critters.application.scheduledTasks;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2020 Michael Gruber
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

import org.codecritters.code_critters.persistence.repository.ResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;

@Component
public class DeleteOldResults {

    private final ResultRepository resultRepository;

    @Autowired
    public DeleteOldResults(ResultRepository resultRepository) {
        this.resultRepository = resultRepository;
    }


    /**
     * Deletes results older then one day automatically from the database.
     * Executed at 00:00 and 12:00 every day.
     */
    @Scheduled(cron="0 0 */12 * * *")
    public void deleteOldResults() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);
        Date date = cal.getTime();
        resultRepository.deleteAll(resultRepository.getAllByUpdatedBeforeAndUserIsNull(date));
    }
}
