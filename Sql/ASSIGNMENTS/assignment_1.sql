/* ATHARVA RATNAKAR KARKAR 
   DBMS/SQL ASSIGNMENT 1 
*/

/*creation of worker table*/

CREATE TABLE Worker (
Worker_id INT PRIMARY KEY AUTO_INCREMENT,
First_Name VARCHAR(30),
Last_Name VARCHAR (30),
Salary INT(30),
Joining_Date DATE,
Department VARCHAR(30)
);
/* insertion of values inside worker table */
INSERT INTO Worker(Worker_id,First_Name,Last_Name,Salary,Joining_Date,Department)
VALUES (004,'Amitabh','Singh',500000,'2014-02-20','Admin'),
(005,'Vivek','Bhati',500000,'2014-06-11','Admin'),
(006,'Vipul','Diwan',200000,'2014-02-20','Account'),
(007,'Satish','Kumar',75000,'2014-01-20','Account'),
(008,'Geetika','Chauhan',9000,'2014-04-11','Admin');

/*creation of bonus table */
CREATE TABLE Bonus(
Worker_Ref_Id INT PRIMARY KEY ,
Bonus_Date DATE,
Bonus_Amount INT(30)
);
SELECT * FROM Bonus;

/* Write a sql query to fetch first_name from worker table using the alias name <worker_name> */
SELECT First_Name AS Worker_Name
FROM Worker;

/* Query to fetch firstname from the worker table in uppercase */

SELECT UPPER(First_Name)
FROM Worker;

/*sql command to fetch unique values of department from worker table*/

SELECT DISTINCT Department 
FROM Worker;       /*DISTINCT is used to filter that results of a query to ensure that only unique values are returned */

/*
sql query to print only first 3 characters from first_name column of the worker table*/
SELECT LEFT(First_Name,3) AS First_Name_First_Three_Chars
FROM Worker;

/* sql query to find the position of the alphabet ('a') in the first name column 'Amitabh' from the worker table */
SELECT CHARINDEX('a', First_Name) AS position_of_a
FROM Workers
WHERE First_Name = 'Amitabh';

/*remove white-space from right side */

UPDATE Worker
SET First_Name = RTRIM(First_Name);

/*remove white-space from left side */

UPDATE Worker
SET Department = LTRIM(Department);

/*sql query that fetches the unique values of DEpartment from worker table and also prints its length*/

SELECT DISTINCT Department, LENGTH(Department) AS dpt_len
FROM Worker;

/*sql query to replacr 'a' with 'A' in first_name */

SELECT REPLACE (First_Name,'a','A') AS replaced_name FROM Worker;

/*combine first_name and last_name give space btwn them */

SELECT CONCAT (First_Name,' ',Last_Name) AS Complete_Name 
FROM Worker;

/*sql query to print all worker details from the worker table order by first_name ascending */
SELECT * FROM Worker ORDER BY First_Name ASC;   /*order by first_name asc : sorts the result set in ascending order*/

/*sql query to print all worker details from the worker table order by first_name ascending and department in descending*/
SELECT * FROM Worker ORDER BY First_Name ASC, Department DESC;

/*display only the details of vishal and satish*/

SELECT * FROM Worker 
WHERE First_Name IN( 'Vishal','Satish');   /* WHERE First_Name IN ('Vishal', 'Satish') specifies that you want to select rows where the "First_Name" column matches either 'Vishal' or 'Satish'.*/

/*details of workers with department 'admin' */

SELECT * FROM Worker
WHERE Department = 'Admin';

/*details of workers who's name starts with 'a' */
SELECT * FROM Worker
WHERE First_Name LIKE 'a%';   /*like is a operator that used to pattern matching in SQL */

/*details of workers who's name ends with 'a' */
SELECT * FROM Worker
WHERE First_Name LIKE '%a';

/*sql query to print details of employees who's salary is between 100000 and 500000*/
SELECT * FROM Worker
WHERE Salary BETWEEN 100000 AND 500000;

/*sql query to print details of the workers who joined in feb 2014*/
SELECT * FROM Worker
WHERE MONTH(Joining_Date) = 2 AND YEAR(Joining_Date) = 2014;

/*sql query to count the number of employees who work in admin department*/
SELECT COUNT(*) AS Emp_Count 
FROM Worker
WHERE Department = 'Admin';

/*sql query to 
fetch worker names with salaries >=500000 and <=100000*/

SELECT First_Name, Last_Name
FROM Worker
WHERE Salary>=500000 AND SALARY <=100000;

/*sql query to print current date and time */
SELECT CURRENT_TIMESTAMP() AS CurrentDateTime;

/*max salary employees*/
SELECT MAX(Salary) AS Highest_Salary
FROM Worker; 

/*sql query with min salary*/
SELECT MIN(Salary) AS Lowest_Salary
FROM Worker;
/*
sql query to show all departments along with the number of people working in there*/

SELECT Department, COUNT(*) AS Num_of_emp
FROM Worker
GROUP BY Department;  /*group by department groups the rows by the "department" column*/

/*Sql query to fetch first 5 records from worker table*/
SELECT * FROM Worker LIMIT 5;

/*Sql query to fetch last 5 records from worker table*/
SELECT * FROM Worker ORDER BY Worker_id DESC LIMIT 5;