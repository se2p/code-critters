package org.codecritters.code_critters.application.scheduledTasks;

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
    @Scheduled(cron = "0 0 */12 * * *")
    public void deleteOldResults() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);
        Date date = cal.getTime();
        resultRepository.deleteAll(resultRepository.getAllByUpdatedBeforeAndUserIsNull(date));
    }
}
