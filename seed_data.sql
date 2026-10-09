-- 1. Insert Artists
INSERT INTO artists (artist_name, genre, country) VALUES
('A.R. Rahman', 'Pop/Devotional', 'India'),
('Sid Sriram', 'Melody', 'India'),
('Anirudh Ravichander', 'Rock/Fast', 'India'),
('The Weeknd', 'Synth-Pop', 'Canada'),
('Taylor Swift', 'Pop', 'USA');

-- 2. Insert Albums
INSERT INTO albums (album_title, artist_id, release_year) VALUES
('Rockstar', 1, 2011),
('Ala Vaikunthapurramuloo', 2, 2020),
('Master', 3, 2021),
('After Hours', 4, 2020),
('Midnights', 5, 2022);

-- 3. Insert Songs
INSERT INTO songs (song_title, artist_id, album_id, duration_secs, play_count) VALUES
('Nenjukulle', 1, 1, 260, 1500000),
('Kun Faya Kun', 1, 1, 370, 3200000),
('Samajavaragamana', 2, 2, 210, 5000000),
('Butta Bomma', 2, 2, 195, 8000000),
('Vaathi Coming', 3, 3, 225, 6500000),
('Blinding Lights', 4, 4, 200, 12000000),
('Save Your Tears', 4, 4, 215, 9500000),
('Anti-Hero', 5, 5, 201, 7100000);

-- 4. Insert Users
INSERT INTO users (username, email, signup_date) VALUES
('rahul_dev', 'rahul@gmail.com', '2024-01-15'),
('priya_99', 'priya@yahoo.com', '2024-02-10'),
('kiran_k', 'kiran@outlook.com', '2024-03-05'),
('ananya_reddy', 'ananya@gmail.com', '2024-04-12');

-- 5. Insert Playlist Songs (Users adding songs to their collection)
INSERT INTO playlist_songs (playlist_id, user_id, song_id) VALUES
(1, 1, 3), -- Rahul added Samajavaragamana
(1, 1, 4), -- Rahul added Butta Bomma
(1, 1, 6), -- Rahul added Blinding Lights
(2, 2, 1), -- Priya added Nenjukulle
(2, 2, 2), -- Priya added Kun Faya Kun
(2, 2, 8), -- Priya added Anti-Hero
(3, 3, 5), -- Kiran added Vaathi Coming
(3, 3, 7); -- Kiran added Save Your Tears
