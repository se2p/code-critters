alter table mine add column creation_end datetime(6);
alter table mine add column creation_start datetime(6);

create table game_humans
(
    id      varchar(255) not null primary key,
    count   integer      not null,
    cut     varchar(255),
    init    varchar(255),
    killed  bit          not null,
    game_id varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table game_humans
    add constraint FKr1q6giyfqm01ouqxfl0f8d7ub foreign key (game_id) references game (id);


create table game_mutants
(
    id        varchar(255) not null primary key,
    count     integer      not null,
    killed    bit          not null,
    game_id   varchar(255),
    mutant_id varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table game_mutants
    add constraint FK3liub2689kyx50hggj6hmkjso foreign key (game_id) references game (id);

alter table game_mutants
    add constraint FK2jlv73fxoqxe5pts0ibee5pnc foreign key (mutant_id) references mutant (id);


alter table mine add column x_position integer not null;
alter table mine add column y_position integer not null;


alter table mine add column deleted bit not null;
alter table mine add column deletion_date_time datetime(6);
alter table mine add column updated bit not null;

create table pause_time
(
    id          varchar(255) not null primary key ,
    pause_end   datetime(6),
    pause_start datetime(6),
    game_id     varchar(255)
) COLLATE='latin1_swedish_ci'
    ENGINE=InnoDB
;

alter table pause_time
    add constraint FK46g8gg5r2ygismjfwhv4le6qe foreign key (game_id) references game (id);
