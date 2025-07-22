-- a SQL query to find the second highest salary in each department.
-- If a department has less than 2 employees, don’t include it.

-- solution

SELECT DISTINCT department_id , salary AS second_highest_salary
FROM (SELECT department_id , salary,
      RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
	  FROM Employees
) ranked_employees
WHERE rnk =2;
