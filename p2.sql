USE hw_03;

SELECT *
FROM order_details od
WHERE (SELECT id FROM orders WHERE od.order_id = id AND shipper_id = 3);
