/*This query sums up the amount of days that each product sold and computes the average daily sale rate as total quantity sold/#of days sold*/
SELECT store_name, product_name, AVG(daily_quantity) AS avg_daily_sales,
  SUM(daily_quantity) AS total_sales_volume,
  COUNT(*) AS days_sold
  FROM `grocery-store-sales-data.grocery_sales_data.daily_sales`
  GROUP BY store_name, product_name