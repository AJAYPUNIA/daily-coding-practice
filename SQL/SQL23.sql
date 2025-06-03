-- Query to find the second highest salary

CREATE DATABASE ty;

USE ty;

CREATE TABLE employees(
employee_id INT,
name VARCHAR(50),
salary INT
);


INSERT INTO employees
(employee_id , name,salary)
VALUES
(1,'John',70000),
(2,'Emily',85000),
(3,'Robert',70000),
(4,'Jessica',90000),
(5,'Michael',90000);


SELECT salary 
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees)
ORDER BY salary DESC
LIMIT 1;