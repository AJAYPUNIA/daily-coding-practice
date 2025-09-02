-- Return, for each department_id, the second-highest current salary (where “current”
-- means the row with the latest effective_date per employee).
-- Output columns: department_id | second_highest_salary
-- If a department has fewer than 2 employees with a 
-- current salary, return NULL for that department.



-- solution

WITH latest_per_employee AS (
	SELECT
		s.employee_id,
        s.salary,
        ROW_NUMBER() OVER (
			PARTITION BY s.employee_id
            ORDER BY s.effective_date DESC
            ) AS rn
		FROM Salaries s
),
current_salary AS(
	SELECT employee_id , salary
    FROM latest_per_employee
    WHERE rn = 1
),
dept_current AS(
	SELECT 
		e.department_id , cs.salary
        FROM current_salary cs
        JOIN Employees e ON e.employee_id = cs.employee_id
),
ranked AS (
	SELECT
		department_id ,salary,
        RANK() OVER (PARTITION BY department_id  ORDER BY salary DESC ) AS rnk
	FROM dept_current
)
SELECT department_id , MAX(CASE WHEN rnk = 2 THEN salary END ) AS second_highest_salary
FROM ranked
GROUP BY department_id
ORDER BY department_id;