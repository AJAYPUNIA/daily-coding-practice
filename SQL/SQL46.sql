--  query to return each customer’s most recent order date.


SELECT customer_id, MAX(order_date) AS recent_date
FROM orders
GROUP BY customer_id;