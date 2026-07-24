-- Query 1: Total Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- Query 2: Total Revenue
SELECT SUM(total_price) AS Total_Revenue
FROM orders;

-- Query 3: Average Order Value
SELECT AVG(total_price) AS Average_Order_Value
FROM orders;

-- Query 4: Top Products by Revenue
SELECT
    product,
    SUM(total_price) AS Revenue
FROM orders
GROUP BY product
ORDER BY Revenue DESC
LIMIT 10;

-- Query 5: Orders by Status
SELECT
    order_status,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY order_status;

-- Query 6: Orders by Payment Method
SELECT
    payment_method,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY payment_method
ORDER BY Total_Orders DESC;

-- Query 8: Monthly Sales
SELECT
    MONTH(order_date) AS Month,
    SUM(total_price) AS Total_Sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY Month;

-- Query 9: Average Quantity
SELECT
    AVG(quantity) AS Average_Quantity
FROM orders;


-- Query 10: Product-wise Quantity Sold
SELECT
    product,
    SUM(quantity) AS Total_Quantity
FROM orders
GROUP BY product
ORDER BY Total_Quantity DESC;