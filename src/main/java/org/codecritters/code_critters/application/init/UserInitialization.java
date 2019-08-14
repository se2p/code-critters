package org.codecritters.code_critters.application.init;

/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
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

import org.codecritters.code_critters.application.service.PasswordService;
import org.codecritters.code_critters.persistence.entities.User;
import org.codecritters.code_critters.persistence.repository.UserRepositiory;
import org.codecritters.code_critters.web.enums.Language;
import org.codecritters.code_critters.web.enums.Role;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class UserInitialization {

    private UserRepositiory userRepositiory;
    private PasswordService passwordService;

    private final Logger logger = LogManager.getLogger(UserInitialization.class);


    @Autowired
    public UserInitialization(UserRepositiory userRepositiory, PasswordService passwordService) {
        this.userRepositiory = userRepositiory;
        this.passwordService = passwordService;
    }

    @PostConstruct
    public void init() {
        List<User> users = userRepositiory.findAllByRole(Role.admin);
        if (users == null || users.isEmpty()) {
            User user = new User();
            user.setActive(true);
            user.setEmail("admin@admin.de");
            user.setUsername("admin");
            user.setRole(Role.admin);
            user.setLanguage(Language.en);
            user = passwordService.hashPassword("admin", user);
            userRepositiory.save(user);
            logger.info("User admin:admin was added to the database");
        }
    }
}
