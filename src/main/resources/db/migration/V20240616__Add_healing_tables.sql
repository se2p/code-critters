-- Add block count recording for base level mines too!
alter table mine add column block_count integer not null;

create table bush
(
    id varchar(255) not null primary key ,
    coordinates varchar(255),
    berry_type varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table healing_game
(
    id varchar(255) not null primary key,
    user_id varchar(255),
    level_id varchar(255),
    start datetime(6),
    end datetime(6),
    game_time double precision not null,
    mutants_killed integer not null,
    collectors_finished integer not null,
    score integer not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


create table detected_mutants
(
    healing_game_id varchar(255) not null,
    collector_id varchar(255) not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table finished_healthy_collectors
(
    healing_game_id varchar(255) not null,
    collector_id varchar(255) not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table missed_healthy_collectors
(
    healing_game_id varchar(255) not null,
    collector_id varchar(255) not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table missed_mutants
(
    healing_game_id varchar(255) not null,
    collector_id varchar(255) not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


create table heal_level
(
    id         varchar(255) not null primary key,
    cut        text,
    name       varchar(255) not null,
    display_name varchar(255),
    test       text,
    xml        text,
    loop_start varchar(255) not null,
    spawn      varchar(255) not null,
    display_level longtext,
    rounds_num  integer,
    number_of_mutants integer,
    boardbackground varchar(255),
    inner_loop_start varchar(255),
    basket_position varchar(255) not null,
    inner_basket_position varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table heal_level
    add constraint UK_kpsj9day195y7xuc4a35t41v0 unique (name);

alter table healing_game
    add constraint FKrt65eul751gggbh4tg9tykwls foreign key (level_id) references heal_level (id);


create table heal_level_bushes
(
    heal_level_id varchar(255) not null,
    bushes_id varchar(255) not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table heal_level_bushes drop index if exists UK_3wgxt7pl2tchel9tk0od8mmqo;
alter table heal_level_bushes add constraint UK_3wgxt7pl2tchel9tk0od8mmqo unique (bushes_id);


alter table heal_level_bushes
    add constraint FKrxevy5nui65qpxaygy3gce8ot foreign key (bushes_id) references bush (id);
alter table heal_level_bushes
    add constraint FKq8ywymemqe1hsc34tyxakq2g3 foreign key (heal_level_id) references heal_level (id);


create table healing_collector (
                             id varchar(255) not null primary key,
                             init text,
                             xml text,
                             level_id varchar(255),
                             mutated bit,
                             first_faulty_round integer
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table game_healing_collector
(
    id                   varchar(255) not null primary key,
    detection_round_num  integer      not null,
    healing_collector_id varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table game_healing_collector
    add constraint FKnisk71llyrhl39xxmwxj3afyn foreign key (healing_collector_id) references healing_collector (id);


alter table detected_mutants
    add constraint FK8dyoos8c5gf04e2rc47vudp28 foreign key (collector_id) references game_healing_collector (id);

alter table detected_mutants
    add constraint FK7um1m6asix68fobun304jv8i0 foreign key (healing_game_id) references healing_game (id);

alter table finished_healthy_collectors
    add constraint FKlfug8btjdlo4v2etnl1lbhb4y foreign key (collector_id) references healing_collector (id);

alter table finished_healthy_collectors
    add constraint FKr39ube7fsld0v94fbhjtm3e7j foreign key (healing_game_id) references healing_game (id);

alter table missed_healthy_collectors
    add constraint FKiru2m9mparpg74954ea7kts0n foreign key (collector_id) references healing_collector (id);

alter table missed_healthy_collectors
    add constraint FKdluqaw6cqoiw66y5rb3611v54 foreign key (healing_game_id) references healing_game (id);

alter table missed_mutants
    add constraint FKsvstivuer66ne0ee32flb4l36 foreign key (collector_id) references healing_collector (id);

alter table missed_mutants
    add constraint FKqtj2alt73q6uorwqph1beef5w foreign key (healing_game_id) references healing_game (id);




create table path_list (
                           healing_collector_id varchar(255) not null,
                           x integer not null,
                           y integer not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


alter table healing_collector
    add constraint FKayb4ca8u1qwnxdhbmtnk2pvq8 foreign key (level_id) references heal_level (id);

alter table path_list
    add constraint FK8nrc5bjxnm9jfakf9s50clh9j foreign key (healing_collector_id) references healing_collector (id);


create table healing_mine
(
    id varchar(255) not null,
    block_count integer not null,
    code text,
    creation_end datetime(6),
    creation_start datetime(6),
    deleted bit not null,
    deletion_date_time datetime(6),
    frontend_id varchar(255),
    updated bit not null,
    x_position integer not null,
    xml text,
    y_position integer not null,
    healing_game_id varchar(255),
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table healing_mine
    add constraint FK2pbbe76utw1w5p5676neajveg foreign key (healing_game_id) references healing_game (id);

alter table pause_time
    add column healing_game_id varchar(255);

alter table pause_time
    add constraint FK2wq6y4wn4kpy1b37cu1s5jtfs foreign key (healing_game_id) references healing_game (id);


create table heal_result (
    id varchar(255) not null primary key,
    cookie varchar(255),
    score integer not null,
    stars integer not null,
    updated datetime(6),
    level_id varchar(255),
    user_id varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table heal_result
    add constraint FKamuvqd8x1w4qcwaj60bmfnx7m foreign key (level_id) references heal_level (id);

alter table heal_result
    add constraint FKm05d426bgadl04ei7egog3nbo foreign key (user_id) references user (id);


-- update the score view to include second stage results
CREATE OR REPLACE VIEW score AS
SELECT *,
       (SELECT COUNT(*)
        FROM (
                 SELECT u.username,
                        SUM(r.score) AS score,
                        COUNT(r.level_id) AS levels
                 FROM (
                          SELECT user_id, level_id, score
                          FROM result
                          UNION ALL
                          SELECT user_id, level_id, score
                          FROM heal_result
                      ) AS r
                          JOIN user AS u ON r.user_id = u.id
                 WHERE r.user_id IS NOT NULL
                   AND u.username != 'admin'
                 GROUP BY r.user_id
                 ORDER BY SUM(r.score) DESC
             ) AS aa
        WHERE aa.score > a.score
          AND aa.username != 'admin') + 1 AS position
FROM (
    SELECT u.username,
    SUM(r.score) AS score,
    COUNT(r.level_id) AS levels
    FROM (
    SELECT user_id, level_id, score
    FROM result
    UNION ALL
    SELECT user_id, level_id, score
    FROM heal_result
    ) AS r
    JOIN user AS u ON r.user_id = u.id
    WHERE r.user_id IS NOT NULL
    AND u.username != 'admin'
    GROUP BY r.user_id
    ORDER BY SUM(r.score) DESC
    ) AS a;

create table codes_per_bush
(
    healing_collector_id varchar(255) not null,
    code text,
    bush_type varchar(255),
    primary key (healing_collector_id, bush_type)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table codes_per_bush
    add constraint FKan84q19ey4lksg1w9gmcvyy0 foreign key (healing_collector_id) references healing_collector (id);
