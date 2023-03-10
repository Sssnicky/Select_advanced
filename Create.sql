create table if not exists genres (
	genre_id SERIAL primary key, 
	name VARCHAR(30) unique not null 
);

create table if not exists artists (
	artist_id SERIAL primary key,
	name VARCHAR(50) not null 
);

create table if not exists albums (
	album_id SERIAL primary key,
	name VARCHAR(60) not null,
	year integer not null
);

create table if not exists songs (
	song_id serial primary key,
	name VARCHAR(60) not null,
	duration integer not null,
	album_id integer references albums(album_id)
);

create table if not exists collections (
	collection_id serial primary key,
	name VARCHAR(100) not null,
	year integer not null
);

create table if not exists artist_genre (
	artist_id integer references artists(artist_id),
	genre_id integer references genres(genre_id),
	constraint ag primary key (artist_id, genre_id)
);

create table if not exists artist_album (
	album_id integer references albums(album_id),
	artist_id integer references artists(artist_id),
	constraint aa primary key (album_id, artist_id)
);

create table if not exists song_collection (
	song_id integer references songs(song_id),
	collection_id integer references collections(collection_id),
	constraint sc primary key (song_id, collection_id)
);
