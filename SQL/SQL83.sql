 -- Second Highest Salary

-- Table: Employee
-- Columns:
-- 	•	id (int)
-- 	•	name (varchar)
-- 	•	salary (int)

-- 🧩 Question:
-- Write a SQL query to find the second highest salary from the Employee table.

SELECT salary 
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
