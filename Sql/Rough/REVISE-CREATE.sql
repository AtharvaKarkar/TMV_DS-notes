CREATE DATABASE Students;
USE Students;
CREATE TABLE student_personal_info (
student_id INT AUTO_INCREMENT PRIMARY KEY,
student_fname VARCHAR(50) NOT NULL,
student_mname VARCHAR(50) NOT NULL,
student_lname VARCHAR(50) NOT NULL,
gender CHAR(1) NOT NULL /*Assuming 'M' for male, 'F' for feamle.*/
);

CREATE TABLE courses (
course_id INT 

);