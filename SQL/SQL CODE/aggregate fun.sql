use record;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50),
    amount DECIMAL(10, 2)
);

INSERT INTO sales VALUES
(1, 'Product A', 'Electronics', 500.00),
(2, 'Product B', 'Clothing', 300.00),
(3, 'Product C', 'Electronics', 700.00),
(4, 'Product D', 'Clothing', 450.00),
(5, 'Product E', 'Electronics', 600.00);
select * from sales;

SELECT AVG(amount) AS average_amount FROM sales;

SELECT COUNT(*) AS total_sales FROM sales;

SELECT DISTINCT category FROM sales;

SELECT MAX(amount) AS highest_sale FROM sales;

SELECT MIN(amount) AS lowest_sale FROM sales;
