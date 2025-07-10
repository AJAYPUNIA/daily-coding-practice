--  SQL query to find all customers who made more than one order, and also 
-- return the total amount they spent.


SELECT customer_id , SUM(amount) AS total_amount
FROM Orders
GROUP BY customer_id
HAVING COUNT(customer_id) > 1;