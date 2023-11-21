-- creating a sample table
CREATE TABLE my_table_odd (
id INT,
dataa VARCHAR(50)
);

-- inserting some sample data 
INSERT INTO my_table_odd(id,dataa) VALUE (1,'Record 1');
INSERT INTO my_table_odd (id, dataa) VALUES (2, 'Record 2');
INSERT INTO my_table_odd (id, dataa) VALUES (3, 'Record 3');
INSERT INTO my_table_odd (id, dataa) VALUES (4, 'Record 4');
INSERT INTO my_table_odd (id, dataa) VALUES (5, 'Record 5');

-- Retrieve odd records
SELECT * FROM my_table_odd WHERE id % 2 = 1;
