-- 1. Artists Table
CREATE TABLE artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    country VARCHAR(50)
);

-- 2. Albums Table
CREATE TABLE albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_title VARCHAR(150) NOT NULL,
    artist_id INT,
    release_year INT,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

-- 3. Songs Table
CREATE TABLE songs (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_title VARCHAR(150) NOT NULL,
    artist_id INT,
        album_id INT,
    duration_secs INT,
    play_count BIGINT DEFAULT 0,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

-- 4. Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    signup_date DATE
);

-- 5. Playlist Songs (Many-to-Many relationship between Playlists/Users and Songs)
CREATE TABLE playlist_songs (
    playlist_id INT,
    user_id INT,
    song_id INT,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);
