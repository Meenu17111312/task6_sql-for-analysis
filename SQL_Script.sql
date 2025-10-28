
SELECT
    STRFTIME('%Y', order_date) AS sales_year,
    STRFTIME('%m', order_date) AS sales_month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data_amazon
GROUP BY sales_year, sales_month
ORDER BY sales_year, sales_month;
