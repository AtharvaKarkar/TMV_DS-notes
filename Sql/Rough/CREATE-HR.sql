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


