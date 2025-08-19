/*
- QUESTION: What is the average revenue per customer (ARPC)?
- WHY: To understand how much value each customer brings on average.
- INSIGHT: Useful for evaluating upsell opportunities and customer value.
*/

SELECT 
    u.user_id,
    u.full_name,
	u.age,
	u.gender,
	u.country,
    SUM(oi.sale_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.sale_price) * 1.0 / COUNT(DISTINCT o.order_id), 2) AS avg_revenue_per_user
FROM 
	users u
JOIN 
	orders o 
    ON 
		u.user_id = o.user_id
JOIN orders_items oi 
    ON 
		o.order_id = oi.order_id
GROUP BY 
	u.user_id, 
	u.full_name,	
	u.age,
	u.gender,
	u.country
ORDER BY 
	avg_revenue_per_user DESC
LIMIT 100;

/* 
📊 Insights:

- The highest ARPU is from William Morris (Brasil) with $2024.96, showing extremely strong spending behavior.
- Older customers (50+ age group like Kristi Bender, Michael Fisher, and Alexander Smith) show consistently higher ARPU compared to younger customers (16–25), suggesting mature customers spend more.
- China has 4 out of the top 10 users by ARPU, indicating it is a critical market to nurture.
- Younger users (16–21, e.g., William Morris, James Clark, Philip Green, Paul Santana) also appear in the top ARPU list, highlighting potential for long-term lifetime value if retained.
- The revenue distribution is skewed — a few users contribute disproportionately high ARPU, meaning customer concentration risk exists.
- Female customers (Kristi Bender, Stacy Peck, Brianna Weaver, Jessica Jones, Mary Mason) are strongly represented in the top ARPU list, indicating gender-based targeting could be effective.
- Targeting campaigns should focus on **high ARPU clusters**: (1) Young but high-spending individuals, (2) Mature high-income individuals, (3) China & US-based customers.  
*/
