-- Write a query to get the top 2 employees with the highest salaries in each department.


-- solution


WITH joined AS(
	SELECT 
		e.employee_id,
		e.name,
		e.department_id,
		s.salary
    FROM Employees e
    INNER JOIN Salaries s ON e.employee_id = s.employee_id
),
ranked AS(
	SELECT
		employee_id,
		name,
		department_id,
		salary,
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM joined
)
SELECT employee_id ,name, department_id , salary
FROM ranked
WHERE rnk <=2
ORDER BY department_id , salary DESC;
	