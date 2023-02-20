CREATE DATABASE IF NOT EXISTS sem2; -- Создаете БД, если БД не создана
USE sem2;
CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    count_product INT
   
);

-- DML: INSERT, DELETE, UPDATE, SELECT
INSERT sales(order_date, count_product)
VALUES 
	('2022-01-01','156'),
    ('2022-01-02',347),
    ('2022-01-03',517),
    ('2022-01-04',128),
    ('2022-01-05',147);
    
SELECT * FROM sales;