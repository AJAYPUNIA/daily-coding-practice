#Query to display the highest salary from each department.

CREATE DATABASE lo;

USE lo;


CREATE TABLE employees(
employee_id INT,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);


INSERT INTO employees
(employee_id, name, department, salary)
VALUES
(1,'Alice','HR',60000),
(2,'Bob','IT',75000),
(3,'Charlie','HR',50000),
(4,'Diana','IT',80000),
(5,'Eva','Finance',65000);



SELECT * FROM employees;

#solution
SELECT department, MAX(salary) as maximum_salary
FROM employees
GROUP BY department;




