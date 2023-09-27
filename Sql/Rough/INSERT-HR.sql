USE hr;
INSERT INTO employees_archives (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES (1,"atharva","karkar","ak@gmail.com",7856124536,'2020-09-25',4,20000,7,8);  /*inserting only a single value at a time.*/

INSERT INTO employees_archives(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES (2, 'John', 'Doe', 'john.doe@example.com', 1234567890, '2021-01-15', 3, 25000, 5, 2),
    (3, 'Alice', 'Smith', 'alice.smith@example.com', 9876543210, '2019-07-10', 1, 30000, 8, 4),
    (4, 'Eva', 'Johnson', 'eva.johnson@example.com', 5551234567, '2022-03-20', 2, 22000, 6, 3),
    (5, 'Michael', 'Brown', 'michael.brown@example.com', 6549873210, '2021-11-05', 3, 27000, 5, 1),
    (6, 'Sophia', 'Wilson', 'sophia.wilson@example.com', 7891234567, '2020-04-18', 2, 21000, 7, 2),
    (7, 'Oliver', 'Taylor', 'oliver.taylor@example.com', 1237894560, '2018-02-09', 1, 32000, 8, 4),
    (8, 'Emma', 'Anderson', 'emma.anderson@example.com', 9876543210, '2019-06-30', 4, 19000, 6, 3),
    (9, 'William', 'Lee', 'william.lee@example.com', 3216549870, '2020-08-14', 2, 23000, 5, 1),
    (10, 'Lily', 'Clark', 'lily.clark@example.com', 5557891234, '2022-05-27', 3, 26000, 7, 2);      /*inserting multiple values at a time*/

SELECT * FROM employees_archives ORDER BY employee_id DESC;
SELECT * FROM employees_archives ORDER BY manager_id DESC;
SELECT * FROM employees_archives ORDER BY last_name ASC;
SELECT employee_id, first_name, last_name,hire_date,job_id AS job_new_id FROM employees_archives ORDER BY job_id ASC ;
SELECT * FROM employees_archives ORDER BY job_id ASC;
SELECT first_name, last_name,email,salary FROM employees_archives ORDER BY salary ASC;
SELECT * FROM employees_archives;
SELECT first_name,last_name,hire_date FROM employees_archives ORDER BY hire_date ASC;
USE hr; 
/*if you use two or more columns, the DISTINCT will use the combination of values in those columns to evaludate the duplicate. */
/*SELECT salary FROM employees_archives ORDER BY salary DESC;*/
SELECT DISTINCT salary FROM employees_archives ORDER BY salary DESC ;  /*remove duplicates rows from a result set.*/
/*NOTE: The DISTINCE keyword, only removes the duplicate rows from the result set. It doesn't delete duplicate rows in the table.*/

/*applying distinct keyword on multiple columns*/
SELECT DISTINCT salary,manager_id FROM employees_archives ORDER BY manager_id, salary DESC;  /* note : that you will still see the duplicate in the manager_id column because the DISTINCT operator uses values from both job
manager_id and salary to evaluate the duplicate, not just values in the manager_id column.*/
SELECT DISTINCT phone_number FROM employees_archives ORDER BY phone_number DESC;



