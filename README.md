🛒 Zepto SQL Data Analysis Project

## 📌 Project Overview
This project focuses on analyzing a grocery dataset inspired by Zepto using SQL.  
The objective is to clean, explore, and extract meaningful business insights from raw data.

The analysis includes product categorization, pricing strategies, discount evaluation, and inventory insights.
---

## 🛠️ Tools & Technologies
- PostgreSQL
- SQL (Joins, Aggregations, CASE, Filtering)
- pgAdmin

---
## 🗂️ Database Schema

The dataset contains the following key columns:
- SKU ID
- Product Name
- Category
- MRP (Maximum Retail Price)
- Discount Percentage
- Discount Selling Price
- Available Quantity
- Weight (in grams)
- Stock Availability

---
## 🔍 Data Exploration
- Counted total number of records
- Identified null values across columns
- Explored unique product categories
- Checked stock availability (In-stock vs Out-of-stock)
- Detected duplicate product names (multiple SKUs)

---
## 🧹 Data Cleaning
- Removed products with invalid pricing (MRP = 0)
- Converted price values from paise to rupees
- Ensured consistency in numerical columns

---
## 📊 Key Business Analysis

### 🔹 1. Top Discounted Products
- Identified top 10 products with highest discount percentages

### 🔹 2. High-Value Out-of-Stock Products
- Found products with high MRP but currently unavailable

### 🔹 3. Revenue Analysis
- Estimated total revenue per category using:
  - Selling price × available quantity

### 🔹 4. Premium Low-Discount Products
- Identified expensive products with low discount (<10%)

### 🔹 5. Category Discount Insights
- Found top 5 categories offering highest average discounts

### 🔹 6. Price Efficiency Analysis
- Calculated price per gram for better value comparison

### 🔹 7. Product Segmentation
Products were grouped into:
- Low (<1000g)
- Medium (<5000g)
- Bulk (>5000g)

### 🔹 8. Inventory Weight Analysis
- Calculated total inventory weight per category

### 🔹 9. Top Categories by Revenue
- Identified highest revenue-generating categories

### 🔹 10. Average Discount by Category
- Compared discount strategies across categories
---
## 📷 Project Screenshots

### 📌 Category-wise Total Weight
![Category Analysis](screenshots/category.png)

### 📌 Product Segmentation
![Weight Category](screenshots/weight.png)

### 📌 Top Discounted Products
![Top Discounts](screenshots/discount.png)

---

## 💡 Key Insights
- Certain categories contribute significantly to total revenue
- Bulk products dominate inventory weight
- High discounts are concentrated in specific categories
- Price-per-gram analysis helps identify best-value products
- Stock availability impacts potential revenue

---

## 📂 Project Structure

📁 zepto-sql-project
┣ 📂 dataset
┣ 📂 screenshots
┣ 📜 zepto_sql.sql
┣ 📜 README.md

---

## 🔗 GitHub Repository
👉 https://github.com/Rudhra-01/Zepto-Postgresql-Analysis.git
--
## 🚀 Conclusion
This project demonstrates how SQL can be used to transform raw data into actionable business insights.  
It strengthened my skills in data cleaning, analysis, and real-world problem solving using SQL.
---
## 📬 Connect with Me
Feel free to connect with me on LinkedIn to discuss data analytics, SQL, and projects!
