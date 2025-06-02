-- Query to return the second highest salary from the table

USE ap;


CREATE TABLE employees(
id INT,
name VARCHAR(50),
salary INT
);


INSERT INTO employees
(id, name, salary)
VALUES
(1,'Ajay',60000),
(2,'Priya',75000),
(3,'Rohan',88000),
(4,'Neha',75000),
(5,'Sameer',99000);


SELECT * FROM employees;




SELECT salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees)
ORDER BY salary DESC
LIMIT 1;

