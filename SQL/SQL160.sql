--  the employee_id, name, department_id, and salary of the 
--  top 2 earners per department. Include ties.


-- solution


SELECT * 
FROM(
	SELECT * ,
             DENSE_RANK() OVER(PARTITION BY user_id  ORDER BY salary DESC) AS rnk
	FROM Employees
) ranked_employees
WHERE rnk <=2;