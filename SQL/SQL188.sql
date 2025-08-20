-- Write a query to find the second highest salary in each department.
-- If a department has only one employee, return NULL for the second highest salary.

-- solution


SELECT
	d.department_id,
    MAX(CASE WHEN rnk = 2  THEN salary END) AS second_highest_salary
FROM(
	SELECT
		department_id , salary,
		RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM Employees
) d
GROUP BY d.department_id;