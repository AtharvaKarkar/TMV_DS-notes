# where clause appears immediately after the FROM clause.
# The WHERE clause contains one or more logical expression that evaluates each row in the table.

USE hr;
SELECT salary FROM employees_archives;
SELECT employee_id,first_name,last_name,salary FROM employees_archives WHERE salary > 20000 ORDER BY salary ASC ;

SELECT first_name,last_name FROM employees_archives WHERE salary <= 20000;