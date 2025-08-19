-- SQL query to find the product with the highest total sales quantity within each category.


-- solution


SELECT product_name, category , total_quantity
FROM (
      SELECT 
      p.product_name,
      p.category,
      SUM(s.quantity) AS total_quantity,
      Rank() OVER (PARTITION BY p.category ORDER BY SUM(s.quantity) DESC ) AS rnk
      FROM Products p
      JOIN Sales  s ON p.product_id = s.product_id
      GROUP BY p.product_name , p.category
) ranked 
WHERE rnk = 1;