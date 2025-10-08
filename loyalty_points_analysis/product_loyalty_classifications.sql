/*This query will assess and categorize the products that are most benefitting from the loyalty point system and which are not. This will allow me to make recommendations on which products should be pushed more in the loyalty program and which are doing well. */
SELECT product_name, total_units_sold, total_revenue,points_per_dollar, 
CASE WHEN points_per_dollar > 0.05 AND total_units_sold > (SELECT AVG(total_units_sold) FROM `grocery-store-sales-data.grocery_sales_data.loyalty_reward_rank_2`)
THEN 'High Sales & High Reward -> Keep or Expand Program'
WHEN points_per_dollar > 0.05 AND total_units_sold < (
  SELECT AVG(total_units_sold) FROM `grocery-store-sales-data.grocery_sales_data.loyalty_reward_rank_2`)
  THEN 'High Reward but Low Sales -> Reassess Incentive'
WHEN points_per_dollar < 0.03 AND total_units_sold > (SELECT AVG(total_units_sold) FROM `grocery-store-sales-data.grocery_sales_data.loyalty_reward_rank_2`)
THEN 'Low Reward but High Sales -> No Need for Extra Incentive'
ELSE 'Low Impact -> Consider Increasing Incentive'
END AS recommendation
FROM `grocery-store-sales-data.grocery_sales_data.loyalty_reward_rank_2`
ORDER BY recommendation DESC;