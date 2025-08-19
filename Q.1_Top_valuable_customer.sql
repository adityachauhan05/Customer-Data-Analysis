/*
- QUESTION: Who are my most valuable customers?
- WHY: To identify the top customers by total revenue contribution.
- INSIGHT: Helps understand which customers drive the majority of revenue (Pareto principle).
*/


SELECT 
	u.user_id,
	u.full_name,
	u.gender,
	u.country,
	SUM(oi.sale_price) AS total_sales
FROM 
	users AS u
JOIN 
	orders_items AS oi
ON
	u.user_id = oi.user_id
GROUP BY 
	u.user_id, u.full_name
ORDER BY 
	total_sales DESC
Limit 20;


/*
📊 Insights:
1. William Morris (Brasil) is the top spender with ~$2025 total purchases.
2. Out of the top 20 customers, China appears 5 times, showing strong purchasing power.
3. Female customers like Kristi Bender (US) and Dana Brown (Spain) also feature among top spenders, suggesting gender balance in high-value buyers.
4. The United States, China, and Brasil dominate the top spenders list.
5. Japan and South Korea also appear, but with fewer representatives compared to China.
*/

