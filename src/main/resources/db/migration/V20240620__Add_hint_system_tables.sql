create table associated_coordinates
(
    hint_id varchar(255) not null,
    x       integer      not null,
    y       integer      not null,
    associated_coordinates_key integer not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table associated_component_ids
(
    id      varchar(255) not null,
    hint_id varchar(255),
    associated_component_ids_key integer not null,
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table associated_component_ids_component_ids
(
    associated_component_ids_id varchar(255) not null,
    component_ids               varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table associated_cut_blocks
(
    id      varchar(255) not null,
    hint_id varchar(255) not null,
    associated_cut_blocks_key integer not null,
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table associated_cut_blocks_block_ids
(
    associated_cut_blocks_id varchar(255) not null,
    block_ids                varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table expected_clicked_coordinate
(
    id      varchar(255) not null,
    hint_id varchar(255) not null,
    expected_clicked_coordinates_key integer not null,
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table expected_clicked_coordinate_coordinates
(
    expected_clicked_coordinate_id varchar(255) not null,
    x                              integer      not null,
    y                              integer      not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table hint_expected_user_interaction
(
    hint_id varchar(255) not null,
    expected_user_interaction integer,
    expected_user_interaction_key integer not null,
    primary key (hint_id, expected_user_interaction_key)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table hint_expected_portal_js_code
(
    hint_id varchar(255) not null,
    expected_portal_js_code text,
    expected_portal_js_code_key integer not null,
    primary key (hint_id, expected_portal_js_code_key)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table hint
(
    id             varchar(255) not null,
    hint_situation integer,
    level_id       varchar(255),
    primary key (id)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table hint_hint_texts
(
    hint_id varchar(255) not null,
    hint_texts varchar(255),
    hint_texts_key integer not null,
    primary key (hint_id, hint_texts_key)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


create table portal_xmls
(
    hint_id     varchar(255) not null,
    portal_xml text,
    portal_xml_key integer not null,
    primary key (hint_id, portal_xml_key)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table associated_coordinates
    add constraint FKmnfhvee4ir2qc62uqumv76jow foreign key (hint_id) references hint (id);
alter table associated_component_ids
    add constraint FKfx1llyptr8v34jo31km0rpa8c foreign key (hint_id) references hint (id);
alter table associated_component_ids_component_ids
    add constraint FKs5cn2vnju8fbmparcnr72flve foreign key (associated_component_ids_id) references associated_component_ids (id);
alter table associated_cut_blocks
    add constraint FKngynwiounsxnau9elv5ihvj69 foreign key (hint_id) references hint (id);
alter table associated_cut_blocks_block_ids
    add constraint FKfntqy2bqhjgk4pqfjoa9xmqas foreign key (associated_cut_blocks_id) references associated_cut_blocks (id);
alter table expected_clicked_coordinate
    add constraint FKd9in9kuqjh61xdhkie5lni0hw foreign key (hint_id) references hint (id);
alter table expected_clicked_coordinate_coordinates
    add constraint FK1qprluwslhf0iegpmg5wrb53q foreign key (expected_clicked_coordinate_id) references expected_clicked_coordinate (id);
alter table hint
    add constraint FKimua33mx0medwcjhttmemcpk foreign key (level_id) references level (id);

alter table portal_xmls
    add constraint FKleqtchdgt6hmw5tf6nkkio19o foreign key (hint_id) references hint (id);

alter table hint_hint_texts
    add constraint FK983x202hsw4vobnyatql3noex foreign key (hint_id) references hint (id);

alter table hint_expected_user_interaction
    add constraint FKj9jij3gyk5hd4skswhcikgo34 foreign key (hint_id) references hint (id);

alter table hint_expected_portal_js_code
    add constraint FKq4u157pkprl54duodrkriv49k foreign key (hint_id) references hint (id);


-- Start solution portals of levels:

create table portal_solution_hint
(
    id varchar(255) not null primary key,
    name varchar(255),
    level_id varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table portal_solution_hint_possible_coordinates
(
    portal_solution_hint_id varchar(255) not null,
    x integer not null,
    y integer not null
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table portal_solution_xmls
(
    portal_solution_hint_id varchar(255) not null,
    portal_solution_xml text
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table portal_solution_hint_associated_component_ids
(
    portal_solution_hint_id varchar(255) not null,
    associated_component_ids varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;


create table portal_solution_hint_code_block_to_be_tested (
    portal_solution_hint_id varchar(255) not null,
    code_block_to_be_tested varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

create table portal_solution_hint_key_code_blocks
(
    portal_solution_hint_id varchar(255) not null,
    key_code_blocks varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table portal_solution_xmls
    add constraint FK1n4pxpxt300j2k808o9fxgmpu foreign key (portal_solution_hint_id) references portal_solution_hint (id);

alter table portal_solution_hint
    add constraint FK4pax75e8gklxhexyphpce316n foreign key (level_id) references level (id);

alter table portal_solution_hint_possible_coordinates
    add constraint FK2jl6svoalggrt4915fq6hk49a foreign key (portal_solution_hint_id) references portal_solution_hint (id);

alter table portal_solution_hint_associated_component_ids
    add constraint FKawj3525dn6ti3ow3prp98efig foreign key (portal_solution_hint_id) references portal_solution_hint (id);

alter table portal_solution_hint_code_block_to_be_tested
    add constraint FKr8ajeiv4xk3pl2c0wul0mjqtd foreign key (portal_solution_hint_id) references portal_solution_hint (id);

alter table portal_solution_hint_key_code_blocks
    add constraint FK43uq39c1mpfo182626uv369b3 foreign key (portal_solution_hint_id) references portal_solution_hint (id);
