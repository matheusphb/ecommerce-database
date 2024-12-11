# Projeto Oficina

Este projeto implementa o esquema lógico de um banco de dados para uma oficina, utilizando o MySQL.

## Esquema Lógico

O esquema lógico é composto pelas seguintes tabelas:

- **Cliente**: Armazena informações dos clientes.
- **PessoaFisica**: Armazena informações adicionais para clientes pessoa física.
- **PessoaJuridica**: Armazena informações adicionais para clientes pessoa jurídica.
- **Fornecedor**: Armazena informações dos fornecedores.
- **Produto**: Armazena informações dos produtos fornecidos.
- **Pedido**: Armazena informações dos pedidos realizados pelos clientes.
- **StatusPedido**: Armazena os diferentes status que um pedido pode ter.
- **MetodoPagamento**: Armazena os métodos de pagamento utilizados pelos clientes.
- **ItemPedido**: Armazena os itens contidos em cada pedido.
- **Estoque**: Armazena as quantidades em estoque dos produtos.

## Instruções

### Criação das Tabelas

Execute o script `create_tables.sql` na pasta `sql/` para criar o banco de dados e as tabelas.

### Consultas SQL

As consultas SQL para recuperação de dados estão disponíveis no arquivo `select_queries.sql` na pasta `queries/`.

## População de Dados

Inclua dados de exemplo nas tabelas utilizando as instruções de `INSERT` fornecidas no script `create_tables.sql`.

## Autor

Matheus costa de araujo
"# infra_linux" 
