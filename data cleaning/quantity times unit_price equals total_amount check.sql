/*This query is a part of my data validation process to ensure that the quantity * unit_price of each product equals the total_amount recorded in the dataset */
SELECT *
FROM `grocery-store-sales-data.grocery_sales_data.complete_grocery_data`
WHERE CAST(quantity AS FLOAT64) * CAST(unit_price AS FLOAT64)!= CAST(total_amount AS FLOAT64);