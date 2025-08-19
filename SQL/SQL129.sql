-- Find the departments where the total salary expense is more than 100,000. 
-- Show the department ID and the total salary.

SELECT department_id , SUM(salary) AS total_salary_expense
FROM Employee
GROUP BY department_id 
HAVING SUM(salary) > 100000;  # use oiriginal column name in having because every database does not supprt appyling on aggregate function with having clause
