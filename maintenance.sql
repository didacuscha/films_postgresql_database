CREATE ROLE god WITH SUPERUSER;

SET ROLE god;

SELECT * 
FROM pg_indexes 
WHERE tablename = 'films';

SELECT * 
FROM pg_indexes 
WHERE tablename = 'customers';

SELECT * 
FROM pg_indexes 
WHERE tablename = 'watched';

SELECT * 
FROM pg_indexes 
WHERE tablename = 'watched_movies';

SELECT pg_size_pretty(
    pg_table_size('films')
) as table_size,
  pg_size_pretty(pg_indexes_size('films')) as index_size,
  pg_size_pretty(
    pg_total_relation_size('films')
) as total_size;