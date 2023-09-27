/*FETCH in sql*/
/*The OFFSET FETCH clause which is has similar function to the LIMIT vlause. The offset fetch clause allows you to skip
first rows in a result set before starting to return any rows.  */
/*offset fetch clauses are not supported in mysql db*/
/*instead you can use LIMIT it will return the same result */
USE hr;
SELECT employee_id, first_name,last_name,salary FROM employees_archives ORDER BY salary DESC LIMIT 1;

