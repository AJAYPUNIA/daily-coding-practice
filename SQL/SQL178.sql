-- For each customer, return their latest order (order_id, order_date, amount).



-- solution


SELECT customer_id , order_id , order_date , amount
FROM(
	SELECT order_id , order_date , amount,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS rnk
    FROM Orders
) ranked_order_id
WHERE rnk =1;