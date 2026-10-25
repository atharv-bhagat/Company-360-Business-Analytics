CREATE DATABASE IF NOT EXISTS company360;
USE company360;

CREATE TABLE IF NOT EXISTS customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(100), segment VARCHAR(50), city VARCHAR(50), signup_date DATE);
CREATE TABLE IF NOT EXISTS products (product_id INT PRIMARY KEY, product_name VARCHAR(100), category VARCHAR(50), list_price DECIMAL(12,2));
CREATE TABLE IF NOT EXISTS employees (employee_id INT PRIMARY KEY, employee_name VARCHAR(100), department VARCHAR(50), region VARCHAR(30), hire_date DATE);
CREATE TABLE IF NOT EXISTS orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, order_status VARCHAR(20), employee_id INT, FOREIGN KEY (customer_id) REFERENCES customers(customer_id), FOREIGN KEY (employee_id) REFERENCES employees(employee_id));
CREATE TABLE IF NOT EXISTS order_items (order_item_id INT PRIMARY KEY, order_id INT, product_id INT, quantity INT, unit_price DECIMAL(12,2), discount_pct DECIMAL(5,2), FOREIGN KEY (order_id) REFERENCES orders(order_id), FOREIGN KEY (product_id) REFERENCES products(product_id));
CREATE TABLE IF NOT EXISTS payments (payment_id INT PRIMARY KEY, order_id INT UNIQUE, amount DECIMAL(14,2), payment_method VARCHAR(30), payment_status VARCHAR(20), FOREIGN KEY (order_id) REFERENCES orders(order_id));
CREATE TABLE IF NOT EXISTS returns (return_id INT PRIMARY KEY, order_id INT, reason VARCHAR(50), return_date DATE, FOREIGN KEY (order_id) REFERENCES orders(order_id));
