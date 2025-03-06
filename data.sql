-- Insert sample movies
INSERT INTO Movies (title, release_year, duration, rating, votes) VALUES
    ('Inception', 2010, 148, 8.8, 2200000),
    ('The Dark Knight', 2008, 152, 9.0, 2500000),
    ('Interstellar', 2014, 169, 8.6, 1800000),
    ('Parasite', 2019, 132, 8.6, 850000),
    ('The Matrix', 1999, 136, 8.7, 1900000);

-- Insert sample genres
INSERT INTO Genres (genre_name) VALUES
    ('Sci-Fi'),
    ('Action'),
    ('Drama'),
    ('Thriller');

-- Link movies to genres
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES
    (1, 1), (1, 3),  -- Inception: Sci-Fi, Drama
    (2, 2), (2, 3),  -- The Dark Knight: Action, Drama
    (3, 1), (3, 3),  -- Interstellar: Sci-Fi, Drama
    (4, 3), (4, 4),  -- Parasite: Drama, Thriller
    (5, 1), (5, 2);  -- The Matrix: Sci-Fi, Action

-- Insert sample actors
INSERT INTO Actors (actor_name) VALUES
    ('Leonardo DiCaprio'),
    ('Christian Bale'),
    ('Matthew McConaughey'),
    ('Song Kang-ho'),
    ('Keanu Reeves');

-- Link actors to movies
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES
    (1, 1),  -- Leonardo DiCaprio -> Inception
    (2, 2),  -- Christian Bale -> The Dark Knight
    (3, 3),  -- Matthew McConaughey -> Interstellar
    (4, 4),  -- Song Kang-ho -> Parasite
    (5, 5);  -- Keanu Reeves -> The Matrix

-- Insert sample directors
INSERT INTO Directors (director_name) VALUES
    ('Christopher Nolan'),
    ('Bong Joon-ho'),
    ('Lana Wachowski');

-- Link directors to movies
INSERT INTO Movie_Directors (movie_id, director_id) VALUES
    (1, 1), (2, 1), (3, 1),  -- Nolan directed Inception, Dark Knight, Interstellar
    (4, 2),  -- Bong Joon-ho directed Parasite
    (5, 3);  -- Lana Wachowski directed The Matrix

-- Insert sample ratings
INSERT INTO Ratings (movie_id, avg_rating, total_votes) VALUES
    (1, 8.8, 2200000),
    (2, 9.0, 2500000),
    (3, 8.6, 1800000),
    (4, 8.6, 850000),
    (5, 8.7, 1900000);
