/*This query finds the median in loyalty_ranking so that I can sort the products by recommendations based on performane */
SELECT DISTINCT PERCENTILE_CONT(loyalty_rank, 0.5) OVER () AS median_point
FROM `grocery-store-sales-data.grocery_sales_data.loyalty_ranking`