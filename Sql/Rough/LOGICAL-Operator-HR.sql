/*Logical operator*/

USE hr;
/*AND operator allows you to construct multiple conditions in the WHERE clause*/

SELECT first_name,last_name,salary AS average_salary FROM employees_archives WHERE salary > 20000 AND salary < 25000 ORDER BY salary DESC;
/*IS NULL
- This IS NULL operator compares a value with a null value 
and returns true if the compared value is null; otherwise,it returns false.

*/
SELECT first_name,last_name,phone_number FROM employees_archives;
SELECT first_name,last_name,phone_number FROM employees_archives WHERE phone_number IS NULL ORDER BY first_name,last_name;

/*BETWEEN
- between operator searches for values that are within a set of values, given the min and maxi value
*/
SELECT first_name,last_name,salary FROM employees_archives WHERE salary BETWEEN 20000 AND 30000 ORDER BY salary DESC;

/*IN
- The IN operator compares a value to a list of specified values , The IN operator returns true if the compared value matches at least one value in the list; otherwise false.alter

*/
SELECT department_id FROM employees_archives;

SELECT 
    first_name, last_name, department_id
FROM
    employees_archives
WHERE
    department_id IN (2, 8)
ORDER BY department_id;

SELECT first_name,last_name,department_id FROM employees_archives WHERE department_id BETWEEN 2 AND 8 ORDER BY department_id DESC;

/*LIKE 
- Like operator compares a value to similar values 
using a wildcard operator which is % and _ (underscore) 
% : represents multiple characters,zero etc
_ : represents a single character.

*/

SELECT employee_id,first_name,last_name FROM employees_archives WHERE first_name LIKE 'at%' ORDER BY first_name;
SELECT employee_id,first_name,salary FROM employees_archives WHERE first_name LIKE 'em%' ORDER BY first_name;
SELECT employee_id,first_name,salary,department_id FROM employees_archives WHERE first_name LIKE '_A%' ORDER BY first_name;  

/*ALL 
-the any operator compares a value to any value in a set according to the condition.
*/

SELECT first_name,last_name,salary FROM employees_archives WHERE salary > ANY(SELECT AVG(salary) FROM employees_archives GROUP BY department_id) ORDER BY first_name,last_name;

