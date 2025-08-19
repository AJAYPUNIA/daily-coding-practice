-- Write a SQL query to get each employee’s latest salary 
-- (based on effective_date) along with their department.


-- solution


WITH ranked AS(
	SELECT
    e.employee_id,
    e.name,
    e.department_id,
    s.salary,
    s.effective_date,
    ROW_NUMBER() OVER (
    PARTITION BY e.employee_id ORDER BY s.effective_date DESC) AS rnk
    FROM Employees e
    INNER JOIN Salaries s ON e.employee_id = s.employee_id
)
SELECT 
	employee_id , name , department_id , salary
FROM ranked
WHERE rnk = 1;
