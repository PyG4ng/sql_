CREATE TABLE artists (
    id SERIAL NOT NULL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL,
    genre_id INT REFERENCES genres(id) UNIQUE
);

CREATE TABLE albums (
    id SERIAL NOT NULL PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL,
    artist_id INT REFERENCES artists(id) UNIQUE
);

CREATE TABLE tracks (
    id SERIAL NOT NULL PRIMARY KEY,
    track_name VARCHAR(50) NOT NULL,
    duration INT NOT NULL,
    album_id INT REFERENCES albums(id) UNIQUE
);
-- duration as an integer because it might be easier to put the duration in seconds and then convert it to minutes and seconds once the data is fetched

CREATE TABLE genres (
    id SERIAL NOT NULL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL,
);
