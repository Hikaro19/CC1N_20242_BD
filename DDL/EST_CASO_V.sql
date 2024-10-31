CREATE SCHEMA LOJA_INOVA_TECH;
USE LOJA_INOVA_TECH;


CREATE TABLE IF NOT EXISTS CLIENTES(
CPF_CLIENTE INT PRIMARY KEY,
CLIENTE_NOME VARCHAR (100) NOT NULL,
CLIENTE_DATA_NASC DATE NOT NULL,
CLIENTE_EMAIL VARCHAR (100) NOT NULL,
CLIENTE_TELEFONE VARCHAR (20) NOT NULL,
CLIENTE_STATUS_ ENUM('ATIVO','INATIVO'),
CLIENTE_RUA VARCHAR (100) NOT NULL,
CLIENTE_NUMRUA INT NOT NULL,
CLIENTE_BAIRRO VARCHAR (100) NOT NULL,
CLIENTE_CIDADE VARCHAR (100) NOT NULL,
CLIENTE_ESTADO VARCHAR (100) NOT NULL,
CLIENTE_CEP VARCHAR (14) NOT NULL
);

CREATE TABLE IF NOT EXISTS FORNECEDORES (
FORNECE_ID INT PRIMARY KEY,
FORNECE_NOME VARCHAR (100) NOT NULL,
FORNECE_CNPJ VARCHAR (20) NOT NULL,
FORNECE_EMAIL VARCHAR (100) NOT NULL,
FORNECE_TELEFONE VARCHAR (20) NOT NULL,
FORNECE_TIPO_PROD VARCHAR (100) NOT NULL,
FORNECE_RUA VARCHAR (100) NOT NULL,
FORNECE_NUMRUA INT NOT NULL,
FORNECE_BAIRRO VARCHAR (100) NOT NULL,
FORNECE_CIDADE VARCHAR (100) NOT NULL,
FORNECE_ESTADO VARCHAR (100) NOT NULL,
FORNECE_CEP VARCHAR (14) NOT NULL
);

CREATE TABLE IF NOT EXISTS VENDAS (
CPF_CLIENTE INT NOT NULL,
PROD_ID INT NOT NULL,
PAGA_ID INT NOT NULL,
VENDA_ID INT PRIMARY KEY,
VENDA_DATA DATE NOT NULL,
CONSTRAINT FK_CPF_CLIENTE FOREIGN KEY (CPF_CLIENTE)
REFERENCES CLIENTES (CPF_CLIENTE)
);

CREATE TABLE IF NOT EXISTS PRODUTOS (
PROD_ID INT PRIMARY KEY,
PROD_NOME VARCHAR (100) NOT NULL,
PROD_DESCRICAO VARCHAR (200) NOT NULL,
PROD_CATEGORIA VARCHAR (100) NOT NULL,
PROD_PRECO DECIMAL (10,2) NOT NULL,
PROD_QUANTI_ESTOQUE DECIMAL NOT NULL,
FORNECE_ID INT NOT NULL,
CONSTRAINT FK_FORNECEP_ID FOREIGN KEY (FORNECE_ID)
REFERENCES FORNECEDORES (FORNECE_ID)
);

CREATE TABLE IF NOT EXISTS PRODUTOS_VENDAS(
VENDA_ID INT,
PROD_ID INT,
PRIMARY KEY (VENDA_ID,PROD_ID),
PDVD_VALOR_UNIT DECIMAL(10,2) NOT NULL,
PDVD_QUANTIDADE INT NOT NULL,
CONSTRAINT FK_VENDA_ID FOREIGN KEY (VENDA_ID) REFERENCES VENDAS (VENDA_ID),
CONSTRAINT FK_PROD_ID FOREIGN KEY (PROD_ID) REFERENCES PRODUTOS (PROD_ID)
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS(
PAGA_ID INT PRIMARY KEY,
PAGA_VALOR DECIMAL (10,2) NOT NULL,
PAGA_DATA DATE NOT NULL,
PAGA_STATUS ENUM('PAGO','PENDENTE'),
CPF_CLIENTE INT NOT NULL,
VENDA_ID INT NOT NULL,
CONSTRAINT FK_CPF_CLIENTEP FOREIGN KEY (CPF_CLIENTE)
REFERENCES CLIENTES (CPF_CLIENTE),
CONSTRAINT FK_VENDAP_ID FOREIGN KEY (VENDA_ID)
REFERENCES VENDAS (VENDA_ID)
);



DROP DATABASE LOJA_INOVA_TECH;