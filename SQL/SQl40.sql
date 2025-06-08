#query to return each customer_id and their most recent order_date.


SELECT customer_id , MAX(order_date) AS recent_date
FROM orders
GROUP BY customer_id;