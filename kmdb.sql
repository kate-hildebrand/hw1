
-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS characters;

-- Create new tables, according to your domain model
-- TODO!
-- "Entities" are movies, studios, and actors 
CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_name TEXT,
    year_released INTEGER, 
    mpaa_rating TEXT
);

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT,
    movie_id INTEGER
);

CREATE TABLE actors ( 
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT
);

-- "Relationship" between these are the characters played in each movie by each actor 
CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character_name TEXT,
    actor_id INTEGER,
    movie_id INTEGER    
);
-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (
    id,
    movie_name,
    year_released,
    mpaa_rating
)
VALUES (
        "1",
        "Batman Begins",                     
        "2005",
        "PG-13"
);

INSERT INTO movies (
    id,
    movie_name,
    year_released,
    mpaa_rating
)
VALUES (
        "2",
        "The Dark Knight",                     
        "2008",
        "PG-13"
);

INSERT INTO movies (
    id,
    movie_name,
    year_released,
    mpaa_rating
)
VALUES (
        "3",
        "The Dark Knight Rises",                     
        "2012",
        "PG-13"
);     

INSERT INTO studios (
    id,
    studio_name,
    movie_id
)
VALUES (
        "1",
        "Warner Bros.",                     
        "1"
);     

INSERT INTO studios (
    id,
    studio_name,
    movie_id
)
VALUES (
        "2",
        "Warner Bros.",                     
        "2"
); 

INSERT INTO studios (
    id,
    studio_name,
    movie_id
)
VALUES (
        "3",
        "Warner Bros.",                     
        "3"
); 

INSERT INTO actors ( 
    id,
    full_name)

 VALUES (
    "1",
    "Christian Bale"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "2",
    "Michael Caine"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "3",
    "Liam Neeson"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "4",
    "Katie Holmes"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "5",
    "Gary Oldman"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "6",
    "Heath Ledger"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "7",
    "Aaron Eckhart"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "8",
    "Maggie Gyllenhaal"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "9",
    "Tom Hardy"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "10",
    "Joseph Gordon-Levitt"
    );

INSERT INTO actors ( 
    id,
    full_name)

VALUES (
    "11",
    "Anne Hathaway"
    );

-- Relationship time using actor_id and movie_id from established tables for Characters 

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "1",
    "Bruce Wayne",
    "1",
    "1"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

 VALUES (
    "2",
    "Alfred",
    "2",
    "1"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "3",
    "Ra's Al Ghul",
    "3",
    "1"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "4",
    "Rachel Dawes",
    "4",
    "1"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "5",
    "Commissioner Gordon",
    "5",
    "1"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "6",
    "Bruce Wayne",
    "1",
    "2"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "7",
    "Joker",
    "6",
    "2"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "8",
    "Harvey Dent",
    "7",
    "2"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "9",
    "Alred",
    "2",
    "2"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "10",
    "Rachel Dawes",
    "8",
    "2"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "11",
    "Bruce Wayne",
    "1",
    "3"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "12",
    "Commissioner Gordon",
    "5",
    "3"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "13",
    "Bane",
    "9",
    "3"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "14",
    "John Blake",
    "10",
    "3"
    );

INSERT INTO characters ( 
    id,
    character_name, 
    actor_id,
    movie_id)

VALUES (
    "15",
    "Selina Kyle",
    "11",
    "3"
    );

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

SELECT movies.movie_name, movies.year_released, movies.mpaa_rating,studios.studio_name
    FROM movies INNER JOIN studios ON movies.id = studios.movie_id;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

SELECT movies.movie_name, actors.full_name, characters.character_name
    FROM characters 
    INNER JOIN actors ON actors.id = characters.actor_id  
    INNER JOIN movies ON movies.id = characters.movie_id;