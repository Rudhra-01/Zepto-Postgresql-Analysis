# 🛒 Zepto SQL Data Analysis Project

## 📌 Project Overview

This project analyzes product data from Zepto using PostgreSQL.
It focuses on data cleaning, transformation, and business insights.

---

## 📂 Dataset

* Contains product details like category, price, discount, stock status, and weight.

---

## ⚙️ Tools Used

* PostgreSQL
* SQL

---

## 🧹 Data Cleaning Steps

* Removed products with MRP = 0
* Converted price from paise to rupees
* Checked for null values
* Identified duplicate product names

---

## 📊 Key Business Insights

### 🔹 Top Discounted Products

* Identified top 10 products with highest discounts

### 🔹 Out-of-Stock High Value Products

* Found premium products unavailable in inventory

### 🔹 Revenue Analysis

* Calculated estimated revenue by category

### 🔹 Pricing Insights

* Price per gram analysis for better value comparison

### 🔹 Inventory Analysis

* Total inventory weight per category

---

## 📈 Sample Queries

```sql
SELECT category,
SUM(discountSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category;
```

---

## 🚀 How to Run

1. Import dataset into PostgreSQL
2. Run `zepto_sql.sql`
3. Execute analysis queries

---

## 🔗 Author

Rudhra  

> This project was developed as part of my hands-on SQL learning using PostgreSQL.  
> Inspired by online tutorials, with additional modifications and analysis performed independently.
