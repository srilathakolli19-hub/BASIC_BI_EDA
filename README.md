# 📊 Basic EDA on Dimensional Modeling Tables

## Overview

This project demonstrates **Basic Exploratory Data Analysis (EDA)** performed on tables from my **Data Warehouse project**.

The dataset follows a **dimensional modeling structure**, consisting of a **fact table (`sales`)** and two **dimension tables (`customers`, `products`)**.

The goal of this analysis is to explore **measures, dimensions, and their relationships** to understand the data before building BI reports or dashboards.

---

## Data Model

**Fact Table**

* `sales` – stores measurable business events such as sales amount and quantity.

**Dimension Tables**

* `customers` – customer related attributes.
* `products` – product related attributes.

This structure allows business metrics to be analyzed from different perspectives.

---

## EDA Focus Areas

### Measures Exploration

Understanding the main metrics stored in the **sales fact table**.

Examples:

* total sales
* total quantity sold
* number of transactions

This helps understand the **overall scale of business activity**.

---

### Dimension Exploration

Exploring the **dimension attributes themselves**.

Examples:

* distinct countries of customers
* product categories
* product names

This helps understand **the variety and structure of dimension data**.

---

### Date Exploration

Analyzing sales across **time**.

Examples:

* monthly sales trends
* yearly sales comparisons

This helps observe **how business performance changes over time**.

---

### Top N and Bottom N Analysis *(Dimension by Measure)*

Ranking **dimension entities using a business measure**.

Examples:

* top products by sales
* bottom customers by revenue

This highlights **best and worst performing entities**.

---

### Magnitude Analysis *(Measure by Dimension)*

Analyzing **how a measure is distributed across dimensions**.

Examples:

* sales by product
* sales by customer

This helps understand **how much each dimension contributes to the overall metric**.

---

## Tools Used

* SQL
* Dimensional Modeling
* Data Warehouse Tables

---

## Outcome

This exploration helps build a **clear understanding of measures, dimensions, and their relationships**, which is the first step before creating **BI dashboards and deeper business analysis**.

---

## Author

SRILATHA KOLLI

