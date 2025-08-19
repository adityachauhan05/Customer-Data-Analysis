/*
- ❓ Business Question:
- Finding the profit margin percent per product highest to lowest?
- Why Important:
- High-margin products contribute more to overall profitability and should be prioritized 
- in marketing, sales focus, and inventory allocation. Low-margin products may require 
- cost optimization, price adjustment, or bundling strategies to stay competitive.
*/

SELECT 
    i.product_id,
    i.product_name,
    i.product_brand,
    i.product_department,
    i.product_retail_price,
    i.cost,
    (i.product_retail_price - i.cost) AS profit_margin,
    ROUND(((i.product_retail_price - i.cost) / i.cost) * 100, 2) AS margin_percent
FROM 
	inventory_items i
GROUP BY 
    i.product_id,
    i.product_name,
    i.product_brand,
    i.product_department,
    i.product_retail_price,
    i.cost
ORDER BY 
	profit_margin DESC
LIMIT 50;

/*  
📊 Product Margin Insights:
- Fashion and branded products (Alpha Industries, Levi’s, Adidas) 
  dominate the high margin_percent category,  
  while electronics/accessories rely on higher selling prices instead of % margin.  

- Products with very low margin_percent (<20%) 
  may require **supplier cost renegotiation or price adjustments**.  

- Both metrics should be tracked together:  
  🔹 profit_margin = absolute money made per unit  
  🔹 margin_percent = pricing efficiency  
*/
