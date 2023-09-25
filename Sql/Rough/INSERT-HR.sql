USE hr;
INSERT INTO employees_archives (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES (1,"atharva","karkar","ak@gmail.com",7856124536,'2020-09-25',4,20000,7,8);

SELECT * FROM employees_archives WHERE employee_id = 1;
