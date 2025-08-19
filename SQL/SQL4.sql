-- finding the salaries which are higher then average salary

CREATE DATABASE yt;

USE yt;

CREATE TABLE employees(
id INT,
name VARCHAR(40),
salary INT
);

INSERT INTO employees(id, name , salary)
VALUES
(1,"Alice",80000),
(2,"Bob",95000),
(3,"Charlie",70000),
(4,"Diana",95000),
(5,"Eva",60000);


SELECT * FROM employees;

SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);