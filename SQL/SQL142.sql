--  a SQL query to find all user_ids who placed more than one order on the same day.
-- Return: user_id, order_date, order_count

-- solution


SELECT user_id , order_date , COUNT(order_id ) as order_count
FROM Orders
GROUP BY user_id , order_date
HAVING order_count > 1;
