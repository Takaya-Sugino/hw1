-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output


-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output


-- The SQL statement for the cast output
-- TODO!

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS roles;

.width 25 20 20 20 20;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year TEXT,
    rating TEXT,
    director TEXT
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    actor_name TEXT
);

CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_name TEXT,
    movie_id INTEGER,
    actor_id INTEGER
);

INSERT INTO movies (
    id,
    title,
    year,
    rating,
    director
)
VALUES (
    "1",
    "Batman Begins",
    "2005",
    "PG-13",
    "Christopher Nolan"
);

INSERT INTO movies (
    id,
    title,
    year,
    rating,
    director
)
VALUES (
    "2",
    "The Dark Knight",
    "2008",
    "PG-13",
    "Christopher Nolan"
);
INSERT INTO movies (
    id,
    title,
    year,
    rating,
    director
)
VALUES (
    "3",
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    "Christopher Nolan"
);

INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "1",
    "Christian Bale"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "2",
    "Michael Caine"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "3",
    "Liam Neeson"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "4",
    "Katie Holmes"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "5",
    "Gary Oldman"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "6",
    "Heath Ledger"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "7",
    "Aaron Eckhart"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "8",
    "Maggie Gyllenhaal"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "9",
    "Tom Hardy"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "10",
    "Joseph Gordon-Levitt"
); 
INSERT INTO actors (
    id, 
    actor_name
)
VALUES (
    "11",
    "Anne Hathaway"
); 

INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "1",
    "Bruce Wayne",
    "1",
    "1"
);

INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "2",
    "Alfred",
    "1",
    "2"
);

INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "3",
    "Ra's Al Ghul",
    "1",
    "3"
);

INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "4",
    "Rachel Daves",
    "1",
    "4"
);

INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "5",
    "Commissioner Gordon",
    "1",
    "5"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "6",
    "Bruce Wayne",
    "2",
    "1"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "7",
    "Joker",
    "2",
    "6"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "8",
    "Harvey Dent",
    "2",
    "7"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "9",
    "Alfred",
    "2",
    "2"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "10",
    "Rachel Dawes",
    "2",
    "8"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "11",
    "Bruce Wayne",
    "3",
    "1"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "12",
    "Commissioner Gordon",
    "3",
    "5"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "13",
    "Bane",
    "3",
    "9"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "14",
    "John Blake",
    "3",
    "10"
);
INSERT INTO roles (
    id,
    role_name,
    movie_id,
    actor_id
)
VALUES (
    "15",
    "Selina Kyle",
    "3",
    "11"
);

.print "Movies"
.print "======"
SELECT title, year, rating, director from movies;
.print ""

.print ""
.print "Top Cast"
.print "========"
SELECT movies.title, actors.actor_name, roles.role_name
FROM roles
INNER JOIN movies on movies.id = roles.movie_id
INNER JOIN actors on actors.id = roles.actor_id;
.print ""