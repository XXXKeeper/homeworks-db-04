INSERT INTO artists (name)
VALUES ('Майкл Джексон'),
       ('Леди Гага'),
       ('Эминем'),
       ('Queen');

INSERT INTO styles (title)
VALUES ('хип-хоп'),
       ('поп'),
       ('рок'),
       ('R&B');

INSERT INTO albums (title, year_release)
VALUES ('XSCAPE', '2019-05-13'),
       ('Michael', '2010-12-10'),
       ('ARTPOP', '2013-11-11'),
       ('Born This Way', '2011-05-23'),
       ('Recovery', '2010-06-18'),
       ('Encore', '2004-11-12'),
       ('The Eye', '1998-12-09'),
       ('Made in Heaven', '1995-11-06');

INSERT INTO songs (album_id, title, duration)
VALUES (1, 'Love Never Felt So Good', 240),
       (1, 'My Chicago', 240),
       (2, 'Monster', 300),
       (2, 'Hollywood Tonight', 270),
       (3, 'My Aura', 240),
       (3, 'Venus', 237),
       (4, 'Marry the Night', 264),
       (4, 'Born This Way', 261),
       (5, 'Cold Wind Blows', 302),
       (6, 'Curtains Up', 46),
       (6, 'Like Toy Soldiers', 294),
       (7, 'I Want It All', 300),
       (7, 'Dragon Attack', 280),
       (8, 'It’s a Beautiful Day', 154),
       (8, 'Mother Love', 320);

INSERT INTO collection (id, title, year_release)
VALUES (1, 'На каждый день', '2024-01-01'),
       (2, 'Летний вечер', '2025-01-01'),
       (3, 'Отпуск', '2020-05-01'),
       (4, 'Доброе утро', '2018-03-01'),
       (5, 'Любимое', '2025-02-01');

INSERT INTO artist_album (artist_id, album_id)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (4, 7),
       (4, 8);

INSERT INTO songs_collection (song_id, collection_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 2),
       (5, 2),
       (6, 2),
       (7, 3),
       (8, 3),
       (9, 3),
       (10, 4),
       (11, 4),
       (12, 4),
       (13, 5),
       (14, 5),
       (15, 5);

INSERT INTO styles_artists (style_title, artist_id)
VALUES ('поп', 1),
       ('поп', 2),
       ('хип-хоп', 3),
       ('рок', 4),
       ('R&B', 2);
