-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE CLIENTE (
cd_cpfcnpj_cliente VARCHAR(20),
cd_telefone_cliente VARCHAR(14),
cd_cliente INTEGER PRIMARY KEY
)

CREATE TABLE NOTA_FISCAL (
vl_total_desconto_nota_fiscal VARCHAR(10),
vl_total_nota_fiscal VARCHAR(10),
dt_emissao_nota_fiscal VARCHAR(100),
cd_nota_fiscal INTEGER PRIMARY KEY,
cd_cliente INTEGER,
FOREIGN KEY(cd_cliente) REFERENCES CLIENTE (cd_cliente)
)

CREATE TABLE PEDIDO (
vl_pedido NUMERIC(8,2),
ds_pedido VARCHAR(100),
cd_pedido INTEGER PRIMARY KEY,
nm_status_pedido VARCHAR(10),
qt_pedido NUMERIC(20)
)

CREATE TABLE ds_endereco_cliente (
ds_endereco_cliente_PK INTEGER PRIMARY KEY,
cd_cep_cliente NUMERIC(8),
nm_bairro_cliente VARCHAR(50),
nm_cidade_cliente VARCHAR(10),
ds_logradouro VARCHAR(100),
ds_complemento_cliente VARCHAR(10),
cd_cliente_FK INTEGER,
FOREIGN KEY(cd_cliente_FK) REFERENCES CLIENTE (cd_cliente)
)

CREATE TABLE Relacao2_pedido_nf (
cd_pedido INTEGER,
cd_nota_fiscal INTEGER,
FOREIGN KEY(cd_pedido) REFERENCES PEDIDO (cd_pedido),
FOREIGN KEY(cd_nota_fiscal) REFERENCES NOTA_FISCAL (cd_nota_fiscal)
)

