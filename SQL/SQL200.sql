SELECT e.employee_id , s.salary
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id
WHERE s.effective_date = (
						SELECT MAX(s2.effective_date)
                        FROM Salaries s2
                        WHERE s2.employee_id = e.employee_id);
