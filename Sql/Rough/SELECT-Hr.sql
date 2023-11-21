/*REVISION OF SQL SELECT COmmand 
- To select data from a table, specify the table name in the FROM clause and a list of column in the SELECT clause.
- The SELECT * is the shorthand of the SELECT all columns in a table.*/
USE hr;
SELECT * FROM departments;   /* "*" is used query data from all column*/
SELECT * FROM employees;
SELECT first_name,last_name,email FROM employees WHERE salary > 100 ;
SELECT first_name,last_name FROM employees ORDER BY salary DESC;
USE hr;
/*To assign an expression or a column an alias,you specify the AS kwyword followed by the column alias as follows */
SELECT first_name,last_name,salary,salary * 2 AS incremental_salary FROM employees;

