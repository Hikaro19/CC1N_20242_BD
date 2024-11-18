USE SISTEMA_DE_GESTAO_EMPRESARIAL1;

INSERT INTO TIPO_DE_ENDERECO VALUES (1, 'Residencial');
INSERT INTO TIPO_DE_ENDERECO VALUES (2, 'Comercial');
INSERT INTO TIPO_DE_ENDERECO VALUES (3, 'Industrial');
INSERT INTO TIPO_DE_ENDERECO VALUES (4, 'Rural');
INSERT INTO TIPO_DE_ENDERECO VALUES (5, 'Outros');

UPDATE TIPO_DE_ENDERECO SET NOME = 'Residencial Atualizado' WHERE ID_TIPO_DE_ENDERECO = 1;
UPDATE TIPO_DE_ENDERECO SET NOME = 'Comercial Atualizado' WHERE ID_TIPO_DE_ENDERECO = 2;

DELETE FROM TIPO_DE_ENDERECO WHERE ID_TIPO_DE_ENDERECO = 5;


INSERT INTO CARGO VALUES (1, 'Gerente', 8000.00);
INSERT INTO CARGO VALUES (2, 'Analista', 4500.00);
INSERT INTO CARGO VALUES (3, 'Operador', 3000.00);
INSERT INTO CARGO VALUES (4, 'Auxiliar', 2000.00);
INSERT INTO CARGO VALUES (5, 'Técnico', 3500.00);

UPDATE CARGO SET SALARIO_CARGO = 8500.00 WHERE ID_CARGO = 1;
UPDATE CARGO SET NOME_CARGO = 'Técnico Avançado' WHERE ID_CARGO = 5;

DELETE FROM CARGO WHERE ID_CARGO = 4;


INSERT INTO PRODUTOS VALUES (1, 'Mesa', 'Marrom', '120x80x75cm', 25.5, 200.00, '02:00:00', 'Design_A1', '01:00:00');
INSERT INTO PRODUTOS VALUES (2, 'Cadeira', 'Preta', '45x45x90cm', 7.5, 100.00, '01:30:00', 'Design_B2', '00:45:00');
INSERT INTO PRODUTOS VALUES (3, 'Sofá', 'Cinza', '200x90x85cm', 55.0, 1500.00, '05:00:00', 'Design_C3', '02:00:00');
INSERT INTO PRODUTOS VALUES (4, 'Estante', 'Branca', '150x40x180cm', 30.0, 800.00, '03:00:00', 'Design_D4', '01:30:00');
INSERT INTO PRODUTOS VALUES (5, 'Armário', 'Bege', '100x50x200cm', 40.0, 1200.00, '04:00:00', 'Design_E5', '02:00:00');

UPDATE PRODUTOS SET PRECO_PROD = 210.00 WHERE ID_PROD = 1;
UPDATE PRODUTOS SET PESO_PROD = 8.0 WHERE ID_PROD = 2;

DELETE FROM PRODUTOS WHERE ID_PROD = 5;


INSERT INTO TIPO_COMPONENTE VALUES (1, 'Plástico');
INSERT INTO TIPO_COMPONENTE VALUES (2, 'Madeira');
INSERT INTO TIPO_COMPONENTE VALUES (3, 'Metal');
INSERT INTO TIPO_COMPONENTE VALUES (4, 'Vidro');
INSERT INTO TIPO_COMPONENTE VALUES (5, 'Tecido');

UPDATE TIPO_COMPONENTE SET NOME_TIPO_COMPONENTE = 'Aço Inoxidável' WHERE ID_TIPO_COMPONENTE = 3;
UPDATE TIPO_COMPONENTE SET NOME_TIPO_COMPONENTE = 'Vidro Temperado' WHERE ID_TIPO_COMPONENTE = 4;

DELETE FROM TIPO_COMPONENTE WHERE ID_TIPO_COMPONENTE = 5;


INSERT INTO MAQUINAS VALUES (1, '2030-12-31 00:00:00', '2020-01-01', '2025-01-01');
INSERT INTO MAQUINAS VALUES (2, '2029-12-31 00:00:00', '2019-06-15', '2024-06-15');
INSERT INTO MAQUINAS VALUES (3, '2035-12-31 00:00:00', '2022-03-10', '2027-03-10');
INSERT INTO MAQUINAS VALUES (4, '2032-12-31 00:00:00', '2021-08-20', '2026-08-20');
INSERT INTO MAQUINAS VALUES (5, '2038-12-31 00:00:00', '2023-05-25', '2028-05-25');

UPDATE MAQUINAS SET TEMPOVIDA_MAQUINA = '2033-12-31 00:00:00' WHERE ID_MAQUINA = 2;
UPDATE MAQUINAS SET DTFIMGARANTIA_MAQUINA = '2029-05-25' WHERE ID_MAQUINA = 5;

DELETE FROM MAQUINAS WHERE ID_MAQUINA = 3;


INSERT INTO ENDERECOS VALUES (1, 'Rua A', 100, 'Avenida', 'Centro', 'São Paulo', 'SP', '01001-000', 'Brasil', 1);
INSERT INTO ENDERECOS VALUES (2, 'Rua B', 200, 'Rua', 'Bela Vista', 'Rio de Janeiro', 'RJ', '22001-000', 'Brasil', 2);
INSERT INTO ENDERECOS VALUES (3, 'Rua C', 300, 'Travessa', 'Industrial', 'Curitiba', 'PR', '80001-000', 'Brasil', 3);
INSERT INTO ENDERECOS VALUES (4, 'Rua D', 400, 'Praça', 'Jardim', 'Belo Horizonte', 'MG', '30001-000', 'Brasil', 4);
INSERT INTO ENDERECOS VALUES (5, 'Rua E', 500, 'Alameda', 'Comercial', 'Porto Alegre', 'RS', '90001-000', 'Brasil', 5);

UPDATE ENDERECOS SET END_BAIRRO = 'Centro Atualizado' WHERE ID_ENDERECO = 1;
UPDATE ENDERECOS SET END_ESTADO = 'RJ Atualizado' WHERE ID_ENDERECO = 2;

DELETE FROM ENDERECOS WHERE ID_ENDERECO = 5;


INSERT INTO CLIENTES VALUES (1, '12345678000199', '2024-01-01', 'Comércio', 'Empresa A', 1);
INSERT INTO CLIENTES VALUES (2, '98765432000188', '2024-02-01', 'Indústria', 'Empresa B', 2);
INSERT INTO CLIENTES VALUES (3, '11122233000177', '2024-03-01', 'Serviços', 'Empresa C', 3);
INSERT INTO CLIENTES VALUES (4, '44455566000166', '2024-04-01', 'Tecnologia', 'Empresa D', 4);
INSERT INTO CLIENTES VALUES (5, '66677788000155', '2024-05-01', 'Logística', 'Empresa E', 5);

UPDATE CLIENTES SET RAMOATVDD_CLIENTE = 'E-commerce' WHERE ID_CLIENTE = 1;
UPDATE CLIENTES SET RZSOCIAL_CLIENTE = 'Empresa B Atualizada' WHERE ID_CLIENTE = 2;

DELETE FROM CLIENTES WHERE ID_CLIENTE = 5;


INSERT INTO TELEFONE_CLIENTES VALUES ('11999999999', 1);
INSERT INTO TELEFONE_CLIENTES VALUES ('21988888888', 2);
INSERT INTO TELEFONE_CLIENTES VALUES ('31977777777', 3);
INSERT INTO TELEFONE_CLIENTES VALUES ('41966666666', 4);
INSERT INTO TELEFONE_CLIENTES VALUES ('51955555555', 5);

UPDATE TELEFONE_CLIENTES SET TELEFONES = '11988888888' WHERE ID_CLIENTE = 1;
UPDATE TELEFONE_CLIENTES SET TELEFONES = '21977777777' WHERE ID_CLIENTE = 2;

DELETE FROM TELEFONE_CLIENTES WHERE ID_CLIENTE = 5;


INSERT INTO EMPREGADOS VALUES (1, 'João Silva', '2022-01-15', 1, 1);
INSERT INTO EMPREGADOS VALUES (2, 'Maria Oliveira', '2023-03-10', 2, 2);
INSERT INTO EMPREGADOS VALUES (3, 'Pedro Santos', '2021-06-05', 3, 3);
INSERT INTO EMPREGADOS VALUES (4, 'Ana Costa', '2020-11-20', 4, 4);
INSERT INTO EMPREGADOS VALUES (5, 'Carlos Souza', '2019-09-25', 5, 5);

UPDATE TELEFONE_EMPREGADOS SET TELEFONES = '11988888888' WHERE ID_EMPREGADO = 1;
UPDATE TELEFONE_EMPREGADOS SET TELEFONES = '21977777777' WHERE ID_EMPREGADO = 2;

DELETE FROM EMPREGADOS WHERE ID_EMPREGADO = 5;


INSERT INTO TELEFONE_EMPREGADOS VALUES ('11999999999', 1);
INSERT INTO TELEFONE_EMPREGADOS VALUES ('21988888888', 2);
INSERT INTO TELEFONE_EMPREGADOS VALUES ('31977777777', 3);
INSERT INTO TELEFONE_EMPREGADOS VALUES ('41966666666', 4);
INSERT INTO TELEFONE_EMPREGADOS VALUES ('51955555555', 5);

UPDATE TELEFONE_EMPREGADOS SET TELEFONES = '11988888888' WHERE ID_EMPREGADO = 1;
UPDATE TELEFONE_EMPREGADOS SET TELEFONES = '21977777777' WHERE ID_EMPREGADO = 2;

DELETE FROM TELEFONE_EMPREGADOS WHERE ID_EMPREGADO = 5;


INSERT INTO QUALIFICACOES VALUES (1, 1);
INSERT INTO QUALIFICACOES VALUES (2, 2);
INSERT INTO QUALIFICACOES VALUES (3, 3);
INSERT INTO QUALIFICACOES VALUES (4, 4);
INSERT INTO QUALIFICACOES VALUES (5, 5);

UPDATE QUALIFICACOES SET QUALIFICACAO_EMPREGADO = 10 WHERE ID_EMPREGADO = 1;
UPDATE QUALIFICACOES SET QUALIFICACAO_EMPREGADO = 20 WHERE ID_EMPREGADO = 2;

DELETE FROM QUALIFICACOES WHERE ID_EMPREGADO = 5;


INSERT INTO EMPRESAS VALUES (111111111, 'Empresa Alpha', 'Contato Empresa A', 1);
INSERT INTO EMPRESAS VALUES (222222222, 'Empresa Beta', 'Contato Empresa B', 2);
INSERT INTO EMPRESAS VALUES (333333333, 'Empresa Gama', 'Contato Empresa C', 3);
INSERT INTO EMPRESAS VALUES (444444444, 'Empresa Delta', 'Contato Empresa D', 4);
INSERT INTO EMPRESAS VALUES (555555555, 'Empresa Épsilon', 'Contato Empresa E', 5);

UPDATE EMPRESAS SET RZSOZIAL_EMPRESA = 'Empresa Alpha Atualizada' WHERE CNPJ_EMPRESA = 111111111;
UPDATE EMPRESAS SET PCONTATO_EMPRESA = 'Novo Contato Empresa B' WHERE CNPJ_EMPRESA = 222222222;

DELETE FROM EMPRESAS WHERE CNPJ_EMPRESA = 555555555;


INSERT INTO TELEFONE_EMPRESAS VALUES ('11987654321', 111111111);
INSERT INTO TELEFONE_EMPRESAS VALUES ('21987654321', 222222222);
INSERT INTO TELEFONE_EMPRESAS VALUES ('31987654321', 333333333);
INSERT INTO TELEFONE_EMPRESAS VALUES ('41987654321', 444444444);
INSERT INTO TELEFONE_EMPRESAS VALUES ('51987654321', 555555555);

UPDATE TELEFONE_EMPRESAS SET TELEFONE = '11933333333' WHERE CNPJ_EMPRESA = 111111111;
UPDATE TELEFONE_EMPRESAS SET TELEFONE = '21944444444' WHERE CNPJ_EMPRESA = 222222222;

DELETE FROM TELEFONE_EMPRESAS WHERE CNPJ_EMPRESA = 555555555;


INSERT INTO FORNECEDORES VALUES (666666666, 'Fornecedor Zeta', 'Contato Fornecedor Z', 1);
INSERT INTO FORNECEDORES VALUES (777777777, 'Fornecedor Omega', 'Contato Fornecedor O', 2);
INSERT INTO FORNECEDORES VALUES (888888888, 'Fornecedor Sigma', 'Contato Fornecedor S', 3);
INSERT INTO FORNECEDORES VALUES (999999999, 'Fornecedor Tau', 'Contato Fornecedor T', 4);
INSERT INTO FORNECEDORES VALUES (101010101, 'Fornecedor Lambda', 'Contato Fornecedor L', 5);

UPDATE FORNECEDORES SET RZSOZIAL_FORNEC = 'Fornecedor Zeta Atualizado' WHERE CNPJ_FORNEC = 666666666;
UPDATE FORNECEDORES SET PCONTATO_FORNEC = 'Novo Contato Fornecedor O' WHERE CNPJ_FORNEC = 777777777;

DELETE FROM FORNECEDORES WHERE CNPJ_FORNEC = 101010101;


INSERT INTO TELEFONE_FORNECEDORES VALUES ('11911223344', 666666666);
INSERT INTO TELEFONE_FORNECEDORES VALUES ('21911223344', 777777777);
INSERT INTO TELEFONE_FORNECEDORES VALUES ('31911223344', 888888888);
INSERT INTO TELEFONE_FORNECEDORES VALUES ('41911223344', 999999999);
INSERT INTO TELEFONE_FORNECEDORES VALUES ('51911223344', 101010101);

UPDATE TELEFONE_FORNECEDORES SET TELEFONE = '11955555555' WHERE CNPJ_FORNEC = 666666666;
UPDATE TELEFONE_FORNECEDORES SET TELEFONE = '21966666666' WHERE CNPJ_FORNEC = 777777777;

DELETE FROM TELEFONE_FORNECEDORES WHERE CNPJ_FORNEC = 101010101;


INSERT INTO COMPONENTES VALUES (1, 'Motor', 100, 500.00, 'unidade', 1);
INSERT INTO COMPONENTES VALUES (2, 'Parafuso', 1000, 0.50, 'unidade', 2);
INSERT INTO COMPONENTES VALUES (3, 'Placa Eletrônica', 50, 150.00, 'unidade', 3);
INSERT INTO COMPONENTES VALUES (4, 'Bateria', 200, 300.00, 'unidade', 4);
INSERT INTO COMPONENTES VALUES (5, 'Cabo USB', 500, 10.00, 'unidade', 5);

UPDATE COMPONENTES SET NOME_COMPONENTE = 'Motor Atualizado' WHERE ID_COMPONENTE = 1;
UPDATE COMPONENTES SET PRECOUNI_COMPONENTE = 520.00 WHERE ID_COMPONENTE = 1;

DELETE FROM COMPONENTES WHERE ID_COMPONENTE = 5;


INSERT INTO RECURSOS_ESPECIFICOS VALUES (1, 2, 'kg', '01:00:00', '02:30:00', 1, 1, 1, 1);
INSERT INTO RECURSOS_ESPECIFICOS VALUES (2, 5, 'kg', '00:30:00', '01:00:00', 2, 2, 2, 2);
INSERT INTO RECURSOS_ESPECIFICOS VALUES (3, 1, 'unidade', '02:00:00', '03:00:00', 3, 3, 3, 3);
INSERT INTO RECURSOS_ESPECIFICOS VALUES (4, 10, 'g', '00:45:00', '01:15:00', 4, 4, 4, 4);
INSERT INTO RECURSOS_ESPECIFICOS VALUES (5, 15, 'g', '01:15:00', '02:00:00', 5, 5, 5, 5);

UPDATE RECURSOS_ESPECIFICOS SET QUANT_NECESS_RE = 3 WHERE ID_RE = 1;
UPDATE RECURSOS_ESPECIFICOS SET TEMPOUSO_RE = '02:00:00' WHERE ID_RE = 1;

DELETE FROM RECURSOS_ESPECIFICOS WHERE ID_RE = 2;


INSERT INTO ENCOMENDAS VALUES (1, '2023-10-15', 1500.00, 100.00, 1400.00, 1);
INSERT INTO ENCOMENDAS VALUES (2, '2023-10-16', 3000.00, 200.00, 2800.00, 2);
INSERT INTO ENCOMENDAS VALUES (3, '2023-10-17', 4500.00, 300.00, 4200.00, 3);
INSERT INTO ENCOMENDAS VALUES (4, '2023-10-18', 6000.00, 400.00, 5600.00, 4);
INSERT INTO ENCOMENDAS VALUES (5, '2023-10-19', 7500.00, 500.00, 7000.00, 5);

UPDATE ENCOMENDAS SET VALORTOTAL_ENCOM = 1550.00 WHERE ID_ENCOM = 1;
UPDATE ENCOMENDAS SET VALORLIQUI_ENCOM = 1450.00 WHERE ID_ENCOM = 1;

DELETE FROM ENCOMENDAS WHERE ID_ENCOM = 3;


INSERT INTO FORMA_DE_PAGAMENTO VALUES (1, 1, 1, 3);
INSERT INTO FORMA_DE_PAGAMENTO VALUES (2, 2, 2, 5);
INSERT INTO FORMA_DE_PAGAMENTO VALUES (3, 3, 3, 4);
INSERT INTO FORMA_DE_PAGAMENTO VALUES (4, 4, 4, 2);
INSERT INTO FORMA_DE_PAGAMENTO VALUES (5, 5, 5, 6);

UPDATE FORMA_DE_PAGAMENTO SET QUANTPARCELAS_PAGAMENTO = 4 WHERE ID_FORMA_PAGAMENTO = 1;
UPDATE FORMA_DE_PAGAMENTO SET ID_PROD = 2 WHERE ID_FORMA_PAGAMENTO = 1;

DELETE FROM FORMA_DE_PAGAMENTO WHERE ID_FORMA_PAGAMENTO = 3;


INSERT INTO REGISTRO_SUPRIMENTOS VALUES (100, '2023-11-01', 1, 1);
INSERT INTO REGISTRO_SUPRIMENTOS VALUES (200, '2023-11-02', 2, 2);
INSERT INTO REGISTRO_SUPRIMENTOS VALUES (150, '2023-11-03', 3, 3);
INSERT INTO REGISTRO_SUPRIMENTOS VALUES (120, '2023-11-04', 4, 4);
INSERT INTO REGISTRO_SUPRIMENTOS VALUES (180, '2023-11-05', 5, 5);

UPDATE REGISTRO_SUPRIMENTOS SET QUANTIDADE_RS = 120 WHERE ID_COMPONENTE = 1;
UPDATE REGISTRO_SUPRIMENTOS SET DATANECESS_RS = '2023-11-06' WHERE ID_COMPONENTE = 1;

DELETE FROM REGISTRO_SUPRIMENTOS WHERE DATANECESS_RS = '2023-11-02';


INSERT INTO REGISTRO_MANUTENCAO VALUES (1, '2023-09-10', 'Troca de peças', 1);
INSERT INTO REGISTRO_MANUTENCAO VALUES (2, '2023-09-15', 'Manutenção preventiva', 2);
INSERT INTO REGISTRO_MANUTENCAO VALUES (3, '2023-09-20', 'Lubrificação', 3);
INSERT INTO REGISTRO_MANUTENCAO VALUES (4, '2023-09-25', 'Troca de óleo', 4);
INSERT INTO REGISTRO_MANUTENCAO VALUES (5, '2023-09-30', 'Ajuste técnico', 5);

UPDATE REGISTRO_MANUTENCAO SET DESCRICAO_RM = 'Troca de peças atualizada' WHERE ID_RM = 1;
UPDATE REGISTRO_MANUTENCAO SET DATA_RM = '2023-10-01' WHERE ID_RM = 1;

DELETE FROM REGISTRO_MANUTENCAO WHERE DESCRICAO_RM = 'Troca de peças';


INSERT INTO ENCOMENDAS_PRODUTOS VALUES (1, 1);
INSERT INTO ENCOMENDAS_PRODUTOS VALUES (2, 2);
INSERT INTO ENCOMENDAS_PRODUTOS VALUES (3, 3);
INSERT INTO ENCOMENDAS_PRODUTOS VALUES (4, 4);
INSERT INTO ENCOMENDAS_PRODUTOS VALUES (5, 5);

UPDATE ENCOMENDAS_PRODUTOS SET ID_PROD = 2 WHERE ID_ENCOM = 1;
UPDATE ENCOMENDAS_PRODUTOS SET ID_ENCOM = 2 WHERE ID_PROD = 2;

DELETE FROM ENCOMENDAS_PRODUTOS WHERE ID_ENCOM = 3 AND ID_PROD = 3;


INSERT INTO FORNECEDORES_COMPONENTES VALUES (666666666, 1);
INSERT INTO FORNECEDORES_COMPONENTES VALUES (777777777, 2);
INSERT INTO FORNECEDORES_COMPONENTES VALUES (888888888, 3);
INSERT INTO FORNECEDORES_COMPONENTES VALUES (999999999, 4);
INSERT INTO FORNECEDORES_COMPONENTES VALUES (101010101, 5);

UPDATE FORNECEDORES_COMPONENTES SET ID_COMPONENTE = 2 WHERE CNPJ_FORNEC = 666666666;
UPDATE FORNECEDORES_COMPONENTES SET CNPJ_FORNEC = 777777777 WHERE ID_COMPONENTE = 2;

DELETE FROM FORNECEDORES_COMPONENTES WHERE CNPJ_FORNEC = 777777777;