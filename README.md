# Company Insights 360 – Business Analytics Project

A retail business analytics project using SQL, Excel and Power BI to explore sales, customers, products, payments and returns.

> **Note:** This project uses synthetic data created for learning and portfolio purposes.

## About the Project

I created this project to practise working with business data and understand how different data analytics tools can be used together.

The project is based on a fictional retail company and contains 7 related CSV files covering customers, products, employees, orders, order items, payments and returns.

I used MySQL to store the data and write queries for different business questions. I also worked with Excel for reporting and created a three-page Power BI dashboard to explore the data through charts, KPIs and filters.

The main aim was to get practical experience with SQL, Excel and Power BI by working on one complete business analytics project.

## Tools Used

- **MySQL:** Database creation, joins, filtering, aggregations and SQL analysis.
- **Microsoft Excel:** Data analysis, reporting and charts.
- **Power BI:** Dashboard creation, KPIs, charts and interactive filters.
- **Git & GitHub:** Project storage and documentation.

## Project Structure

- `datasets/` – Contains 7 CSV files used in the project.
- `sql/` – MySQL schema and 10 SQL analysis queries.
- `excel/` – Excel reporting workbook.
- `powerbi/` – Power BI dashboard and related guide.
- `screenshots/` – Dashboard screenshots.

## Power BI Dashboard

I created the dashboard with three pages to look at different areas of the business.

### 1. Executive Overview
- Overall business performance.
- Revenue, orders and customer KPIs.
- Monthly sales and order trends.
- Business performance overview.

### 2. Sales & Product Analytics
- Product-wise sales.
- Category-wise performance.
- Best-performing products.
- Sales and quantity analysis.

### 3. Customer & Regional Insights
- Customer distribution.
- City-wise business performance.
- Regional analysis.
- Payment methods and payment status.

**Power BI File:** `powerbi/Company_Insights_360.pbix`

The dashboard can be opened using Microsoft Power BI Desktop.

## SQL Analysis

I created a relational database in MySQL using the 7 CSV datasets and wrote 10 SQL queries to explore different business questions.

Some of the topics covered include:

- Total delivered-order sales and average order value.
- Monthly sales performance.
- Best-performing products and categories.
- Customer segments and city-wise analysis.
- Returns and payment methods.
- Employee region performance.

## Excel Report

The Excel workbook contains business data analysis and charts to help understand the dataset and compare different business metrics.

**File:** `excel/company360_report.xlsx`

## How to Run the Project

1. Open MySQL Workbench.
2. Execute `sql/01_schema.sql` to create the database and tables.
3. Import the CSV files from the `datasets/` folder into their respective tables.
4. Import the files in this order: customers, products, employees, orders, order_items, payments and returns.
5. Execute `sql/02_analysis.sql` to run the analysis queries.
6. Open the Excel workbook to review the reports.
7. Open the `.pbix` file in Power BI Desktop to explore the dashboard.

## Important Notes

- Sales are calculated using order line items for delivered orders only.
- Returns are counted separately and are not deducted from sales.
- Sales figures represent gross delivered sales, not net revenue or profit.
- All payment and customer records are synthetic.

## What I Learned

While working on this project, I got practical experience with:

- Working with multiple related datasets.
- Creating relational tables and understanding foreign keys.
- Writing SQL queries using joins and aggregate functions.
- Analysing business data in Excel.
- Creating Power BI dashboards and working with KPIs.
- Presenting data through charts and visual reports.

## Author

**Atharv Bhagat**

GitHub: [atharv-bhagat](https://github.com/atharv-bhagat)

LinkedIn: [Atharv Bhagat](https://linkedin.com/in/atharv-bhagat1801)
