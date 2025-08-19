CREATE DATABASE st;


USE st;

# first table
CREATE TABLE products(
product_id INT, 
product_name VARCHAR(20)
);


INSERT INTO products
(product_id, product_name)
VALUES
(1,'iPhone'),
(2,'MacBook'),
(3,'iPad'),
(4,'AirPods');

#second table


CREATE TABLE orders(
order_id INT,
product_id INT,
order_date DATE
);



INSERT INTO orders
(order_id, product_id,order_date)
VALUES
(101,1,'2024-01-01'),
(102,2,'2024-01-03'),
(103,1,'2024-01-04');



# solution
SELECT products.product_name
FROM products
LEFT JOIN orders
ON products.product_id = orders.product_id
WHERE orders.product_id IS NULL;