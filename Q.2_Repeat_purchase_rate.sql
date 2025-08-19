/*
- QUESTION: How frequently do customers return? (Repeat Purchase Rate)
- WHY: To measure customer loyalty vs one-time buyers.
- INSIGHT: Shows how many customers come back for multiple purchases.
*/

WITH coustomer_orders AS (
SELECT 
	u.user_id,
	u.full_name,
	COUNT(DISTINCT o.order_id) AS total_order
	
FROM 
	users AS u
INNER JOIN
	orders AS o
ON
	u.user_id = o.user_id
GROUP BY 
	u.user_ID, u.full_name
)
SELECT 
    COUNT(CASE WHEN total_order > 1 THEN 1 END) AS returning_customers,
    COUNT(*) AS total_customers,
    ROUND(
        (CAST(COUNT(CASE WHEN total_order > 1 THEN 1 END) AS DECIMAL) / COUNT(*)) * 100, 
        2
    ) AS repeat_purchase_rate_percent
FROM coustomer_orders;

/* 
📊 Insight:
- Out of 80,158 customers, 29,951 have made repeat purchases.
- The repeat purchase rate is 37.36%.
- This indicates that over one-third of our customer base is coming back,
  which suggests good retention but also shows potential to increase loyalty further.
*/

	