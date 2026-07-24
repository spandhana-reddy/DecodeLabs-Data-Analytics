LOAD DATA LOCAL INFILE 'D:/Projects/DecodeLab-DataAnalytics/Project 3 Week/data/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 ROWS
(order_id,
 order_date,
 customer_id,
 product,
 quantity,
 unit_price,
 shipping_address,
 payment_method,
 order_status,
 tracking_number,
 items_in_cart,
 coupon_code,
 referral_source,
 total_price);