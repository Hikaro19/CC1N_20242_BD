USE LOJA_INOVA_TECH;

INSERT INTO CLIENTES VALUES (12345678901, 'João Silva', '1990-01-15', 'joao.silva@email.com', '11999999999', 'ATIVO', 'Rua A', 100, 'Centro', 'São Paulo', 'SP', '01001-000');
INSERT INTO CLIENTES VALUES (98765432109, 'Maria Souza', '1995-03-22', 'maria.souza@email.com', '21988888888', 'ATIVO', 'Rua B', 200, 'Jardim', 'Rio de Janeiro', 'RJ', '22001-000');
INSERT INTO CLIENTES VALUES (11223344556, 'Carlos Pereira', '1987-07-10', 'carlos.pereira@email.com', '31977777777', 'INATIVO', 'Rua C', 300, 'Vila Nova', 'Belo Horizonte', 'MG', '30001-000');
INSERT INTO CLIENTES VALUES (55667788900, 'Ana Lima', '1992-12-05', 'ana.lima@email.com', '41966666666', 'ATIVO', 'Rua D', 400, 'Centro', 'Curitiba', 'PR', '80001-000');
INSERT INTO CLIENTES VALUES (66778899011, 'Lucas Oliveira', '1985-09-30', 'lucas.oliveira@email.com', '51955555555', 'INATIVO', 'Rua E', 500, 'Industrial', 'Porto Alegre', 'RS', '90001-000');

UPDATE CLIENTES SET CLIENTE_EMAIL = 'novoemail.joao@email.com' WHERE CPF_CLIENTE = 12345678901;
UPDATE CLIENTES SET CLIENTE_STATUS_ = 'ATIVO' WHERE CPF_CLIENTE = 11223344556;

DELETE FROM CLIENTES WHERE CPF_CLIENTE = 66778899011;


INSERT INTO FORNECEDORES VALUES (1, 'TechDistribuidora', '12345678000199', 'contato@techdistribuidora.com', '11912345678', 'Eletrônicos', 'Rua F', 600, 'Industrial', 'São Paulo', 'SP', '01002-000');
INSERT INTO FORNECEDORES VALUES (2, 'MegaSoftwares', '98765432000188', 'vendas@megasoftwares.com', '21987654321', 'Softwares', 'Rua G', 700, 'Centro', 'Rio de Janeiro', 'RJ', '22002-000');
INSERT INTO FORNECEDORES VALUES (3, 'Componentes Ltda', '11122233000177', 'info@componentes.com', '31976543210', 'Componentes Eletrônicos', 'Rua H', 800, 'Tecnologia', 'Belo Horizonte', 'MG', '30002-000');
INSERT INTO FORNECEDORES VALUES (4, 'SuperEletro', '44455566000166', 'suporte@supereletro.com', '41965432109', 'Eletrodomésticos', 'Rua I', 900, 'Comercial', 'Curitiba', 'PR', '80002-000');
INSERT INTO FORNECEDORES VALUES (5, 'InovaTech Import', '66677788000155', 'contato@inovatech.com', '51954321098', 'Tecnologia Importada', 'Rua J', 1000, 'Industrial', 'Porto Alegre', 'RS', '90002-000');

UPDATE FORNECEDORES SET FORNECE_TIPO_PROD = 'Periféricos e Acessórios' WHERE FORNECE_ID = 3;
UPDATE FORNECEDORES SET FORNECE_EMAIL = 'atendimento@supereletro.com' WHERE FORNECE_ID = 4;

DELETE FROM FORNECEDORES WHERE FORNECE_ID = 5;


INSERT INTO PRODUTOS VALUES (1, 'Notebook', 'Notebook de última geração', 'Informática', 4500.00, 10, 1);
INSERT INTO PRODUTOS VALUES (2, 'Smartphone', 'Celular Android de alta performance', 'Telefonia', 2500.00, 20, 2);
INSERT INTO PRODUTOS VALUES (3, 'Monitor', 'Monitor 4K de 27 polegadas', 'Periféricos', 1200.00, 15, 3);
INSERT INTO PRODUTOS VALUES (4, 'Impressora', 'Impressora multifuncional', 'Periféricos', 800.00, 5, 4);
INSERT INTO PRODUTOS VALUES (5, 'Mouse', 'Mouse óptico sem fio', 'Acessórios', 150.00, 50, 5);

UPDATE PRODUTOS SET PROD_PRECO = 4600.00 WHERE PROD_ID = 1;
UPDATE PRODUTOS SET PROD_QUANTI_ESTOQUE = 25 WHERE PROD_ID = 2;

DELETE FROM PRODUTOS WHERE PROD_ID = 5;


INSERT INTO VENDAS VALUES (12345678901, 1, 1, 1, '2024-01-10');
INSERT INTO VENDAS VALUES (98765432109, 2, 2, 2, '2024-01-15');
INSERT INTO VENDAS VALUES (11223344556, 3, 3, 3, '2024-01-20');
INSERT INTO VENDAS VALUES (55667788900, 4, 4, 4, '2024-01-25');
INSERT INTO VENDAS VALUES (66778899011, 5, 5, 5, '2024-01-30');

UPDATE VENDAS SET VENDA_DATA = '2024-02-01' WHERE VENDA_ID = 2;
UPDATE VENDAS SET CPF_CLIENTE = 55667788900 WHERE VENDA_ID = 3;

DELETE FROM VENDAS WHERE VENDA_ID = 5;


INSERT INTO PRODUTOS_VENDAS VALUES (1, 1, 4500.00, 1);
INSERT INTO PRODUTOS_VENDAS VALUES (2, 2, 2500.00, 2);
INSERT INTO PRODUTOS_VENDAS VALUES (3, 3, 1200.00, 1);
INSERT INTO PRODUTOS_VENDAS VALUES (4, 4, 800.00, 1);
INSERT INTO PRODUTOS_VENDAS VALUES (5, 5, 150.00, 3);

UPDATE PRODUTOS_VENDAS SET PDVD_VALOR_UNIT = 1400.00 WHERE PROD_ID = 3;
UPDATE PRODUTOS_VENDAS SET PDVD_QUANTIDADE = 2 WHERE VENDA_ID = 4;

DELETE FROM PRODUTOS_VENDAS WHERE VENDA_ID = 5 AND PROD_ID = 5;


INSERT INTO PAGAMENTOS VALUES (1, 4500.00, '2024-01-10', 'PAGO', 12345678901, 1);
INSERT INTO PAGAMENTOS VALUES (2, 2500.00, '2024-01-15', 'PAGO', 98765432109, 2);
INSERT INTO PAGAMENTOS VALUES (3, 1200.00, '2024-01-20', 'PENDENTE', 11223344556, 3);
INSERT INTO PAGAMENTOS VALUES (4, 800.00, '2024-01-25', 'PAGO', 55667788900, 4);
INSERT INTO PAGAMENTOS VALUES (5, 150.00, '2024-01-30', 'PENDENTE', 66778899011, 5);

UPDATE PAGAMENTOS SET PAGA_STATUS = 'PAGO' WHERE PAGA_ID = 3;
UPDATE PAGAMENTOS SET PAGA_VALOR = 155.00 WHERE PAGA_ID = 5;

DELETE FROM PAGAMENTOS WHERE PAGA_ID = 5;