-- 1. Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id JOIN products ON line_items.product_id = products.id;

-- 3. Which warehouses have cheetos?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.id = 5;

-- 4. Which warehouses have diet pepsi?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.id = 6;

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT customers.first_name, count(*) FROM orders JOIN addresses ON orders.address_id = addresses.id JOIN customers ON customers.id = addresses.customer_id
GROUP BY customers.first_name;

-- 6. How many customers do we have?
SELECT count(*) FROM customers;

-- 7. How many products do we carry?
SELECT count(*) FROM products;

-- 8. What is the total available on-hand quantity of diet pepsi?
SELECT sum(on_hand) FROM warehouse_product WHERE product_id = 6;