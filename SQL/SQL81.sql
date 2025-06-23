--  query to return the customer_id of customers who have placed more than one order.
-- Orders
-- +------------+-------------+------------+
-- | order_id   | customer_id | order_date |
-- +------------+-------------+------------+



-- solution


SELECT customer_id 
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;