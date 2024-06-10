CREATE TABLE films (
  id serial,
  name text, 
  release_date date
);

INSERT INTO films(name, release_date) VALUES ('The Matrix', '1999-03-31');
INSERT INTO films(name, release_date) VALUES ('Monster''s Inc', '1999-03-31');
INSERT INTO films(name, release_date) VALUES ('Call Me By Your Name', '2017-03-31');

SELECT * FROM films;
SELECT * FROM films WHERE TO_CHAR(release_date, 'YYYY') = '1999';

ALTER TABLE films
ADD COLUMN runtime INT,   -- Integer for minutes
ADD COLUMN category VARCHAR(255),
ADD COLUMN rating DECIMAL(3,1),  -- Allows for ratings like 8.5
ADD COLUMN box_office BIGINT; 

UPDATE films
SET runtime = 136, category = 'Science Fiction', rating = 8.7, box_office = 463517383 
WHERE name = 'The Matrix';


UPDATE films
SET runtime = 136, category = 'Animated', rating = 8.7, box_office = 463517383 
WHERE name = 'Monster''s Inc';  -- Update the row with id = 1

UPDATE films
SET runtime = 132, category = 'Romance', rating = 7.9, box_office = 41897643 
WHERE id = 3;  -- Update the row with id = 3

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);

INSERT INTO films(name, release_date) VALUES ('Call Me By Your Name', '2017-03-31');

UPDATE films
SET name = 'Call Me By Your Name', runtime = 136, category = 'Animated', rating = 8.7, box_office = 463517383 
WHERE name = 'Monster''s Inc';  -- Update the row with id = 1

ALTER TABLE films
ADD CONSTRAINT unique_release UNIQUE (release_date);
