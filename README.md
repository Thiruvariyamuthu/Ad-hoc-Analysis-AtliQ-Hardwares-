# Ad-hoc-Analysis-AtliQ-Hardwares-
SQL Ad-hoc Analysis Project for AtliQ Hardwares using MySQL


# 💼 Ad-hoc-Analysis-AtliQ-Hardwares

## 🧠 Problem Statement  
AtliQ Hardwares is a computer hardware manufacturing company that sells products globally through various channels like Amazon, Croma, and Best Buy.
AtliQ Hardwares,relied completely on Excel to manage its growing business. 
As sales and revenue increased, their Excel files became larger and harder to handle — until one day, their key business planning file crashed beyond recovery.  

To fix this, AtliQ built a proper *MySQL database*
That’s when they brought in a *data analytics team* to make the company truly *data-informed* by solving ad-hoc business problems with SQL.
The *Product Owner* often requests data insights and business reports to support decision-making and improve operational efficiency.  

Currently, the data team receives *multiple ad-hoc analysis requests* from stakeholders to help them understand sales trends, market performance, product demand, and forecast accuracy.  
The goal of this project is to create a *centralized SQL-based solution* to quickly respond to these business questions using *views, joins, and stored procedures*.

---

## 🎯 Objective  
The main objective of this project is to:
- Perform *ad-hoc business analysis* using SQL.  
- Automate repetitive analysis by creating *stored procedures*.  
- Build *reusable queries* to generate quick reports for different business needs.  
- Help the product owner make *data-driven decisions* for product, market, and customer strategy.

---

## 🗂 Datasets Used  

This project uses multiple tables from the AtliQ Hardwares database (gdb0041) to perform ad-hoc business analysis and reporting.

| Dataset Name | Description |
|---------------|-------------|
| *dim_customer* | Contains customer details such as customer name, market, region, and customer type. |
| *dim_product* | Product-related information like product name, variant, division, and category. |
| *fact_sales_monthly* | Monthly sales performance data including sold quantity, product, customer, and date. |
| *fact_forecast_monthly* | Forecasted sales quantities for each customer and product by month. |
| *fact_gross_price* | Contains product-level gross price details used for revenue calculations. |
| *fact_act_est* | Combined table for actual vs. forecast data (created using SQL joins and unions). |
| *fact_freight_cost* | Details of transportation and freight costs for product deliveries. |
| *fact_manufacturing_cost* | Manufacturing cost details for each product. |
| *fact_pre_invoice_deductions* | Pre-invoice deduction data like discounts and offers. |
| *fact_post_invoice_deductions* | Post-invoice deductions such as credit notes or returns. |

---

### 📸 Dataset Preview  

*(Database tables from gdb0041)*  
![Dataset Preview](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/assets/datasets.png)

## 🧩 Ad Hoc Request 1 — Croma India Product-wise Sales Report (FY 2021)

### 📄 Problem Statement  
As a product owner, I want to generate a report of **individual product sales** (aggregated on a **monthly basis** at the product code level) for **Croma India** customer for **FY 2021**,  
so that I can track product-level performance and run further analytics in Excel.

### 🎯 Objective  
- Analyze monthly sales for each product under Croma India.  
- Identify high-performing products and variants.  
- Provide visibility into sales quantity and revenue trends.

### 🧠 SQL Query Used  
🔗 [View SQL Query](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/queries/adhoc_1_croma_product_sales.sql)

### 📊 Output Preview  
Below is a snapshot of the output (partial view due to large dataset):  
![Output](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/assets/adhoc1_output.png.png)


## 🧩 Ad Hoc Request 2 — Gross Monthly Total Sales Report for Croma

### 📄 Problem Statement  
As a product owner, I need an **aggregate monthly gross sales report** for **Croma India** so that I can track how much sales this particular customer is generating for **AtliQ Hardwares** and manage our relationship accordingly.

### 🎯 Objective  
- Calculate the total monthly gross sales amount for Croma India.  
- Understand customer contribution to overall sales.  
- Enable data-driven decisions for partnership management.

### 🧠 SQL Query Used  
🔗 [View SQL Query](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/queries/adhoc_2_croma_monthly_gross_sales_report.sql)

### 📊 Output Preview  
Below is a snapshot of the output (partial view):  
![Output](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/assets/adhoc_2_output.png)

---

### ⚙️ Stored Procedure Automation  
Here you can see — this task was quite repetitive.  
Because tomorrow the product owner might ask for the **same report for Amazon or eBay**, I created a **stored procedure** called  
`get_monthly_gross_sales_for_customer`.

Now, by simply entering the **customer code**, the report is automatically generated — no need to rewrite the query every time.

### 🧠 Stored Procedure Query  
🔗 [View Stored Procedure](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/queries/adhoc_2_stored_proc_get_monthly_gross_sales_report.sql)

### 📊 Sample Output (Amazon Example)  
Below is an example of the stored procedure output when the input is set for **Amazon**:  
![Output](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/assets/adhoc_2_stored_proc_get_monthly_gross_sales_report.png)
![Output](https://github.com/Thiruvariyamuthu/Ad-hoc-Analysis-AtliQ-Hardwares-/blob/main/AtliQ-Adhoc-Analysis/assets/adhoc_2_stored_proc_get_monthly_gross_sales_report%20(2).png)

