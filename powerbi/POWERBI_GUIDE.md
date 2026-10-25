# Power BI build guide (dashboard not yet created)

1. Power BI Desktop → Home → Get Data → Text/CSV; import all seven datasets.
2. In Model view, relate customers[customer_id] → orders[customer_id], employees[employee_id] → orders[employee_id], orders[order_id] → order_items[order_id], products[product_id] → order_items[product_id], orders[order_id] → payments[order_id], orders[order_id] → returns[order_id]. Set the one-side on dimension/parent tables.
3. Add calculated column in `order_items`: `Line Sales = order_items[quantity] * order_items[unit_price] * (1 - order_items[discount_pct] / 100)`
4. Add measure: `Delivered Sales = CALCULATE(SUM(order_items[Line Sales]), orders[order_status] = "Delivered")`
5. Add measure: `Delivered Orders = CALCULATE(DISTINCTCOUNT(orders[order_id]), orders[order_status] = "Delivered")`
6. Add measure: `Average Order Value = DIVIDE([Delivered Sales], [Delivered Orders])`
7. Build cards for these measures; a monthly line chart using order_date; bar charts by product category and customer city; a slicer for customer segment.
8. Save as `powerbi/Company360.pbix` and add a screenshot to `screenshots/` before claiming the dashboard is completed.

These are instructions, not a completed PBIX file.
