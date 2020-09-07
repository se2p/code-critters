package org.codecritters.code_critters.persistence;

import org.codecritters.code_critters.persistence.repository.RowRepository;
import org.codecritters.code_critters.persistence.entities.CritterRow;
import org.codecritters.code_critters.spring.configuration.JpaTestConfiguration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@ContextConfiguration(
        classes = {JpaTestConfiguration.class },
        loader = AnnotationConfigContextLoader.class)
@Transactional
@ActiveProfiles("test")
public class RowRepositoryTest {

    @Resource
    private RowRepository repository;

    private final CritterRow row1 = new CritterRow("Tutorial", 0);
    private final CritterRow row2 = new CritterRow("Beginner", 1);

    @Test
    public void getCritterRowTest() {
        repository.save(row1);
        repository.save(row2);

        Collection<CritterRow> collection = repository.getRows();
        Optional<CritterRow> firstElement = collection.stream().findFirst();

        assertAll("getRows() should return all CritterRows ordered by position",
                () -> assertEquals(2, collection.size()),
                () -> assertEquals(row1.getId(), firstElement.get().getId()),
                () -> assertTrue(collection.contains(row2))
        );
    }
}
