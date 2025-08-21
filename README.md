# Customer-Data-Analysis

## 1.Top Valuable Customer Query

## 📌 Question
What are the **top valuable customers** based on their total spending across all orders?
The goal is to highlight which customers contribute the most revenue, helping the business focus on **customer retention, loyalty programs, and personalized marketing strategies**.

---

## 📂 File Details
- **File Name:** `Q.1_Top_valuable_customer.sql`
- **Purpose:** Find the highest revenue-generating customers.
- **Database Required:** Relational database with tables containing **orders, customers, and payments**.

---

## 🔑 Key SQL Concepts Used
- `JOIN` (to combine customers, orders, and order items)  
- `SUM()` (to calculate total spending per customer)  
- `GROUP BY` (to aggregate revenue at the customer level)  
- `ORDER BY DESC` (to rank customers from highest to lowest spend)  
- `LIMIT` (to fetch the top customers only)

---
<img width="1600" height="1000" alt="q1_top_customers" src="https://github.com/user-attachments/assets/f09ae8fb-f400-4b6b-8dff-3efc602e8e69" />

---

## 📈 Business Value
This query helps businesses:
- Identify **high-value customers** for loyalty programs.  
- Guide **marketing strategies** toward profitable customers.  
- Improve **customer relationship management (CRM)** by prioritizing retention efforts.  

---

## 2.Repeat Purchase Rate Analysis

## 📌 Question
**How frequently do customers return? (Repeat Purchase Rate)**  
The goal is to measure customer loyalty by identifying how many customers purchase more than once compared to one-time buyers.

---

## 📂 File
- **SQL Script:** `Q.2_Repeat_purchase_rate.sql`  
- **Database Tables Used:**
  - `users` – Contains customer details (ID, name).  
  - `orders` – Contains order details (linked to customers).  

---

## 📊 Insights
1. Out of **80,158 customers**, **29,951 have made repeat purchases**.  
2. The **repeat purchase rate is 37.36%**, meaning more than one-third of customers return.  
3. This indicates **good customer retention**, but also shows potential to increase loyalty further.  

---

## 🔑 Key SQL Concepts Used
- **CTE (WITH clause)** – to calculate order counts per customer.  
- **COUNT + CASE WHEN** – to separate repeat buyers from one-time buyers.  
- **GROUP BY** – to aggregate orders at the customer level.  
- **ROUND()** – for clean percentage formatting.  

---

## 🚀 Business Value
This analysis helps businesses:  
- Understand **customer loyalty levels**.  
- Identify the share of **repeat vs one-time buyers**.  
- Design strategies like **loyalty programs, personalized offers, or retention campaigns** to increase repeat purchase rate.  

---

## 3.Most Bought Products Analysis

## 📌 Question
**What products or categories do customers buy the most?**  
The goal is to discover which categories and brands drive the highest sales, helping the business understand **customer preferences and demand patterns**.

---

## 📂 File
- **SQL Script:** `Q.3_Most_buy_products.sql`  
- **Database Tables Used:**
  - `orders_items` – Contains order details (products purchased).  
  - `products` – Contains product information (category, brand, ID).  

---

## 📊 Insights
1. **Swimwear (Speedo)** is the top-selling category with **1,186 orders**.  
2. **Maternity wear (Motherhood Maternity)** follows with **1,036 orders**, showing strong demand from expecting mothers.  
3. **Jeans** dominate with multiple strong brands:  
   - Wrangler (**907 orders**)  
   - Levi's (**876 orders**)  
   - 7 For All Mankind (**855 orders**)  
   → Jeans remain a consistently high-demand product.  
4. **Allegra K** appears across multiple categories (Blazers, Hoodies, Dresses), showing broad customer appeal.  
5. **Activewear (Champion, 709 orders)** also performs strongly, reflecting demand for fitness and lifestyle products.  
6. Overall, demand is spread across **lifestyle, fashion, and maternity**, with **jeans and Allegra K emerging as key sales drivers**.  

---

## 🔑 Key SQL Concepts Used
- **JOIN** – to combine `orders_items` with `products`.  
- **COUNT()** – to measure order frequency per product/brand.  
- **GROUP BY** – to aggregate data by category and brand.  
- **ORDER BY DESC** – to rank products by total orders.  
- **LIMIT** – to extract the **Top 10 most purchased products**.  

---
<img width="1600" height="1000" alt="q3_top_products" src="https://github.com/user-attachments/assets/1a065c08-3da3-449a-92f8-7646ad0b0a7e" />

---

## 🚀 Business Value
This analysis helps businesses:  
- Identify **best-selling categories and brands**.  
- Understand **customer demand trends** (e.g., maternity, lifestyle, jeans).  
- Optimize **inventory management** by focusing on high-demand products.  
- Guide **marketing and product development strategies** toward popular categories.  

---

## 4.Average Revenue Per Customer (ARPC) Analysis

## 📌 Question
**What is the average revenue per customer (ARPC)?**  
The goal is to measure the average value each customer brings, helping assess overall customer profitability and opportunities for upselling.

---

## 📂 File
- **SQL Script:** `Q.4_(ARPC).sql`  
- **Database Tables Used:**
  - `users` – Contains customer details (ID, name, age, gender, country).  
  - `orders` – Contains order information.  
  - `orders_items` – Contains item-level sales data.  

---

## 📊 Insights
1. The highest ARPU is from **William Morris (Brasil)** with **$2024.96**, showing extremely strong spending behavior.  
2. **Older customers (50+ age group)** like Kristi Bender, Michael Fisher, and Alexander Smith consistently show higher ARPU compared to younger customers (16–25).  
3. **China** has 4 out of the top 10 users by ARPU, making it a **critical market to nurture**.  
4. **Younger users (16–21)** such as William Morris, James Clark, Philip Green, and Paul Santana also appear in the top ARPU list, suggesting strong potential for **long-term lifetime value** if retained.  
5. Revenue distribution is **skewed**, with a small group of customers contributing disproportionately high ARPU → a **customer concentration risk**.  
6. **Female customers** (Kristi Bender, Stacy Peck, Brianna Weaver, Jessica Jones, Mary Mason) are strongly represented in the top ARPU list, indicating **gender-based targeting** could be effective.  
7. **Targeting strategies** should focus on three high-value clusters:  
   - Young but high-spending individuals  
   - Mature high-income individuals  
   - Customers in **China & the US**  

---

## 🔑 Key SQL Concepts Used
- **JOINs** – to combine users, orders, and order_items.  
- **SUM()** – total revenue per customer.  
- **COUNT(DISTINCT)** – total orders per customer.  
- **ROUND()** – to format ARPU values.  
- **ORDER BY DESC + LIMIT** – to rank and display top 100 customers.  

---
<img width="1600" height="1000" alt="q4_arpc" src="https://github.com/user-attachments/assets/f443610f-00bb-4008-a6e1-ae82343a405b" />

---

## 🚀 Business Value
This analysis helps businesses:  
- Measure **average revenue per customer (ARPC/ARPU)**.  
- Identify **high-value customer clusters** for targeted campaigns.  
- Assess **market-specific opportunities** (e.g., China & US).  
- Design **upsell and retention strategies** for young high spenders and mature high-income segments.  
- Mitigate **customer concentration risk** by diversifying revenue sources.  


---

## 5.Margin Percent per Product Analysis

## 📌 Business Question
**Which products deliver the highest profit margin percent, from highest to lowest?**  
The goal is to identify **high-margin vs low-margin products**, helping businesses prioritize sales strategies, inventory allocation, and cost optimization.

---

## 📂 File
- **SQL Script:** `Q.5_Margin_percent_per_product.sql`  
- **Database Tables Used:**
  - `inventory_items` – Contains product details (ID, name, brand, department, retail price, and cost).  

---

## 📊 Insights
1. **Fashion and branded products** (e.g., Alpha Industries, Levi’s, Adidas) dominate the **high-margin percent** category.  
2. **Electronics and accessories** rely on **higher selling prices** rather than margin percent to drive profit.  
3. Products with **very low margin percent (<20%)** may require:  
   - Supplier cost renegotiation  
   - Price adjustments  
   - Bundling strategies to remain competitive  
4. It is important to track **both metrics together**:  
   - **Profit Margin (absolute)** = total money made per unit  
   - **Margin Percent (relative)** = pricing efficiency  

---

## 🔑 Key SQL Concepts Used
- **SELECT with calculations** – compute profit margin & margin percent.  
- **ROUND()** – to display margin percent clearly.  
- **GROUP BY** – ensure calculations are grouped per product.  
- **ORDER BY DESC + LIMIT** – rank and display the **Top 50 products**.  

---
<img width="1600" height="1000" alt="q5_margin_products" src="https://github.com/user-attachments/assets/f15e3765-7486-44a8-8485-29cc7fac0821" />

---

## 🚀 Business Value
This analysis helps businesses:  
- Focus marketing and sales on **high-margin products**.  
- Optimize pricing strategies for **low-margin products**.  
- Improve **inventory planning and supplier negotiations**.  
- Balance **absolute profit margin** and **margin efficiency** for sustainable growth.  


