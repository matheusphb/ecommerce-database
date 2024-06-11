
# Banco de Dados de Comércio Eletrônico

Este repositório contém a estrutura de um banco de dados para um sistema de e-commerce. Inclui a criação de tabelas, inserção de dados de exemplo, consultas SQL e triggers para diversas operações.

## Estrutura do Banco de Dados

O banco de dados possui as seguintes tabelas:

- Cliente
- Pessoa Física
- Pessoa Jurídica
- Fornecedor
- Produto
- Status do Pedido
- Método de Pagamento
- Pedido
- Item do Pedido
- Estoque
- Pagamento
- Entrega
- Funcionario (para colaboradores)

## Triggers

### Remoção de Clientes

Para manter um registro de clientes excluídos, foi criada uma trigger que move os dados do cliente para uma tabela de "clientes excluídos" antes de serem removidos permanentemente do sistema.

```sql
-- Trigger para mover dados de cliente excluído
DELIMITER $$
CREATE TRIGGER before_delete_cliente
BEFORE DELETE ON Cliente
FOR EACH ROW
BEGIN
    INSERT INTO Cliente_Excluido (ID, Nome, Email, TipoCliente)
    VALUES (OLD.ID, OLD.Nome, OLD.Email, OLD.TipoCliente);
END$$
DELIMITER ;
```

### Atualização do Salário Base de Colaboradores

Para atualizar o salário base de colaboradores antes que uma atualização ocorra na tabela de colaboradores, foi criada uma trigger que ajusta o salário base.

```sql
-- Trigger para atualizar salário base de colaboradores
DELIMITER $$
CREATE TRIGGER before_update_colaborador
BEFORE UPDATE ON Funcionario
FOR EACH ROW
BEGIN
    -- Lógica para atualização do salário base
    -- Supondo que haja uma coluna 'SalarioBase' na tabela Funcionario
    SET NEW.SalarioBase = NEW.SalarioBase * 1.1; -- Aumento de 10%
END$$
DELIMITER ;
```

## Consultas SQL

### 1. Quantos pedidos foram feitos por cada cliente?

```sql
SELECT c.Nome, COUNT(p.ID) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.ID = p.ClienteID
GROUP BY c.Nome;
```

Para mais informações sobre a estrutura do banco de dados, consultas SQL e triggers disponíveis, consulte os arquivos no diretório 'sql' deste repositório.

Se precisar de ajuda adicional ou tiver alguma dúvida, não hesite em entrar em contato!
