-- Write a query to find customers who made at least one purchase in 
-- every month of Q1 2024 (i.e., January, February, and March).


-- solution


SELECT customer_id
FROM (SELECT customer_id , EXTRACT(MONTH FROM purchase_date) AS month
      FROM purchases
      WHERE purchase_date BETWEEN '2024-01-01' AND '2024-03-31'
) monthly_purchases
GROUP BY customer_id  
HAVING COUNT(DISTINCT Month) = 3;