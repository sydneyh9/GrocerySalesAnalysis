/*This query will categorize products into recommendations based on performance percentiles */

SELECT *, CASE
WHEN loyalty_rank >= 254.85 THEN 'High Performance & Keep Current Loyalty Program'
WHEN loyalty_rank <= 217.30 AND points_intensity <= 8.77 THEN 'Good Performance But Consider Increasing Loyalty Points'
WHEN loyalty_rank <= 217.30 AND points_intensity > 8.77 THEN 'High Intensity but Low Impact'
ELSE 'Monitor - moderate performance'
END AS loyalty_recommendation
FROM `grocery-store-sales-data.grocery_sales_data.loyalty_ranking`
ORDER BY loyalty_rank DESC;