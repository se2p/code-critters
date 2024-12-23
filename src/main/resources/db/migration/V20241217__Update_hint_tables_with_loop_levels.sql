alter table hint
    add column heal_level_id varchar(255);

alter table hint
    add constraint FKt2d4wo5t2a7enal1ndmp4o56h foreign key (heal_level_id) references heal_level (id);

alter table assistant_info
    add column healing_game_id varchar(255);

alter table assistant_info
    add constraint FK98ho5et2uqm89obev9wi9ho0b foreign key (healing_game_id) references healing_game (id);

alter table healing_mine
    add column assistant_info_id varchar(255);

alter table healing_mine
    add constraint FK2x8yxpiwdc9qiwmfn4nwvlcq6 foreign key (assistant_info_id) references assistant_info (id);

create table answer_options_list
(
    id varchar(255) not null,
    hint_id varchar(255),
    answer_options_list_key integer,
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


create table answer_options_list_answer_options
(
    answer_options_list_id varchar(255) not null,
    answer_options varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table answer_options_list
    add constraint FK7m5w379026tc32ys972bra17h foreign key (hint_id) references hint (id);

create table hint_solution_answer
(
    hint_id varchar(255) not null,
    solution_answer varchar(255),
    solution_answer_key integer not null,
    primary key (hint_id, solution_answer_key)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table answer_options_list_answer_options
    add constraint FKa1spxkkbh46gabmlcj262p309 foreign key (answer_options_list_id) references answer_options_list (id);


alter table hint_solution_answer
    add constraint FKb7e3eu8kbyu2cjnj6ym55vb68 foreign key (hint_id) references hint (id);

