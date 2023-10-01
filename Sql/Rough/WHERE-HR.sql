# where clause appears immediately after the FROM clause.
# The WHERE clause contains one or more logical expression that evaluates each row in the table.

USE hr;
SELECT * FROM employees_archives;
SELECT salary FROM employees_archives;
SELECT employee_id,first_name,last_name,salary FROM employees_archives WHERE salary > 20000 ORDER BY salary ASC ;

SELECT first_name,last_name FROM employees_archives WHERE salary <= 20000;
USE hr;
SELECT employee_id,first_name,last_name,department_id FROM employees_archives WHERE department_id = 2 ORDER BY first_name;

/*sql where clause with character examples*/
SELECT employee_id,first_name,last_name FROM employees_archives WHERE last_name = 'Karkar';

SELECT employee_id,first_name,last_name,department_id FROM employees_archives WHERE hire_date = '2022-03-20' ORDER BY last_name DESC;

SELECT employee_id,first_name,department_id FROM employees_archives WHERE YEAR (hire_date) = 2019 ORDER BY hire_date DESC;

/*equal to operator*/
SELECT employee_id,first_name FROM employees_archives WHERE employee_id = 8;

/*not equal to operator*/
/*you can also use the AND operator to combine multiple expressions at the same time*/
SELECT employee_id,first_name,department_id FROM employees_archives WHERE department_id <> 5 AND department_id <>4 AND department_id <>1 ORDER BY first_name,last_name;

SELECT employee_id,last_name FROM employees_archives WHERE phone_number = NULL;  /*will return an empty result set.*/

SELECT employee_id,last_name FROM employees_archives WHERE phone_number IS NULL;

/*GREATE THAN expression*/

SELECT employee_id,first_name,last_name,salary FROM employees_archives WHERE salary> 20000 ORDER BY salary DESC;

/*LESSER THAN expression */
SELECT employee_id,first_name,last_name,salary FROM employees_archives WHERE salary < 20000 ORDER BY salary ASC;

SELECT employee_id,first_name,last_name,salary,department_id FROM employees_archives WHERE salary > 20000 AND department_id <>4 ORDER BY salary DESC;

/*greater than >= equalt to operator*/
SELECT first_name,last_name,salary AS high_salary FROM employees_archives  WHERE salary >= 25000 ORDER BY salary DESC;

/*<= less than equal to*/
SELECT first_name,last_name,employee_id,salary AS low_salary FROM employees_archives WHERE salary <=25000 ORDER BY salary DESC;