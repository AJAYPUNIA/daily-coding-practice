-- finding second highest salary in the table

CREATE DATABASE UI;
USE UI;

CREATE TABLE employees(
id INT(20),
name VARCHAR(50),
salary INT(50)
);


INSERT INTO employees(id, name, salary)
VALUES
(1,"Alice",80000),
(2,"Bob",95000),
(3,"Charlie",70000),
(4,"Diana",95000),
(5,"Eva",60000);


SELECT * FROM  employees;


SELECT  DISTINCT(salary)
FROM employees
ORDER BY salary DESC
LIMIT 1





