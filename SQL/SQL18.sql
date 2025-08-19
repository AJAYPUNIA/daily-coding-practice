-- Query to find all customers who have never placed an order.


USE ap;

CREATE TABLE customers_2(
customer_id INT,
name VARCHAR(50)
);

INSERT INTO customers_2
(customer_id, name)
VALUES
(1,'Alice'),
(2,'Bob'),
(3,'Charlie'),
(4,'Diana');




CREATE TABLE orders_5(
order_id INT,
customer_id INT,
order_date DATE
);



INSERT INTO orders_5
(order_id, customer_id, order_date)
VALUES
(101,1,'2024-01-01'),
(102,2,'2024-01-02'),
(103,1,'2024-01-03');


SELECT customers.customer_id, customers.name
FROM customers
LEFT JOIN orders_5
ON customers.customer_id = orders_5.customer_id
WHERE orders_5.customer_id IS NULL;
