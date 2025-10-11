/*This query will rank each product based on how many loyalty points per dollar it receives. This will allow me to observe each product's loyalty reward effectiveness */
SELECT store_name, product_name, total_units_sold, total_revenue, total_points_issued, points_per_dollar, avg_unit_price, SUM(total_points_issued)/NULLIF(SUM(total_revenue),0) AS points_intensity,
(SUM(total_points_issued)/NULLIF(SUM(total_revenue),0))*SUM(total_units_sold) AS loyalty_rank
FROM `grocery-store-sales-data.grocery_sales_data.calculating_loyalty`
GROUP BY store_name, product_name,total_units_sold, total_revenue, total_points_issued, points_per_dollar, avg_unit_price
ORDER BY loyalty_rank DESC; 
