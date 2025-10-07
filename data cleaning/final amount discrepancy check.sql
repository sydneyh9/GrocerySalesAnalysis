/*This query is a part of my data validation to ensure that the discount amount recorded in the dataset subtracted from the total_amount equals the final amount recorded */
SELECT *
FROM `grocery-store-sales-data.grocery_sales_data.complete_grocery_data`
WHERE ABS((total_amount - discount_amount) - final_amount) > 0.01;