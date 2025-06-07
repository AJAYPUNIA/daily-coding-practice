# query to return the average salary from each department

CREATE DATABASE gi;

USE gi;

CREATE TABLE employees(
id INT,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);


INSERT INTO employees
(id, name, department, salary)
VALUES
(1,'Alice','HR',50000),
(2,'Bob','IT',60000),
(3,'Charlie','IT',70000),
(4,'Diana','HR',52000),
(5,'Eve','Finance',55000);



SELECT * FROM employees;


# SOLUTION
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;