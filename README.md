# SQL-Projects
# 🗄️ SQL Data Analysis Projects

Welcome to my SQL Projects directory! This repository contains a collection of database queries, data exploration scripts, and analytical projects used to extract insights from relational databases.

## 📂 Featured Projects

#1. RetailNexus: E-Commerce Sales & Customer Insights
* **Description:** A comprehensive relational database project analyzing sales performance, product popularity, and customer purchasing behaviors. 
* **Key Techniques:** Multi-table `JOIN` operations, Cohort Analysis, Advanced Aggregation, Data Cleaning.
* **Objective:** To merge customer demographics with transactional data to identify high-value products and optimize sales strategies.
* **Datasets:** The analysis is built on a relational schema utilizing the following three files located in the `[Retail_Nexus_Data_Source_files]` directory:
  * `customers .csv`: Contains customer demographics and account information.
  * `products.csv`: Details product categories, pricing, and inventory data.
  * `sales.csv`: Logs transactional records linking customers to the products purchased.

 #2. AgriTrends: Multi-Decade USDA Production & Market Share Analysis

* **Description:** An analytical SQL project evaluating multi-decade production trajectories, state-level market concentration, and commodity trends across United States agriculture.
* **Key Techniques:** Multi-table `JOIN` operations, Common Table Expressions (`CTE`), Window Functions (`DENSE_RANK`, `LAG`), Conditional Aggregation (`CASE WHEN`), Data Cleansing & Type Casting.
* **Objective:** To clean granular time-series data, resolve grain mismatches between monthly records and annual summaries, and construct automated ranking pipelines to identify market leaders across major agricultural commodities.
* **Datasets:** The analysis is built on a multi-table relational schema utilizing the following files located in the `USDA_DATASET` directory:
  * `state_lookup.csv`: Dimension table mapping FIPS/State ANSI codes to state names.
  * `cheese_production.csv`: Fact table recording monthly and annual cheese production (1970–2023).
  * `milk_production.csv`: Fact table containing 100 years of state-level dairy output (1924–2023).
  * `honey_production.csv`: Annual honey production metrics and historical yield data.
  * `egg_production.csv`: Fact table covering multi-decade commercial egg production figures.
  * `yogurt_production.csv`: Fact table detailing regional yogurt manufacturing output.
  * `coffee_production.csv`: Fact table capturing specialized domestic coffee production trends.

 #3. E-Commerce Analytics: Revenue, Risk, & Customer Segmentation

* **Description:** comprehensive relational database project analyzing payment method risks, regional inventory optimization, and customer lifetime value.
* **Key Techniques:** Multi-table JOIN operations, Common Table Expressions (WITH), Window Functions (DENSE_RANK()), and Conditional Aggregation (CASE WHEN).
* **Objective**: To extract actionable business intelligence from transactional and demographic data to reduce operational risk, optimize localized warehouse stock, and allocate marketing budgets effectively.
* **Datasets:** The analysis is built on a relational schema utilizing the following three files located in the [Ecommerce-SQL-Analytics_Data_Source_Files] directory:
 * `customers.csv` : Contains customer demographics, location data, and account information.
 * `products .csv` : Details product categories and pricing data.
 * `orders .csv` : Logs transactional records linking customers to products, including quantities and payment methods.

## 🛠️ Skills & Commands Demonstrated

* **Data Extraction & Filtering:** `SELECT`, `WHERE`, `HAVING`, `LIKE`, `IN`, `BETWEEN`.
* **Data Transformation:** `CAST`, `CONVERT`, `COALESCE`, `CASE WHEN` statements.
* **Aggregations:** `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`.
* **Advanced Querying:** `INNER JOIN`, `LEFT JOIN`, `UNION`, Subqueries, and Common Table Expressions (CTEs).
* **Window Functions:** `ROW_NUMBER()`, `RANK()`, `LEAD()`, `LAG()`.

## 🚀 How to Run These Queries
1. Download the corresponding raw data files from the **Datasets Folder** located in this repository.
2. Import the `.csv` or `.xlsx` files into your preferred SQL database management tool (such as pgAdmin, MySQL Workbench, or DBeaver) to create the necessary tables.
3. Open the `.sql` scripts provided in this folder and execute the queries against your newly created tables.

## 📫 Let's Connect
Feel free to reach out if you have any questions about the query logic, optimization techniques, or data insights!
