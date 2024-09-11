create table assistant_info
(
    id varchar(255) not null,
    hint_situation integer,
    time_closed datetime(6),
    game_id varchar(255),
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


create table visited_step
(
    id                varchar(255) not null,
    hint_step         integer      not null,
    time_seen         datetime(6),
    assistant_info_id varchar(255),
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


alter table assistant_info
    add constraint FKjchyfsyl30wgqhv1tjn72xl6t foreign key (game_id) references game (id);

alter table visited_step
    add constraint FK5p3ow4qfca1nptlaidu30cr8m foreign key (assistant_info_id) references assistant_info (id);


alter table mine
    add column assistant_info_id varchar(255);

alter table mine
    add constraint FKgqkggji6s32ejh7lag34n2a5p foreign key (assistant_info_id) references assistant_info (id);

create table checked_field
(
    id varchar(255) not null,
    x_coordinate integer not null,
    y_coordinate integer not null,
    time_checked datetime(6),
    game_id varchar(255),
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


alter table checked_field
    add constraint FKaov4682em8l1bgxvsk0w61ujv foreign key (game_id) references game (id);
