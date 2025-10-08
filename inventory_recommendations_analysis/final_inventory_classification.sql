/*This query organizes the final inventory recommendations table by ordering it from fast-moving => slow-moving products and by their sales rank. */
SELECT store_name, product_name, rankings_class, sales_rank
FROM `grocery-store-sales-data.grocery_sales_data.final_inventory_table`
GROUP BY store_name, product_name, rankings_class, sales_rank
ORDER BY rankings_class, sales_rank DESC;
