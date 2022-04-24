
CREATE TABLE if not exists Song(
Id serial primary key, 
track_name varchar(40) not null, 
track_dur numeric(4,2), 
);

create table if not exists Album (
id serial primary key,
album_name varchar(40) not null
);

alter table Song add column id_album integer references album(id);

create table if not exists Singer (
id serial primary key,
singer_name varchar(40) not null,
id_album integer references album (id)
);

create table if not exists Genre (
id serial primary key,
genre_name varchar(40) not null,
id_singer integer references singer (id)
);

alter table Singer add column id_genre integer references genre(id);

create table if not exists website (
id_singer integer references singer (id),
id_genre integer references genre (id)
)