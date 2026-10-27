CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date VARCHAR(50),
    ship_date VARCHAR(50),
    ship_mode VARCHAR(100),
    customer_name VARCHAR(255),
    segment VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(100),
    region VARCHAR(100),
    product_id VARCHAR(100),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name TEXT,
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT,
    shipping_cost FLOAT,
    order_priority VARCHAR(50),
    year INT
);
SELECT * FROM sales;
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 5;
SELECT ROUND(SUM(sales)::numeric,2) AS total_sales
FROM sales;
SELECT category,
       ROUND(SUM(sales)::numeric,2) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT country,
       ROUND(SUM(sales)::numeric,2) AS total_sales
FROM sales
GROUP BY country
ORDER BY total_sales DESC
LIMIT 10;
SELECT year,
       ROUND(SUM(profit)::numeric,2) AS total_profit
FROM sales
GROUP BY year
ORDER BY year;
SELECT COUNT(*) FROM sales;