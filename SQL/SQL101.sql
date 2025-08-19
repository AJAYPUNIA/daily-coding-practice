-- Find all customers who placed more than one order.

-- Table: Orders
-- Columns:
-- 	•	order_id (int)
-- 	•	customer_id (int)
-- 	•	order_date (date)
-- 	•	amount (float)

--  Goal: Return customer_ids who have placed more than one order.


-- solution


SELECT customer_id
FROM Orders
GROUP BY  customer_id
HAVING COUNT(order_id) > 1;