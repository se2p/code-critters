
CREATE TABLE IF NOT EXISTS  `critter_row` (
                       `id` VARCHAR(255) NOT NULL,
                       `name` VARCHAR(255) NOT NULL,
                       `position` INT(11) NOT NULL,
                       PRIMARY KEY (`id`),
                       UNIQUE INDEX `UK_k1hl3knc5x5rrqb5ens7oqadx` (`name`)
)
    COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

CREATE TABLE IF NOT EXISTS `level` (
                         `id` VARCHAR(255) NOT NULL,
                         `cut` TEXT NOT NULL,
                         `level` LONGTEXT NOT NULL,
                         `name` VARCHAR(255) NOT NULL,
                         `number_of_critters` INT(11) NULL DEFAULT 10,
                         `number_of_humans` INT(11) NULL DEFAULT 5,
                         `spawn` VARCHAR(255) NOT NULL,
                         `test` TEXT NULL DEFAULT NULL,
                         `tower` VARCHAR(255) NOT NULL,
                         `init` TEXT NULL DEFAULT NULL,
                         `xml` TEXT NULL DEFAULT NULL,
                         `row_id` VARCHAR(255) NULL DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE INDEX `levelName` (`name`),
                         INDEX `FKiyx8r274befk3mij0vy9lcnth` (`row_id`),
                         CONSTRAINT `FKiyx8r274befk3mij0vy9lcnth` FOREIGN KEY (`row_id`) REFERENCES `critter_row` (`id`) ON DELETE CASCADE
)
    COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

CREATE TABLE IF NOT EXISTS `mutant` (
                          `id` VARCHAR(255) NOT NULL,
                          `code` TEXT NOT NULL,
                          `xml` TEXT NOT NULL,
                          `level_id` VARCHAR(255) NULL DEFAULT NULL,
                          `init` TEXT NULL DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          INDEX `FKo7siv1iluspgexnnkbod3aty9` (`level_id`),
                          CONSTRAINT `FKo7siv1iluspgexnnkbod3aty9` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`) ON DELETE CASCADE
)
    COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

CREATE TABLE IF NOT EXISTS `user` (
                        `id` VARCHAR(255) NOT NULL,
                        `cookie` VARCHAR(255) NULL DEFAULT NULL,
                        `email` VARCHAR(255) NOT NULL,
                        `password` VARCHAR(255) NULL DEFAULT NULL,
                        `salt` VARCHAR(255) NULL DEFAULT NULL,
                        `secret` VARCHAR(255) NULL DEFAULT NULL,
                        `username` VARCHAR(255) NOT NULL,
                        `reset_password` BIT(1) NOT NULL DEFAULT b'0',
                        `active` BIT(1) NOT NULL DEFAULT b'0',
                        `language` VARCHAR(255) NULL DEFAULT NULL,
                        `role` VARCHAR(255) NULL DEFAULT NULL,
                        `last_used` DATETIME NULL DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE INDEX `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
                        UNIQUE INDEX `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`),
                        UNIQUE INDEX `Schlüssel 4` (`cookie`)
)
    COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

CREATE TABLE IF NOT EXISTS `result` (
                          `id` VARCHAR(255) NOT NULL,
                          `cookie` VARCHAR(255) NULL DEFAULT NULL,
                          `score` INT(11) NOT NULL,
                          `stars` INT(11) NOT NULL,
                          `updated` DATETIME NULL DEFAULT NULL,
                          `level_id` VARCHAR(255) NULL DEFAULT NULL,
                          `user_id` VARCHAR(255) NULL DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          INDEX `FKnl4waxlekjthh4h7p9igv4owx` (`level_id`),
                          INDEX `Schlüssel 3` (`user_id`),
                          CONSTRAINT `FK_result_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
                          CONSTRAINT `FKnl4waxlekjthh4h7p9igv4owx` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`) ON DELETE CASCADE
)
    COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


CREATE OR REPLACE VIEW score AS
SELECT * , (SELECT COUNT(*) FROM (
                                     SELECT u.username, SUM(r.score) AS score, COUNT(r.level_id) AS levels
                                     FROM result AS r
                                              JOIN user AS u ON r.user_id = u.id
                                     WHERE r.user_id IS NOT NULL
                                     GROUP BY r.user_id
                                     ORDER BY sum(r.score) DESC
                                 ) AS aa
            WHERE aa.score > a.score) + 1 AS position
FROM (
         SELECT u.username, SUM(r.score) AS score, COUNT(r.level_id) AS levels
         FROM result AS r
                  JOIN user AS u ON r.user_id = u.id
         WHERE r.user_id IS NOT NULL
         GROUP BY r.user_id
         ORDER BY sum(r.score) DESC
     ) AS a
;