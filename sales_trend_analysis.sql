CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales VALUES
(1,'2025-01-05',500,101),
(2,'2025-01-10',700,102),
(3,'2025-02-15',800,103),
(4,'2025-02-20',1200,104),
(5,'2025-03-08',900,105),
(6,'2025-03-18',1100,106);

SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;