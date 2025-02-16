USE hw_03;

-- Створіть функцію з двома параметрами, яка буде ділити перший параметр на другий. Обидва параметри та значення, що повертається, повинні мати тип FLOAT.
-- Використайте конструкцію DROP FUNCTION IF EXISTS. Застосуйте функцію до атрибута quantity таблиці order_details. 
-- Другим параметром може бути довільне число на ваш розсуд.
DELIMITER //

CREATE FUNCTION Divide(p1 FLOAT, p2 FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
	DECLARE result FLOAT;
    SET result = p1 / p2;
    RETURN result;
END //

DELIMITER ;

SELECT Divide(10, 2);