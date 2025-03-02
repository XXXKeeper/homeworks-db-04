-- Задание 2
-- Название и продолжительность самого длительного трека.
SELECT title, duration
FROM songs
WHERE duration = (SELECT MAX(duration) FROM songs);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT title, duration
FROM songs
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title
FROM collection
WHERE year_release >= '2018-01-01'
  AND year_release <= '2020-12-31';

-- Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM artists
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT title
FROM songs
WHERE title LIKE '%мой%'
   OR title LIKE '%my%'
   OR title LIKE '%Мой%'
   OR title LIKE '%My%';

-- Задание 3
-- Количество исполнителей в каждом жанре.
SELECT style_title, count(*) AS count_artists
FROM styles_artists
GROUP BY style_title;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.title, count(*) AS count_songs
FROM songs s
         JOIN albums a ON s.album_id = a.id
WHERE album_id IN (SELECT id FROM albums WHERE year_release >= '2019-01-01' AND year_release <= '2020-12-31')
GROUP BY a.title;

-- Средняя продолжительность треков по каждому альбому.
SELECT a.title, AVG(duration)
FROM songs s
         JOIN albums a ON s.album_id = a.id
GROUP BY a.title;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT name
FROM artists
         JOIN artist_album aa ON artists.id = aa.artist_id
         JOIN albums ON aa.album_id = albums.id
WHERE year_release < '2020-01-01'
   OR year_release > '2020-12-31';

-- Названия сборников, в которых присутствует конкретный исполнитель (Майкл Джексон).
SELECT distinct c.title AS collection_title
FROM collection c
         JOIN songs_collection sc ON c.id = sc.collection_id
         JOIN songs s ON sc.song_id = s.id
         JOIN artist_album aa ON s.album_id = aa.album_id
         JOIN artists ON aa.artist_id = artists.id
WHERE name = 'Майкл Джексон';
