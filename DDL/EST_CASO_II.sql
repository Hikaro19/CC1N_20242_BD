CREATE DATABASE IF NOT EXISTS EMPRESA_PASSAGENS_AEREAS;
USE EMPRESA_PASSAGENS_AEREAS;

CREATE TABLE IF NOT EXISTS AEROPORTOS(
AEROP_COD INT PRIMARY KEY,
AEROP_NOME VARCHAR (30) NOT NULL,
AEROP_RUA VARCHAR(45) NOT NULL,
AEROP_NUMRUA INT NOT NULL,
AEROP_BAIRRO VARCHAR(45) NOT NULL,
AEROP_CIDADE VARCHAR(45) NOT NULL,
AEROP_ESTADO VARCHAR(45) NOT NULL,
AEROP_CEP VARCHAR (20) NOT NULL,
AEROP_PAIS VARCHAR(30) NOT NULL,
AEROP_LATITUDE FLOAT NOT NULL,
AEROP_LONGITUDE FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS AERONAVES(
AERON_PREFIXO INT PRIMARY KEY,
AERON_MODELO VARCHAR (30) NOT NULL,
AERON_ANOFABR INT NOT NULL,
AERON_AUTONOMIA VARCHAR (45) NOT NULL,
AERON_CAPACIDADE VARCHAR (45) NOT NULL,
AERON_FABRICANTE VARCHAR (45) NOT NULL
);

CREATE TABLE IF NOT EXISTS PASSAGEIROS (
PASS_CPF INT PRIMARY KEY,
PASS_NOME VARCHAR(30) NOT NULL,
PASS_TELEFONE VARCHAR(15) NOT NULL,
PASS_RUA VARCHAR(45) NOT NULL,
PASS_NUMRUA INT NOT NULL,
PASS_BAIRRO VARCHAR(45) NOT NULL,
PASS_CIDADE VARCHAR(45) NOT NULL,
PASS_ESTADO VARCHAR(45) NOT NULL,
PASS_CEP VARCHAR (20) NOT NULL,
PASS_PAIS VARCHAR(30) NOT NULL,
PASS_EMAIL VARCHAR (30) NOT NULL
);

CREATE TABLE IF NOT EXISTS RESERVAS(
RESERVA_COD INT PRIMARY KEY,
RESERVA_PASS_CPF INT NOT NULL,
CONSTRAINT FK_PASS_CPF FOREIGN KEY (RESERVA_PASS_CPF)
REFERENCES PASSAGEIROS (PASS_CPF),
RESERVA_VOO_ID INT NOT NULL,
CONSTRAINT FK_VOO_ID FOREIGN KEY (RESERVA_VOO_ID)
REFERENCES VOOS (VOO_ID)
);

CREATE TABLE IF NOT EXISTS VOOS(
VOO_ID INT PRIMARY KEY,
VOO_DATA DATE NOT NULL,
VOO_HORA TIME NOT NULL,
VOO_AEROP_ORIGEM VARCHAR (45) NOT NULL,
VOO_AEROP_DESTINO VARCHAR (45) NOT NULL,
AERON_PREFIXO INT NOT NULL,
CONSTRAINT FK_AERONAVES FOREIGN KEY (AERON_PREFIXO)
REFERENCES AERONAVES (AERON_PREFIXO)
);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS(
FUNC_ID INT PRIMARY KEY,
FUNCK_NOME VARCHAR (45) NOT NULL,
FUNCK_CPF VARCHAR (14) NOT NULL,
FUNCK_DATANASC DATE NOT NULL,
FUNCK_RUA VARCHAR(45) NOT NULL,
FUNCK_NUMRUA INT NOT NULL,
FUNCK_BAIRRO VARCHAR(45) NOT NULL,
FUNCK_CIDADE VARCHAR(45) NOT NULL,
FUNCK_ESTADO VARCHAR(45) NOT NULL,
FUNCK_CEP VARCHAR (20) NOT NULL,
FUNCK_PAIS VARCHAR(30) NOT NULL,
FUNCK_FUNCAO VARCHAR (45) NOT NULL
);

CREATE TABLE IF NOT EXISTS EQUIPES(
EQUIPES_FUNCIONARIOS INT,
CONSTRAINT FK_FUNCIONARIOS FOREIGN KEY (EQUIPES_FUNCIONARIOS) REFERENCES FUNCIONARIOS (FUNC_ID),
EQUIPES_VOOS INT,
CONSTRAINT FK_VOOS FOREIGN KEY (EQUIPES_VOOS) REFERENCES VOOS (VOO_ID)
);