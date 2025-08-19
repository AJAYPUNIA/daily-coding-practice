-- an SQL query to find the second highest salary in each department.



SELECT department_id , salary
FROM (
	  SELECT department_id , salary,
      DENSE_RANK() OVER ( PARTITION BY department_id ORDER BY salary DESC) AS rnk
      FROM Employee
) ranked_salaries
WHERE rnk = 2;