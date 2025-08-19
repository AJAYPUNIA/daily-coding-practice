-- query to return the name of the customer 
-- who placed the highest total order amount.

-- SOLUTION

SELECT customers.name , SUM(orders.amount) AS total_amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_amount DESC
LIMIT 1;
