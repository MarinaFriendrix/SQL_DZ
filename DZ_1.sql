CREATE DATABASE IF NOT EXISTS DZ1;
USE DZ1;
CREATE TABLE IF NOT EXISTS phone
(
-- Столбцы таблицы
-- Формула столбца: имя_столбца тип_данных ограничения
id INT PRIMARY KEY AUTO_INCREMENT, 
product_name VARCHAR(20),
manufacturer VARCHAR(20),
product_count INT,
price INT

);

INSERT phone (product_name, manufacturer,product_count, price)
VALUES
	("IPhone X", "Apple", "3", "76000"), -- id = 1
    ("IPhone 8", "Apple", "2", "51000"), -- id = 2
	("Galaxy S9", "Samsung", "2", "56000"), -- id = 3
    ("Galaxy S8", "Samsung", "1", "41000"), -- id = 4
    ("P20 Pro", "Huawei", "5", "36000"); -- id = 5
    
SELECT *
FROM phone;

SELECT product_name, manufacturer, price
FROM phone
WHERE product_count > "2";

SELECT product_name, manufacturer,product_count, price
FROM phone
WHERE manufacturer = "Samsung";

SELECT product_name, manufacturer,product_count, price
FROM phone
WHERE product_count * price > 100000 AND product_count * price < 145000;

SELECT product_name, manufacturer,product_count, price
FROM phone
WHERE product_name LIKE "IPhone%";

SELECT product_name, manufacturer,product_count, price
FROM phone
WHERE product_name LIKE "Galaxy%";

SELECT product_name, manufacturer,product_count, price
FROM phone
WHERE product_name LIKE "%8%";

SELECT product_name, manufacturer,product_count, price
FROM phone
WHERE product_name RLIKE "[0123456789]";

    