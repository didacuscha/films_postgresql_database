CREATE TABLE IF NOT EXISTS films (
  movie_id SERIAL PRIMARY KEY,
  name text UNIQUE,
  release_date date,
  runtime INT,             -- Integer for minutes
  category VARCHAR(255),
  rating DECIMAL(3,1),     -- Allows for ratings like 8.5
  box_office BIGINT        -- Box office revenue
);

ALTER TABLE films
ADD CONSTRAINT unique_release UNIQUE (release_date);

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);

CREATE TABLE IF NOT EXISTS customers (
  customer_id integer PRIMARY KEY,
  customer_email text,
  subscription text
);

CREATE TABLE IF NOT EXISTS watched (
  watched_id integer PRIMARY KEY,
  watched_date date,
  customer_id integer
);

CREATE TABLE IF NOT EXISTS watched_movies (
  movie_id integer,
  watched_id integer
);

ALTER TABLE watched
ADD FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id);

ALTER TABLE watched_movies
ADD FOREIGN KEY (movie_id) 
REFERENCES films(movie_id);

ALTER TABLE watched_movies
ADD FOREIGN KEY (watched_id) 
REFERENCES watched(watched_id);

