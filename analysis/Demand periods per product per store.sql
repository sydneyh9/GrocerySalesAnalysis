/*This query is to find the demand periods for each product by store.
Process: it groups the sales for each product by period by store. Then adds up how many units were sold  and the revenue made that month as total_quantity and total_sales for each product.*/
SELECT store_name, product_name,
FORMAT_DATE('%Y-%m',transaction_date) AS month,
SUM(quantity) AS total_quantity,
SUM(final_amount) AS total_sales
FROM `grocery-store-sales-data.grocery_sales_data.data grouped by transaction date` 
GROUP BY store_name, product_name, month
ORDER BY store_name, product_name, month;