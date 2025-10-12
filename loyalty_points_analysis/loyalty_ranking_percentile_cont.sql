/*This query finds the percentiles in the loyalty rank so that I can later sort each product into recommendations based on performance metrics */
SELECT DISTINCT PERCENTILE_CONT(loyalty_rank, 0.33) OVER () AS low_threshold,
PERCENTILE_CONT(loyalty_rank, 0.67) OVER () AS high_threshold
FROM `grocery-store-sales-data.grocery_sales_data.loyalty_ranking`