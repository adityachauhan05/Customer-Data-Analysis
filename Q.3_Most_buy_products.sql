/*
- QUESTION: What products or categories do customers buy the most?
- WHY: To discover which categories or brands are most popular.
- INSIGHT: Helps identify demand drivers and customer preferences.
*/

SELECT 
	p.category,
	p.brand,
	COUNT(oi.order_id) AS total_orders
FROM 
	orders_items AS oi
INNER JOIN
	products AS p
ON
	oi.product_id = p.product_id
GROUP BY 
	p.category,
	p.brand
ORDER BY 
	total_orders DESC
LIMIT 10;

/* 
📊 Insight:
- Swimwear (Speedo) is the top-selling category with 1,186 orders.
- Maternity wear (Motherhood Maternity) follows closely with 1,036 orders,
  showing strong demand from expecting mothers.
- Jeans dominate with multiple strong brands: Wrangler (907), Levi's (876),
  and 7 For All Mankind (855) – indicating jeans are a consistent high-demand product.
- Allegra K appears multiple times across categories (Blazers, Hoodies, Dresses),
  showing it has a wide customer appeal.
- Activewear (Champion, 709 orders) also performs strongly, reflecting demand
  for fitness and lifestyle products.
- Overall, demand is spread across lifestyle, fashion, and maternity,
  with jeans and Allegra K emerging as key drivers of sales.
*/


	
