/*This query sums up the units sold for each product by store to give us a daily record of how each product sells.*/
SELECT store_name, product_name,
  FORMAT_DATE('%Y-%m-%d',transaction_date) AS day, 
  SUM(quantity) AS daily_quantity
  FROM `grocery-store-sales-data.grocery_sales_data.data grouped by transaction date`
  GROUP BY store_name, product_name, day