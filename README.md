# 📊 Basic EDA on Dimensional Modeling Tables

## Overview

This project presents **Basic Exploratory Data Analysis (EDA)** performed on tables from my gold layer of **Data Warehouse project**.

The dataset follows a **dimensional modeling structure** consisting of a **fact table (`sales`)** and two **dimension tables (`customers`, `products`)**.

The purpose of this analysis is to explore **business measures and dimensions** to understand the data before building BI reports or dashboards.

---

## 🏗 Data Model

**Fact Table**

* `sales` – stores measurable business events such as **sales amount** and **quantity sold**.

**Dimension Tables**

* `customers` – contains customer related attributes.
* `products` – contains product related attributes.

This structure allows business metrics to be analyzed from multiple perspectives.

---

# 🔎 EDA Focus Areas

### 📏 Measures Exploration

Exploring the **key business metrics** stored in the `sales` fact table.

Examples:

* total sales
* total quantity sold
* number of transactions

This helps understand the **overall business activity and scale of the dataset**.

---

### 🧩 Dimension Exploration

Exploring the **dimension attributes themselves** to understand the structure of categorical data.

Examples:

* distinct customer countries
* product categories
* product names

This helps understand **the variety and composition of dimension data**.

---

### 📅 Date Exploration

Analyzing how sales behave across **time**.

Examples:

* monthly sales trends
* yearly sales comparisons

This helps observe **how business performance changes over time**.

---

### 🏆 Top N & Bottom N Analysis *(Dimension by Measure)*

Ranking **dimension entities using a business measure**.

Examples:

* top products by sales
* bottom customers by revenue

This highlights **best-performing and lowest-performing entities**.

---

### 📊 Magnitude Analysis *(Measure by Dimension)*

Understanding **how a measure is distributed across dimensions**.

Examples:

* sales by product
* sales by customer

This helps identify **how much each dimension contributes to the overall metric**.

---

## 🛠 Tools Used

* SQL
* Dimensional Modeling
* Data Warehouse Tables

---

## 🎯 Outcome

This basic EDA helps build a **clear understanding of business metrics, dimension attributes, and their relationships**, forming a strong foundation for **BI dashboards and deeper business analysis**.

---

## 👨‍💻 Author

SRILATHA KOLLI


