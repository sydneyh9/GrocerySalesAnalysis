/*This query will look for how many total points were issued for each product, how heavily products are rewarded per dollar spent, and which products have the highest reward intensity */
SELECT store_name, product_name, SUM(quantity) AS total_units_sold,
SUM(final_amount) AS total_revenue, SUM(loyalty_points) AS total_points_issued, SAFE_DIVIDE((SUM(loyalty_points) * 1.0),(SUM(final_amount))) AS points_per_dollar,
SAFE_DIVIDE((SUM(final_amount) * 1.0),SUM(quantity)) AS avg_unit_price
FROM `grocery-store-sales-data.grocery_sales_data.data grouped by transaction date`
GROUP BY store_name, product_name
ORDER BY store_name, total_points_issued DESC;