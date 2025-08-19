-- query to find the customer_id who has spent the highest total amount across all orders.



-- solution

SELECT customer_id , SUM(order_amount) AS total_amount
FROM Orders
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 1;
