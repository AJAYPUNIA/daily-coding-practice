-- Write a query to find the employee(s) with the highest salary in each department.

-- Table: Employee



-- solution


SELECT employee_id , department_id 
FROM Employee e
WHERE salary = (
                SELECT MAX(salary)
                FROM Employee
                WHERE department_id = e.department_id
);
                
                


