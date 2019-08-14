package org.codecritters.code_critters.persistence.repository;

import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.web.enums.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface UserRepositiory extends CrudRepository<User, String> {

    boolean existsByUsernameOrEmail(String username, String email);

    User findByUsernameOrEmail(String username, String email);

    User findBySecret(String secret);

    User findByCookie(String cookie);

    User findByCookieAndLastUsedAfter(String cookie, Date date);

    User findByUsernameAndEmail(String username, String email);

    List<User> findAllByRole(Role role);

    boolean existsByCookie(String cookie);

    boolean existsByEmail(String email);

    boolean existsByUsername(String username);
}
