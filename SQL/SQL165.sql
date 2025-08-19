--  a SQL query to find the most recently hired employee in each department.


SELECT employee_id , name , department_id ,  department_name , hire_date
FROM(
	SELECT e.employee_id ,
		e.name,
        e.department_id,
        d.department_name,
        e.hire_date,
        RANK() OVER (PARTITION BY e.department_id ORDER BY e.hire_date DESC) AS rnk
    FROM Employees e
    INNER JOIN Departments d 
    ON e.department_id = d.department_id
) ranked
WHERE rnk = 1
ORDER BY hire_date DESC;