#Query to return the name and salary of the highest-paid employee in each department.

CREATE DATABASE rg;


USE rg;


CREATE TABLE employees(
employee_id INT,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);

INSERT INTO employees
(employee_id, name, department, salary)
VALUES
(1,'Alice','Sales',50000),
(2,'Bob','Sales',60000),
(3,'Charlie','HR',55000),
(4,'Diana','HR',52000),
(5,'Ethan','IT',75000),
(6,'Fiona','IT',70000);


SELECT * FROM employees;



#solution
SELECT department, name , salary
FROM employees e 
WHERE salary = (
      SELECT MAX(salary) 
      FROM employees
      WHERE department = e.department
);



