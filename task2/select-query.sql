-- query on table with index
SELECT * FROM Task2WithIndex WHERE fname LIKE '%fname%';

-- query on table without index
SELECT * FROM Task2WithoutIndex WHERE fname LIKE '%fname%'
