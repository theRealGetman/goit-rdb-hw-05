USE hw_03;

SELECT *, (SELECT customer_id FROM orders WHERE od.order_id = id) customer_id
FROM order_details od;
