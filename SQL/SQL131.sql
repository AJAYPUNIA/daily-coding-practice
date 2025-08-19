-- Find the customers who placed the most expensive order (by amount) in each month. 
-- Return customer_id, order_id, amount, and order_month.

-- solution


SELECT customer_id , order_id , amount , order_month
FROM(
	 SELECT customer_id , order_id , amount,
     TO_CHAR(order_date, 'YYYY-MM') As order_month,
     DENSE_RANK() OVER (PARTITION BY TO_CHAR(order_date, 'YYYY-MM') ORDER BY amount DESC) AS rnk
     FROM Orders
     ) AS most_expensive_orders
WHERE rnk = 1;