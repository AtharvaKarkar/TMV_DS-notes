/* LIMIT keyword in sql */
/*limit tag is used to limit the number of rows returned by the select statement*/
USE hr;
SELECT employee_id,first_name, last_name FROM employees_archives ORDER BY first_name;  /*all rows will be displayed*/
/*using sql limit to get the top N rows with the highest or lowest values */
SELECT employee_id,last_name,salary FROM employees_archives ORDER BY salary ASC;

SELECT employee_id,first_name,last_name,salary FROM employees_archives ORDER BY salary DESC LIMIT 5; /*this will return atleast 5 rows in the result set returned by the SELECT clause.*/
/*over here the order by clause sorts the employees by salary in descending / ascending order then the limit clause restricts 5 rows returned from the query.*/
SELECT employee_id,first_name,last_name,salary FROM employees_archives ORDER BY salary ASC LIMIT 5;

/*offset 1 means that you should skip the first row in the sorted result set, returned by the query.
so in simple terms this below query will return the employees with second-highest salary */
SELECT employee_id,first_name,last_name,salary FROM employees_archives ORDER BY salary ASC LIMIT 5 OFFSET 1;

SELECT DISTINCT salary,first_name FROM employees_archives ORDER BY salary ASC LIMIT 5 OFFSET 1;

