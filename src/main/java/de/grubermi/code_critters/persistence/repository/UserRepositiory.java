package de.grubermi.code_critters.persistence.repository;

import de.grubermi.code_critters.persistence.entities.User;
import de.grubermi.code_critters.web.enums.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public interface UserRepositiory extends CrudRepository<User, String> {

    boolean existsByUsernameOrEmail(String username, String email);

    User findByUsernameOrEmail(String username, String email);

    User findBySecret(String secret);

    User findByCookie(String cookie);

    User findByCookieAndLastUsedAfter(String cookie, Date date);

    User findByUsernameAndEmail(String username, String email);

    Iterable<User> findAllByRole(Role role);
}
