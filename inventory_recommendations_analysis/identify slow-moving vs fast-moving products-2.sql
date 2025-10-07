/*This query calculates the percentile rank for each product */
SELECT store_name, product_name, avg_daily_sales, total_sales_volume, days_sold,
PERCENT_RANK() OVER (ORDER BY avg_daily_sales)
AS sales_rank
FROM `grocery-store-sales-data.grocery_sales_data.product_summary` 