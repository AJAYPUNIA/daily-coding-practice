-- find Employees With the Highest Salary in Each Department

-- Write a query to return:
-- 	•	name
-- 	•	department_id
-- 	•	salary

-- …of employees who have the highest salary in their respective departments.


-- solution

SELECT name , department_id , MAX(salary) as maximum_salary
FROM Employee e
WHERE salary = (SELECT MAX(salary) 
                FROM Emplyee
                WHERE department_id = e.department_id
);


