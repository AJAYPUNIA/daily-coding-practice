#query to display the highest-paid employee in each department.

CREATE DATABASE pl;


USE pl;


CREATE TABLE employees(
employee_id INT,
name VARCHAR(20),
department VARCHAR(20),
salary INT
);


INSERT INTO employees
(employee_id, name, department,salary)
VALUES
(1,'Alice','HR',50000),
(2,'Bob','IT',60000),
(3,'Charlie','HR',55000),
(4,'Diana','IT',65000),
(5,'Eva','Sales',62000);



SELECT * FROM employees;


#solution


SELECT e.department , e.name, e.salary AS maximum_salary
FROM employees e
WHERE e.salary = (SELECT MAX(salary) FROM employees WHERE department = e.department);



