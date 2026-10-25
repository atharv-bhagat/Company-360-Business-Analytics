# Company 360 Analytics | SQL + Excel + Power BI-ready Data

> **Portfolio demonstration | Synthetic data (not real company records)**

## Overview
Analyze sales, customers, products, payments and returns for a fictional retail company using a relational dataset. This repository contains **7 CSV files**, a MySQL schema, **10 SQL analysis queries**, and an Excel reporting workbook. The dataset is also ready for a future Power BI report; **a Power BI dashboard is not included yet**.

## Tools
MySQL 8+, Microsoft Excel, Git, GitHub. Power BI Desktop is optional for future work.

## Files
- `datasets/` – 7 related CSV tables
- `sql/01_schema.sql` – relational schema and foreign keys
- `sql/02_analysis.sql` – business KPI and segment queries
- `excel/company360_report.xlsx` – Excel report and charts
- `powerbi/POWERBI_GUIDE.md` – instructions to build the dashboard

## Business questions
1. What are delivered-order sales and average order value?
2. How do sales change by month?
3. Which products, categories, customer segments and cities perform best?
4. What share of delivered orders have returns?
5. Which payment methods and employee regions contribute most?

## Run in MySQL Workbench
1. Open `sql/01_schema.sql` in MySQL Workbench and execute it.
2. In the **Schemas** pane, refresh, expand `company360`, then expand **Tables**.
3. For each table, right-click the **table name** (not the Tables heading), select **Table Data Import Wizard**, choose the matching CSV in `datasets/`, and import into the **existing table**. If your Workbench version lacks the wizard, use a supported CSV import method.
4. Import in this order: `customers`, `products`, `employees`, `orders`, `order_items`, `payments`, `returns`.
5. Open and run `sql/02_analysis.sql`.
6. Check the Excel report and explain the results in your own words.

**Important:** Sales are calculated from order line items for delivered orders only; returns are counted but **not deducted from sales**. These are gross delivered sales, not audited net revenue or profit. Payments are simulated and do not represent actual transactions.

## Git commands
```bash
git init
git add .
git commit -m "Initial Company 360 analytics project"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/Company-360-Analytics.git
git push -u origin main
```

## Next steps
- Build and add an actual Power BI `.pbix` dashboard and screenshots.
- Write 3–5 business insights based on your own SQL output.
- Extend the analysis with returns-adjusted sales, cost and profit data.

## Disclaimer
All names and transactions are generated for practice. No real customer data is used.
