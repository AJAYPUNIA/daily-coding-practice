--  SQL query to return each customer’s most expensive product (by unit price) 
--  they have purchased, even if they bought multiple items.


-- solution 

WITH ranked_products AS (
	SELECT
    c.customer_id,
    c.name,
    p.product_name,
    p.price,
    ROW_NUMBER() OVER (
		PARTITION BY c.customer_id
        ORDER BY p.price DESC
	) AS rn
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    JOIN Products p ON o.product_id = p.product_id
)
SELECT customer_id , name , product_name , price 
FROM ranked_products
WHERE rn = 1;




