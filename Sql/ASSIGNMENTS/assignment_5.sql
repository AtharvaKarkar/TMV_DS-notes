-- Create a sample table
CREATE TABLE odd_table (
  id INT,
  data VARCHAR(50)
);

-- Insert some sample data
INSERT INTO odd_table (id, data)
VALUES
  (1, 'Record 1'),
  (2, 'Record 2'),
  (3, 'Record 3'),
  (4, 'Record 4'),
  (5, 'Record 5');

-- Retrieve odd records
SELECT * FROM odd_table WHERE id % 2 = 1;
