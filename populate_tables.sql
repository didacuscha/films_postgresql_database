-- Populate the films table with initial and additional movies
INSERT INTO films (name, release_date, runtime, category, rating, box_office) VALUES
('The Matrix', '1999-03-31', 136, 'Science Fiction', 8.7, 463517383),
('Monster''s Inc', '2001-11-02', 92, 'Animated', 8.1, 577425379),
('Call Me By Your Name', '2017-01-22', 132, 'Romance', 7.9, 41897643),
('Inception', '2010-07-16', 148, 'Science Fiction', 8.8, 836848102),
('The Dark Knight', '2008-07-18', 152, 'Action', 9.0, 1004558444),
('Pulp Fiction', '1994-10-14', 154, 'Crime', 8.9, 213928762),
('The Godfather', '1972-03-24', 175, 'Crime', 9.2, 134966411),
('The Shawshank Redemption', '1994-09-23', 142, 'Drama', 9.3, 28341469),
('The Lord of the Rings: The Return of the King', '2003-12-17', 201, 'Fantasy', 8.9, 1120199252),
('Forrest Gump', '1994-07-06', 142, 'Drama', 8.8, 678226459),
('The Lion King', '1994-06-24', 88, 'Animated', 8.5, 968511805),
('Fight Club', '1999-10-15', 139, 'Drama', 8.8, 101209702),
('Interstellar', '2014-11-07', 169, 'Science Fiction', 8.6, 677471339);

-- Populate the customers table
INSERT INTO customers (customer_id, customer_email, subscription) VALUES
(1, 'customer1@example.com', 'Premium') ON CONFLICT (customer_id) DO NOTHING,
(2, 'customer2@example.com', 'Basic') ON CONFLICT (customer_id) DO NOTHING,
(3, 'customer3@example.com', 'Standard') ON CONFLICT (customer_id) DO NOTHING,
(4, 'customer4@example.com', 'Premium') ON CONFLICT (customer_id) DO NOTHING,
(5, 'customer5@example.com', 'Basic') ON CONFLICT (customer_id) DO NOTHING;

-- Populate the watched table with at least 20 records
INSERT INTO watched (watched_id, watched_date, customer_id) VALUES
(1, '2024-01-01', 1),
(2, '2024-01-05', 2),
(3, '2024-01-10', 3),
(4, '2024-01-15', 1),
(5, '2024-01-20', 2),
(6, '2024-01-25', 3),
(7, '2024-01-30', 1),
(8, '2024-02-01', 2),
(9, '2024-02-05', 3),
(10, '2024-02-10', 4),
(11, '2024-02-15', 5),
(12, '2024-02-20', 4),
(13, '2024-02-25', 5),
(14, '2024-03-01', 1),
(15, '2024-03-05', 2),
(16, '2024-03-10', 3),
(17, '2024-03-15', 4),
(18, '2024-03-20', 5),
(19, '2024-03-25', 4),
(20, '2024-03-30', 5);

-- Populate the watched_movies table with at least 20 records
INSERT INTO watched_movies (movie_id, watched_id) VALUES
((SELECT movie_id FROM films WHERE name = 'The Matrix'), 1),
((SELECT movie_id FROM films WHERE name = 'Monster''s Inc'), 2),
((SELECT movie_id FROM films WHERE name = 'Call Me By Your Name'), 3),
((SELECT movie_id FROM films WHERE name = 'Inception'), 4),
((SELECT movie_id FROM films WHERE name = 'The Dark Knight'), 5),
((SELECT movie_id FROM films WHERE name = 'Pulp Fiction'), 6),
((SELECT movie_id FROM films WHERE name = 'The Godfather'), 7),
((SELECT movie_id FROM films WHERE name = 'The Shawshank Redemption'), 8),
((SELECT movie_id FROM films WHERE name = 'The Lord of the Rings: The Return of the King'), 9),
((SELECT movie_id FROM films WHERE name = 'Forrest Gump'), 10),
((SELECT movie_id FROM films WHERE name = 'The Lion King'), 11),
((SELECT movie_id FROM films WHERE name = 'Fight Club'), 12),
((SELECT movie_id FROM films WHERE name = 'Interstellar'), 13),
((SELECT movie_id FROM films WHERE name = 'The Matrix'), 14),
((SELECT movie_id FROM films WHERE name = 'Monster''s Inc'), 15),
((SELECT movie_id FROM films WHERE name = 'Call Me By Your Name'), 16),
((SELECT movie_id FROM films WHERE name = 'Inception'), 17),
((SELECT movie_id FROM films WHERE name = 'The Dark Knight'), 18),
((SELECT movie_id FROM films WHERE name = 'Pulp Fiction'), 19),
((SELECT movie_id FROM films WHERE name = 'The Godfather'), 20);
