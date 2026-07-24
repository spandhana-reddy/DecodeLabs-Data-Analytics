CREATE TABLE orders (
    order_id VARCHAR(20),
    order_date DATE,
    customer_id VARCHAR(20),
    product VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    shipping_address VARCHAR(255),
    payment_method VARCHAR(50),
    order_status VARCHAR(50),
    tracking_number VARCHAR(100),
    items_in_cart INT,
    coupon_code VARCHAR(50),
    referral_source VARCHAR(100),
    total_price DECIMAL(10,2)
);