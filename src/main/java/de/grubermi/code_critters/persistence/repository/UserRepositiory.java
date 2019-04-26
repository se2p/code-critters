package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepositiory extends CrudRepository<User, String> {

    Boolean existsByUsernameOrEmail(String username, String email);

    User findByUsernameOrEmail(String username, String email);

    User findBySecret(String secret);

    User findByCookie(String cookie);

    User findByUsernameAndEmail(String username, String email);
}
