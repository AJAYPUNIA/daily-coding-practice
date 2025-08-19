
-- SQL: Identify customers without any orders (LEFT JOIN)
CREATE DATABASE  go;

USE go;

CREATE TABLE customers(
customer_id INT(50),
name VARCHAR(30)
);

INSERT INTO customers
( customer_id,name)
VALUES 
(1,"Alice"),
(2,"Bob"),
(3,"Charlie"),
(4,"Diana");


SELECT * FROM customers;


CREATE TABLE orders(
order_id INT(50),
customer_id INT(50),
order_date INT(10)
);

DROP TABLE orders;


INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(101,1,2024-01-01),
(102,2,2024-01-02);


SELECT * FROM orders;


SELECT customers.customer_id, customers.name
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;
