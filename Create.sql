CREATE TABLE IF NOT EXISTS Singer(
	singer_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
	);

CREATE TABLE IF NOT EXISTS Genre(
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
	);

CREATE TABLE IF NOT EXISTS SingerGenre(
	singer_id INTEGER REFERENCES Singer(singer_id),
	genre_id INTEGER REFERENCES Genre(genre_id),
	CONSTRAINT pk PRIMARY KEY (singer_id, genre_id)
	);
	
CREATE TABLE IF NOT EXISTS Album(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	year INTEGER NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS AlbumSinger(
	singer_id INTEGER REFERENCES Singer(singer_id),
	album_id INTEGER REFERENCES Album(album_id),
	CONSTRAINT prk PRIMARY KEY (singer_id, album_id)
	);
	
CREATE TABLE IF NOT EXISTS Track(
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(album_id)
	);
	
CREATE TABLE IF NOT EXISTS Collection(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	year INTEGER NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS CollectionTrack(
	collection_id INTEGER REFERENCES Collection(collection_id),
	track_id INTEGER REFERENCES Track(track_id),
	CONSTRAINT pkey PRIMARY KEY (collection_id, track_id)
	);