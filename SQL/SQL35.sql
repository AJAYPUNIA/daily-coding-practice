#Query to find the second highest salary in the employees table.

CREATE DATABASE hy;

USE hy;


CREATE TABLE employees(
employee_id INT,
name VARCHAR(50),
salary INT
);



INSERT INTO employees
(employee_id, name, salary)
VALUES
(1,'Alice',5000),
(2,'Bob',7000),
(3,'Charlie',6000),
(4,'Diana',7000),
(5,'Eve',4000);


SELECT * FROM employees;


#SOLUTION

SELECT salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees)
ORDER BY salary DESC
LIMIT 1;