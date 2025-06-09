# query to get the total sale amount per customer, sorted by highest total first.


SELECT customer_id , SUM(sale_amount) AS total_amount
FROM sales
GROUP BY customer_id
ORDER BY total_amount DESC;