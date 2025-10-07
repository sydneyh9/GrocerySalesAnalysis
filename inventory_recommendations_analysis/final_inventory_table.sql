/*This query will reorder my table with the rankings classifications by those classifications so that I can make recommendations based on classified products */
SELECT store_name, product_name, avg_daily_sales, total_sales_volume, days_sold, sales_rank, rankings_class
FROM `grocery-store-sales-data.grocery_sales_data.sales_rankings_class`
ORDER BY rankings_class