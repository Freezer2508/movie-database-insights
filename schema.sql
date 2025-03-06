-- Create the Movies table
CREATE TABLE Movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    duration INT, -- in minutes
    rating DECIMAL(3,1),
    votes INT
);

-- Create the Genres table
CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) UNIQUE NOT NULL
);

-- Create the Movie_Genres junction table
CREATE TABLE Movie_Genres (
    movie_id INT REFERENCES Movies(movie_id) ON DELETE CASCADE,
    genre_id INT REFERENCES Genres(genre_id) ON DELETE CASCADE,
    PRIMARY KEY (movie_id, genre_id)
);

-- Create the Actors table
CREATE TABLE Actors (
    actor_id SERIAL PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL
);

-- Create the Movie_Actors junction table
CREATE TABLE Movie_Actors (
    movie_id INT REFERENCES Movies(movie_id) ON DELETE CASCADE,
    actor_id INT REFERENCES Actors(actor_id) ON DELETE CASCADE,
    PRIMARY KEY (movie_id, actor_id)
);

-- Create the Directors table
CREATE TABLE Directors (
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(255) NOT NULL
);

-- Create the Movie_Directors junction table
CREATE TABLE Movie_Directors (
    movie_id INT REFERENCES Movies(movie_id) ON DELETE CASCADE,
    director_id INT REFERENCES Directors(director_id) ON DELETE CASCADE,
    PRIMARY KEY (movie_id, director_id)
);

-- Create the Ratings table
CREATE TABLE Ratings (
    movie_id INT REFERENCES Movies(movie_id) ON DELETE CASCADE,
    avg_rating DECIMAL(3,1),
    total_votes INT,
    PRIMARY KEY (movie_id)
);
