-- a query to find the top-selling product (by total quantity) for each category.


-- solution


SELECT category ,product_name ,total_quantity
FROM (SELECT p.category , p.product_name,
      SUM(s.quantity) AS total_quantity,
      RANK() OVER (PARTITION BY p.category ORDER BY SUM(s.quantity) DESC ) AS rnk
      FROM Products p
      JOIN Sales s ON p.product_id =  s.product_id 
      GROUP BY p.category , p.product_name 
      ) ranked 
      WHERE rnk = 1;