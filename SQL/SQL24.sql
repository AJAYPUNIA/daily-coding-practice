-- Query to return the product_name of the product with the highest total sales amount.



CREATE DATABASE rt;

USE rt;


CREATE TABLE sales(
sale_id INT,
product_id INT,
sale_amount INT,
sale_date DATE
);


INSERT INTO sales
(sale_id, product_id, sale_amount, sale_date)
VALUES
(1,101,250,'2024-01-01'),
(2,102,100,'2024-01-02'),
(3,101,300,'2024-01-03'),
(4,103,150,'2024-01-04'),
(5,101,100,'2024-01-05');



SELECT * FROM sales;


# table 2 products


CREATE TABLE products(
product_id INT,
product_name VARCHAR(50)
);


INSERT INTO products
(product_id, product_name)
VALUES
(101,'iPhone'),
(102,'Samsung'),
(103,'Pixel');

SELECT * FROM products;




# solution 

SELECT products.product_name , SUM(sales.sale_amount) AS total_amount
FROM products
INNER JOIN sales
ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_amount DESC
LIMIT 1;

