USE sem2;
CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(20),
    amount DECIMAL,
    order_status VARCHAR(20)
   
);
INSERT orders(employee_id, amount,order_status)
VALUES 
	('e03',15.00,'OPEN'),
    ('e01',25.50,'OPEN'),
    ('e05',100.70,'CLOSED'),
    ('e02',22.18,'OPEN'),
    ('e04',9.50,'CANCELLED');

SELECT id, employee_id, amount, order_status, -- Перед CASE ставится запятая
CASE
	WHEN order_status = 'OPEN' THEN "Order is in open state"
    WHEN order_status = 'CLOSED' THEN "Order is closed"
    ELSE "Order is cancelled"
END AS ful_order_status
FROM orders;