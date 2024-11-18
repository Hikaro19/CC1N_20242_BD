USE EMPRESA_PASSAGENS_AEREAS;

INSERT INTO PASSAGEIROS VALUES
(12345678901, 'João Silva', '123456789', 'Rua A', 100, 'Bairro X', 'São Paulo', 'SP', '01001-000', 'Brasil', 'joao@email.com'),
(98765432100, 'Maria Oliveira', '987654321', 'Rua B', 200, 'Bairro Y', 'Rio de Janeiro', 'RJ', '20040-000', 'Brasil', 'maria@email.com'),
(45678912312, 'Carlos Pereira', '456789123', 'Rua C', 300, 'Bairro Z', 'Belo Horizonte', 'MG', '30140-000', 'Brasil', 'carlos@email.com'),
(78912345623, 'Ana Costa', '789123456', 'Rua D', 400, 'Bairro W', 'Curitiba', 'PR', '80040-000', 'Brasil', 'ana@email.com'),
(32165498734, 'Lucia Mendes', '321654987', 'Rua E', 500, 'Bairro V', 'Porto Alegre', 'RS', '90010-000', 'Brasil', 'lucia@email.com');

UPDATE PASSAGEIROS SET PASS_TELEFONE = '1122334455' WHERE PASS_CPF = 12345678901;
UPDATE PASSAGEIROS SET PASS_EMAIL = 'maria.new@email.com' WHERE PASS_CPF = 98765432100;

DELETE FROM PASSAGEIROS WHERE PASS_CPF = 32165498734;


INSERT INTO AEROPORTOS VALUES
(1, 'Aeroporto de Congonhas', 'Av. Congonhas', 123, 'Vila Congonhas', 'São Paulo', 'SP', '04626-911', 'Brasil', -23.6261, -46.6565),
(2, 'Aeroporto Santos Dumont', 'Praça Sen. Salgado Filho', 1, 'Centro', 'Rio de Janeiro', 'RJ', '20021-340', 'Brasil', -22.9105, -43.1631),
(3, 'Aeroporto Confins', 'Rodovia MG-10', 5000, 'Confins', 'Belo Horizonte', 'MG', '33400-000', 'Brasil', -19.6244, -43.9716),
(4, 'Aeroporto Afonso Pena', 'Av. Rocha Pombo', 9999, 'São José dos Pinhais', 'Curitiba', 'PR', '83010-900', 'Brasil', -25.5303, -49.1762),
(5, 'Aeroporto Salgado Filho', 'Av. Severo Dullius', 1000, 'São João', 'Porto Alegre', 'RS', '90200-310', 'Brasil', -29.9939, -51.1711);

UPDATE AEROPORTOS SET AEROP_LATITUDE = -23.6277 WHERE AEROP_COD = 1;
UPDATE AEROPORTOS SET AEROP_NOME = 'Aeroporto Internacional de Confins' WHERE AEROP_COD = 3;

DELETE FROM AEROPORTOS WHERE AEROP_COD = 5;


INSERT INTO AERONAVES VALUES
(101, 'Boeing 737', 2010, '6 horas', 180, 'Boeing'),
(102, 'Airbus A320', 2012, '7 horas', 160, 'Airbus'),
(103, 'Embraer E195', 2018, '5 horas', 120, 'Embraer'),
(104, 'Boeing 787', 2015, '12 horas', 250, 'Boeing'),
(105, 'Airbus A380', 2017, '14 horas', 500, 'Airbus');

UPDATE AERONAVES SET AERON_CAPACIDADE = 190 WHERE AERON_PREFIXO = 101;
UPDATE AERONAVES SET AERON_MODELO = 'Airbus A321' WHERE AERON_PREFIXO = 102;

DELETE FROM AERONAVES WHERE AERON_PREFIXO = 105;


INSERT INTO FUNCIONARIOS VALUES
(1, 'José Santos', '11111111111', '1985-01-01', 'Rua 1', 101, 'Bairro 1', 'São Paulo', 'SP', '01001-001', 'Brasil', 'Piloto'),
(2, 'Maria Souza', '22222222222', '1990-05-15', 'Rua 2', 202, 'Bairro 2', 'Rio de Janeiro', 'RJ', '20020-002', 'Brasil', 'Copiloto'),
(3, 'Carlos Lima', '33333333333', '1988-07-20', 'Rua 3', 303, 'Bairro 3', 'Belo Horizonte', 'MG', '30130-003', 'Brasil', 'Comissário'),
(4, 'Ana Paula', '44444444444', '1992-10-10', 'Rua 4', 404, 'Bairro 4', 'Curitiba', 'PR', '80040-004', 'Brasil', 'Comissária'),
(5, 'Ricardo Mendes', '55555555555', '1980-12-25', 'Rua 5', 505, 'Bairro 5', 'Porto Alegre', 'RS', '90050-005', 'Brasil', 'Piloto');

UPDATE FUNCIONARIOS SET FUNCK_FUNCAO = 'Chefe de Cabine' WHERE FUNC_ID = 3;
UPDATE FUNCIONARIOS SET FUNCK_CEP = '90060-006' WHERE FUNC_ID = 5;

DELETE FROM FUNCIONARIOS WHERE FUNC_ID = 4;


INSERT INTO VOOS VALUES
(1, '2024-11-20', '08:00:00', 'São Paulo', 'Rio de Janeiro', 101, 1),
(2, '2024-11-21', '14:00:00', 'Rio de Janeiro', 'Belo Horizonte', 102, 2),
(3, '2024-11-22', '19:00:00', 'Belo Horizonte', 'Curitiba', 103, 3),
(4, '2024-11-23', '09:00:00', 'Curitiba', 'São Paulo', 104, 4),
(5, '2024-11-24', '16:00:00', 'São Paulo', 'Porto Alegre', 101, 1);

UPDATE VOOS SET VOO_HORA = '09:30:00' WHERE VOO_ID = 1;
UPDATE VOOS SET VOO_AEROP_DESTINO = 'Brasília' WHERE VOO_ID = 3;

DELETE FROM VOOS WHERE VOO_ID = 5;


INSERT INTO RESERVAS VALUES
(1, 12345678901, 1, '2024-11-18'),
(2, 98765432100, 2, '2024-11-19'),
(3, 45678912312, 3, '2024-11-20'),
(4, 78912345623, 4, '2024-11-21'),
(5, 32165498734, 1, '2024-11-22');

UPDATE RESERVAS SET RESERVA_DATA = '2024-11-23' WHERE RESERVA_COD = 3;
UPDATE RESERVAS SET PASS_CPF = 45678912312 WHERE RESERVA_COD = 5;

DELETE FROM RESERVAS WHERE RESERVA_COD = 5;


INSERT INTO EQUIPES VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

UPDATE EQUIPES SET EQUIPES_FUNC_ID = 5 WHERE EQUIPES_VOO_ID = 3;
UPDATE EQUIPES SET EQUIPES_VOO_ID =
