-- Write an SQL query to find customers who made more than one order in the 
-- same month and year.
-- Return their customer_id, name, month, year, and total number of
--  orders in that month.


-- solution

SELECT c.customer_id , c.name , MONTH(o.order_date) AS month, 
YEAR(o.order_date)AS year , COUNT(o.order_id ) AS total_orders
FROM Customers c INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name , month , year 
HAVING COUNT(order_id) >=2
ORDER BY year , month;

