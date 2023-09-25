USE hr ;
CREATE TABLE countries (
country_id CHAR(2) PRIMARY KEY,
country_name VARCHAR(2) DEFAULT NULL,
region_id INT(11) NOT NULL
);

CREATE TABLE locations (
location_id INT (11) AUTO_INCREMENT PRIMARY KEY,
street_address VARCHAR(20) DEFAULT NULL,
postal_code INT(11) DEFAULT NULL,
city VARCHAR(10) NOT NULL,
state_province VARCHAR(11) DEFAULT NULL,
country_id CHAR(2) NOT NULL
);

CREATE TABLE jobs (
job_id INT(11) AUTO_INCREMENT PRIMARY KEY,
job_title VARCHAR (35) NOT NULL,
min_salary DECIMAL (8,2) DEFAULT NULL,
max_salary DECIMAL (8,2) DEFAULT NULL
);

CREATE TABLE departments (
department_id INT(11) AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR (30) NOT NULL,
location_id INT(11) DEFAULT NULL
);

CREATE TABLE employees (
employee_id INT (11) AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (20) DEFAULT NULL,
last_name VARCHAR (20) DEFAULT NULL,
email VARCHAR (100) DEFAULT NULL,
phone_number VARCHAR(20) DEFAULT NULL,
hire_date DATE NOT NULL,
job_id INT (11) NOT NULL,
salary DECIMAL (8,2) NOT NULL,
manager_id INT (11) DEFAULT NULL,
department_id INT (11) DEFAULT NULL
);

CREATE TABLE dependents (
dependent_id INT (11) AUTO_INCREMENT  PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
relationship VARCHAR (20) NOT NULL,
employee_id INT (11) NOT NULL
);
SELECT * FROM dependents;
USE hr;
SELECT * FROM employees;
SELECT employee_id, first_name, last_name FROM employees;
SELECT first_name AS First, last_name AS LAST FROM employees;
SELECT email AS MAIL , job_id AS ID_JOB FROM employees;
/*AS keyword is used to provide an alias or a temporary name for the table or a column in the result set.  */
SELECT * FROM countries;
INSERT INTO countries (country_id,country_name,region_id) VALUES 
(1,"BHARAT",43); /*inserting a single row into table*/

INSERT INTO countries (country_id,country_name,region_id) VALUES 
(2,"INDIA",45), (3,"USA",78), (4,"RUSSIA",89);

SELECT * FROM countries;

DESCRIBE TABLE countries;

INSERT INTO dependents (first_name,last_name,relationship,employee_id) VALUES ('Dustin','Johnson','Child',785);
INSERT INTO dependents  VALUES (45,'manoj','kale','child',56);
INSERT INTO dependents (first_name,last_name,relationship,employee_id) VALUES ('Shri','Nivas','Dad',20), ('Kishor', 'Aware','Son',78);
SELECT * FROM dependents;
SELECT * FROM dependents WHERE employee_id = 9;
INSERT INTO dependents (first_name,last_name,relationship,employee_id) VALUES ("Niraj", "Chopra", "uncle",20), ("Sushil", "Kumar","son",18), ("Pablo","Escobar","brother",9);
CREATE TABLE dependent_archives (
dependent_id INT(15) AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
relationship VARCHAR(20) NOT NULL,
remployee_id INT(15) NOT NULL
);

INSERT INTO dependent_archives SELECT * FROM dependents;
 CREATE TABLE countries_archives (
 country_id INT (10) AUTO_INCREMENT PRIMARY KEY,
 country_name VARCHAR(20) NOT NULL,
 region_id INT (10) NOT NULL
 );
 INSERT INTO countries_archives SELECT * FROM countries;
 SELECT * FROM countries_archives;
SELECT * FROM dependent_archives;
ALTER TABLE countries MODIFY country_name VARCHAR(20);

USE hr;
DESCRIBE TABLE employees;

USE hr;
CREATE TABLE employees_archives (
employee_id INT (10) PRIMARY KEY,
first_name VARCHAR(20) DEFAULT NULL,
last_name VARCHAR (20) DEFAULT NULL,
email VARCHAR(100) DEFAULT NULL,
phone_number varchar(20) DEFAULT NULL,
hire_date DATE NOT NULL,
job_id INT (20) DEFAULT NULL,
salary DECIMAL (8,2) NOT NULL,
manager_id INT(20) DEFAULT NULL,
department_id INT(20) DEFAULT NULL
);

INSERT INTO employees_archives SELECT * FROM employees;
SELECT * FROM employees_archives;

CREATE TABLE jobs_archives (
job_id INT(20) PRIMARY KEY,
job_title VARCHAR(35) NOT NULL,
min_salary DECIMAL(8,2) NOT NULL,
max_salary DECIMAL (8,2) NOT NULL
);

INSERT INTO jobs_archives SELECT * FROM jobs;
SELECT * FROM employees_archives;
SELECT job_id,phone_number,first_name,salary FROM employees;
SELECT @hostname;
SELECT user(); /*command to find out the username*/
SELECT * FROM countries;
SELECT * FROM countries WHERE country_id = 4;
SELECT country_id, country_name, country_id *2 AS new_id FROM countries;
SELECT * FROM employees;

