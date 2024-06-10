# E-commerce Database

Este repositório contém a estrutura de um banco de dados para um sistema de e-commerce. Inclui a criação de tabelas, inserção de dados de exemplo e consultas SQL para diversas operações.

## Estrutura do Banco de Dados

O banco de dados possui as seguintes tabelas:

- Cliente
- PessoaFisica
- PessoaJuridica
- Fornecedor
- Produto
- StatusPedido
- MetodoPagamento
- Pedido
- ItemPedido
- Estoque
- Pagamento
- Entrega

## Consultas SQL

### Quantos pedidos foram feitos por cada cliente?

```sql
SELECT c.Nome, COUNT(p.ID) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.ID = p.ClienteID
GROUP BY c.Nome;
