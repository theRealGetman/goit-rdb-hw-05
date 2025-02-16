USE hw_03;

WITH OrdersWithQuantityMore10 AS (SELECT * FROM order_details WHERE quantity > 10)
SELECT 
		order_id, 
        AVG(quantity) as avg_quantity
FROM 
		OrdersWithQuantityMore10
GROUP BY 
		order_id;