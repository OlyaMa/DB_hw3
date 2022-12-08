SELECT g.name, COUNT(s.name) FROM Genre AS g
LEFT JOIN SingerGenre AS sg ON g.genre_id = sg.genre_id
LEFT JOIN Singer AS s ON sg.singer_id = s.singer_id
GROUP BY g.name
ORDER BY COUNT(s.name);

SELECT a.year, COUNT(t.name) FROM Album AS a
LEFT JOIN Track AS t ON t.album_id = a.album_id
WHERE (a.year >= 2019) AND (a.year <= 2020)
GROUP BY a.year;

SELECT a.name, AVG(t.duration) FROM Album AS a
LEFT JOIN Track AS t ON t.album_id = a.album_id
GROUP BY a.name
ORDER BY AVG(t.duration);

SELECT s.name FROM Singer AS s
WHERE s.name NOT IN (
    SELECT DISTINCT s.name FROM Singer AS s
    LEFT JOIN AlbumSinger AS als ON s.singer_id = als.singer_id
    LEFT JOIN Album AS a ON als.album_id = a.album_id
    WHERE a.year = 2020
);

SELECT c.name FROM Collection AS c
LEFT JOIN CollectionTrack AS ct ON c.collection_id = ct.collection_id
LEFT JOIN Track AS t ON ct.track_id = t.track_id
LEFT JOIN Album AS a ON t.album_id = a.album_id
LEFT JOIN AlbumSinger AS als ON a.album_id = als.album_id
LEFT JOIN Singer AS s ON als.singer_id = s.singer_id
WHERE s.name ILIKE '%nirvana%'
GROUP BY c.name;

SELECT a.name FROM Album AS a
LEFT JOIN AlbumSinger AS als ON a.album_id = als.album_id
LEFT JOIN Singer AS s ON als.singer_id = s.singer_id
LEFT JOIN SingerGenre AS sg ON s.singer_id = sg.singer_id
LEFT JOIN Genre AS g ON sg.genre_id = g.genre_id
GROUP BY a.name
HAVING COUNT(DISTINCT g.name) > 1;

SELECT t.name FROM Track AS t
LEFT JOIN CollectionTrack AS ct ON t.track_id = ct.track_id
WHERE ct.track_id is NULL;

SELECT s.name, t.duration FROM Track AS t
LEFT JOIN Album AS a ON t.album_id = a.album_id
LEFT JOIN AlbumSinger AS als ON a.album_id = als.album_id
LEFT JOIN Singer AS s ON als.singer_id = s.singer_id
GROUP BY s.name, t.duration
HAVING t.duration = (SELECT MIN(duration) FROM Track)
ORDER BY s.name;

SELECT a.name FROM Album AS a
LEFT JOIN Track AS t ON a.album_id = t.album_id
WHERE t.album_id IN (
    SELECT album_id FROM track
    GROUP BY album_id
    HAVING COUNT(track_id) = (
        SELECT count(track_id) FROM track
        GROUP BY album_id
        ORDER BY count
        limit 1
    )
)
ORDER BY a.name;