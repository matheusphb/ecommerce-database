
-- Desabilitar autocommit
SET autocommit=0;

-- Transação de exemplo
START TRANSACTION;
SELECT * FROM cliente WHERE ID = 1 FOR UPDATE;
UPDATE cliente SET Nome = 'Novo Nome' WHERE ID = 1;
COMMIT;

-- Procedure para transação com verificação de erro
DELIMITER //
CREATE PROCEDURE TransacaoComErro()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    -- Statements dentro da transação
    SELECT * FROM cliente WHERE ID = 2 FOR UPDATE;
    -- Supondo que esta instrução cause um erro (por exemplo, uma tentativa de divisão por zero)
    SELECT 1/0;
    
    COMMIT;
END //
DELIMITER ;

-- Chamada da procedure para testar
CALL TransacaoComErro();
