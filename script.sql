DELIMITER //

CREATE FUNCTION ClientesCadastrados (
    IN target_date DATE
)
RETURNS INT
BEGIN
    DECLARE total_customers INT DEFAULT 0;

    -- Soma um para cada cliente cadastrado na data alvo
    SELECT SUM(1) INTO total_customers
    FROM customers
    WHERE DATE(creation_date) = target_date;

    RETURN total_customers;
END //

DELIMITER ;
