-- For each customer, return their second most recent order: 
-- customer_id, order_id, order_date.
-- If a customer has fewer than 2 orders, exclude them.

-- solution


SELECT customer_id , order_id , order_date
FROM(
	SELECT o.customer_id , o.order_id, o.order_date,
    RANK() OVER ( PARTITION BY o.customer_id ORDER BY o.order_date DESC) AS rnk 
    FROM Orders o
) ranked 
WHERE rnk = 2;



