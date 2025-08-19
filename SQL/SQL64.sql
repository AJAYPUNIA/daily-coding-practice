-- Query to return the top 2 customers who have spent the most in total.


-- SOLUTION


SELECT customers.customer_id , customers.name , SUM(orders.amount) AS total_amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders,customer_id
GROUP BY customers.customer_id , customers.name
ORDER BY total_amount DESC
LIMIT 2;