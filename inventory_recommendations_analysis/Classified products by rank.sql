/* This classifies each product by their percentile rank into a new column called rankings_class */
SELECT *, CASE WHEN sales_rank >= 0.8 THEN 'Fast-moving'
WHEN sales_rank <= 0.2 THEN 'Slow-moving'
ELSE 'Medium-moving'
END AS rankings_class
FROM `grocery-store-sales-data.grocery_sales_data.sales_percent_rank`