-- Write a SQL query to return the most recent order for each user_id.


-- solution

SELECT user_id , order_id , order_date
FROM (
      SELECT *, 
      ROW_NUMBER() OVER (PARTITION BY user_id  ORDER BY order_date DESC) AS rnk
      FROM Orders
) ranked_orders
WHERE rnk =1 ; 