CREATE DATABASE IF NOT EXISTS DZ2;
USE DZ2;
CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE,
	count_product INT
);
INSERT sales (order_date, count_product)
VALUES
	('2022-01-01', 156), -- id = 1
    ('2022-01-02', 180), -- id = 2
	('2022-01-03', 21), -- id = 3
    ('2022-01-04', 124), -- id = 4
    ('2022-01-05', 341); -- id = 5
    
SELECT * FROM sales;

SELECT
	id AS 'ID заказа',
    
CASE
	WHEN count_product < 100 THEN "Маленький заказ"
    WHEN count_product BETWEEN 100 AND 300 THEN "Средний заказ"
    ELSE "Большой заказ"
END AS "Тип заказа"

FROM sales;

CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id VARCHAR(5) , 
	amount FLOAT,
    order_status VARCHAR(15)

);

INSERT orders (employee_id, amount, order_status)
VALUES
	('e03', 15.00, 'OPEN'), -- id = 1
    ('e01', 25.50, 'OPEN'), -- id = 2
	('e05', 100.70, 'CLOSED'), -- id = 3
    ('e02', 22.18, 'OPEN'), -- id = 4
    ('e04', 9.50, 'CANCELLED'); -- id = 5
    
SELECT * FROM orders;

SELECT
	id,
    employee_id,
    amount,
CASE
	WHEN order_status = 'OPEN' THEN "Order is in open state"
    WHEN order_status = 'CLOSED' THEN "Order is closed"
    ELSE "Order is cancelled"
END AS "full_order_status"

FROM orders;
