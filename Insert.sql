INSERT INTO Singer(name)
VALUES ('Michael Jackson'),
('Eminem'),
('Jennifer Lopez'),
('Linkin Park'),
('Madonna'),
('Elton John'),
('Nirvana'),
('Amy Winehouse');

INSERT INTO Genre(name)
VALUES ('Jazz'),
('Pop'),
('Latino'),
('Hip-Hop/Rap'),
('Rock');

INSERT INTO SingerGenre(singer_id, genre_id)
VALUES (1, 2), (1, 5), (2, 4), (3, 2), (3, 3), (4, 4), (4, 5), (5, 2), (6, 2), (7, 5), (8, 1);

INSERT INTO Album(name, year)
VALUES ('Invincible', 2001),
('Kamikaze', 2018),
('Meteora', 2003),
('Madame X', 2019),
('Back To Black', 2006),
('Nevermind', 1991),
('The Lockdown Sessions', 2021),
('Love?', 2011);

INSERT INTO Album(name, year)
VALUES ('Music to Be Murdered By', 2020);

INSERT INTO AlbumSinger(singer_id, album_id)
VALUES (1, 1), (2, 2), (4, 3), (5, 4), (8, 5), (7, 6), (6, 7), (3, 8);

INSERT INTO AlbumSinger(singer_id, album_id)
VALUES (2, 9);

INSERT INTO Track(name, duration, album_id)
VALUES ('I am into you', 200, 8),
('Invading My Mind', 200, 8),
('You Are My Life', 273, 1),
('Cry', 301, 1),
('Good Guy', 142, 2),
('The Ringer', 337, 2),
('Figure.09', 198, 3),
('Numb', 188, 3),
('Crazy', 242, 4),
('Dark Ballet', 254, 4),
('Addicted', 166, 5),
('Tears Dry on Their Own', 186, 5),
('In Bloom', 254, 6),
('Come as You Are', 218, 6),
('After All', 208, 7),
('Finish Line', 264, 7);

INSERT INTO Track(name, duration, album_id)
VALUES ('Darkness', 337, 9);

INSERT INTO Collection(name, year)
VALUES ('Nirvana', 2002),
('Dance Again… the Hits', 2012),
('Rock Hits', 2019),
('Latino Hits', 2020),
('Rap Hits', 2017),
('The best of jazz', 2008),
('Michael', 2010),
('The best of Likin Park', 2018);

INSERT INTO CollectionTrack(collection_id, track_id)
VALUES (1, 13), (2, 1), (3, 7), (3, 8), (3, 13), (3, 14), (4, 2), (5, 3), (5, 4), (6, 12), (7, 3), (8, 7);