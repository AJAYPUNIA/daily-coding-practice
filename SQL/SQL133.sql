--  top 2 customers who spent the most in each month.


-- solution


SELECT customer_id , order_month ,  total_amount
FROM(
	SELECT customer_id ,
    TO_CHAR(order_date, 'YYYY-MM') AS order_month,
    SUM(amount) AS total_amount,
    RANK() OVER (PARTITION BY TO_CHAR(order_date , 'YYYY-MM') ORDER BY SUM(amount) DESC) AS rnk
    FROM Orders
    GROUP BY customer_id , TO_CHAR(order_date, 'YYYY-MM')
    ) maximum_spenders
WHERE rnk <= 2;