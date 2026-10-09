--1. most Streamed Songs(top Songs by play count)
SELECT song_title, play_count 
FROM songs
ORDER BY play_count DESC;

--2. Songs by a Specific Artist(A.R. Rahman)
SELECT s.song_title, a.artist_name , s.duration_secs
FROM songs s
JOIN artists a ON s.artist_id = a.artist_id
WHERE a.artist_name= 'A.R. Rahman';

--3. Total Play Count Per Artist
SELECT a.artist_name ,SUM(s.play_count) AS total_artist_plays
FROM songs s
JOIN artists a ON s.artist_id= a.artist_id
GROUP BY a.artist_name
ORDER BY total_artist_plays DESC;

--4.User Playlists Details
SELECT u.username, s.song_title , ar.artist_name , ps.added_at
FROM playlist_songs ps
JOIN users u ON ps.user_id = u.user_id
JOIN songs s ON ps.song_id = s.song_id
JOIN artists ar ON s.artist_id = ar.artist_id;

--5. Top Most Streamed Song for Each Artist (Window Function)
WITH ranked_songs AS( 
SELECT 
  s.song_title,
  a.artist_name,
  s.play_count,
  ROW_NUMBER() OVER(PARTITION BY a.artist_name ORDER BY s.play_count DESC) as rn
  FROM songs s
  JOIN artists a ON s.artist_id = a.artist_id
  )
  SELECT artist_name, song_title , play_count
  FROM ranked_songs
  where rn=1;

--6. Songs With Play Count Greater Than Average
  SELECT song_title , play_count
  FROM songs
  WHERE play_count > (SELECT AVG(play_count) FROM songs);

--7.Total Songs and Total Duration Per Album 
  SELECT 
  al.album_title,
  ar.artist_name,
  COUNT(s.song_id) AS total_songs,
  SUM(s.duration_secs) AS total_album_duration
  FROM albums al 
  JOIN artists ar ON al.artist_id = ar.artist_id
  LEFT JOIN songs s ON al.album_id = s.album_id
  GROUP BY al.album_title , ar.artist_name;
