package de.grubermi.code_critters.application.service;

import de.grubermi.code_critters.persistence.entities.Mine;
import de.grubermi.code_critters.persistence.entities.Result;
import de.grubermi.code_critters.persistence.repository.MineRepository;
import de.grubermi.code_critters.persistence.repository.ResultRepository;
import de.grubermi.code_critters.web.dto.MineDTO;
import de.grubermi.code_critters.web.dto.ResultDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResultService {

    private final ResultRepository resultRepository;
    private final MineRepository mineRepository;

    @Autowired
    public ResultService(ResultRepository resultRepository, MineRepository mineRepository) {
        this.resultRepository = resultRepository;
        this.mineRepository = mineRepository;
    }

    public void createResult(ResultDTO resultDTO) {
        Result result = new Result(resultDTO.getScore(), resultDTO.getCookie(), resultDTO.getLevel());
        result = resultRepository.save(result);
        for (MineDTO mineDTO: resultDTO.getMines()) {
            Mine mine = new Mine(mineDTO.getX(), mineDTO.getY(), mineDTO.getCode(), mineDTO.getXml(), result);
            mineRepository.save(mine);
        }

    }
}
