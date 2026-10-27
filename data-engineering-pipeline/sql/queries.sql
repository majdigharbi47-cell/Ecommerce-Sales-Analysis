CREATE VIEW sales_summary AS
SELECT
    year,
    country,
    category,
    sales,
    profit,
    quantity
FROM sales;

SELECT ROUND(SUM(sales)::numeric,2) AS total_sales
FROM sales;

SELECT ROUND(SUM(profit)::numeric,2) AS total_profit
FROM sales;

SELECT COUNT(*) AS total_orders
FROM sales;


SELECT ROUND(
    ((SUM(profit)/SUM(sales))*100)::numeric,
    2
) AS margin_percent
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
       ROUND(SUM(sales)::numeric,2) AS total_sales,
       ROUND(SUM(profit)::numeric,2) AS total_profit
FROM sales
GROUP BY year
ORDER BY year;
