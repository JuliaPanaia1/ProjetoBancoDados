## Hi there 👋

**Vamos criar um exemplo de tabelas para um sistema de gerenciamento de uma gráfica. As tabelas principais serão Cliente, Pedido e 
NotaFiscal. Cada uma dessas tabelas terá colunas que representam seus atributos e relacionamentos entre si.**


<h1 align="center"> Tabelas </h1>

# :hammer: Funcionalidades do Banco de Dados

- `Funcionalidade 1`  Cliente: Armazena informações dos clientes.
- `Funcionalidade 2`  Pedido: Armazena informações dos pedidos realizados.
- `Funcionalidade 3`  NotaFiscal: Armazena informações das notas fiscais emitidas para os pedidos.


<h1 align="center">Funcionamento do Sistema de Gerenciamento </h1>

**Cadastro de Cliente:**

Os clientes são cadastrados na tabela Cliente com suas informações básicas (nome, telefone, endereço, cpfcnpj).

**Realização de Pedido:**

Quando um cliente faz um pedido, um novo registro é inserido na tabela Pedido, associando o pedido ao cliente pelo CD_CLIENTE e registrando cd_pedido e seu status.

**Registro de Itens do Pedido:**

Cada item do pedido é registrado na tabela Pedido, vinculando-o ao cd_pedido correspondente. São armazenadas informações como descrição, quantidade e preço unitário de cada item.

**Emissão de Nota Fiscal:**

Após a confirmação do pedido, uma nota fiscal é gerada e registrada na tabela NotaFiscal, associando-a ao pedido pelo cd_pedido. São registradas a data de emissão e o
valor total da nota fiscal.
