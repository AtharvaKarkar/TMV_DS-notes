-- Retrieve common records between two tables without using JOIN
SELECT id, data FROM odd_table
INTERSECT
SELECT id, data FROM even_table;
