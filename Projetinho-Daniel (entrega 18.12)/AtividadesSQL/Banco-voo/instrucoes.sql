CRIANDO TABELAS-----------------------------------------------------------------------------

CREATE TABLE tb_passageiros (
    cpf TEXT PRIMARY KEY,
    nome TEXT,
    data_nascimento DATE,
    telefone1 TEXT,
    telefone2 TEXT,
    rua TEXT,
    numero INTEGER,
    cep TEXT,
    complemento TEXT,
    bairro TEXT,
    cidade TEXT,
    estado TEXT
);

CREATE TABLE tb_rotas (
    cod_rota INTEGER PRIMARY KEY,
    origem TEXT,
    destino TEXT
);

CREATE TABLE tb_avioes (
    numero_aviao INTEGER PRIMARY KEY,
    modelo TEXT
);

CREATE TABLE tb_voos (
    numero_voo INTEGER PRIMARY KEY,
    cod_rota INTEGER,
    numero_aviao INTEGER,
    horario_partida DATETIME,
    horario_chegada DATETIME,
    FOREIGN KEY (cod_rota) REFERENCES Rotas(cod_rota),
    FOREIGN KEY (numero_aviao) REFERENCES Avioes(numero_aviao)
);

CREATE TABLE tb_reservas (
    cod_reserva INTEGER PRIMARY KEY,
    cpf_passageiro TEXT,
    numero_voo INTEGER,
    numero_assento INTEGER,
    FOREIGN KEY (cpf_passageiro) REFERENCES Passageiros(cpf),
    FOREIGN KEY (numero_voo) REFERENCES Voos(numero_voo)
);

POPULANDO TABELAS-----------------------------------------------------------------------------

INSERT INTO tb_passageiros (cpf, nome, data_nascimento, telefone1, rua, numero, cep, bairro, cidade, estado)
VALUES
    ('12345678876', 'Baianinho mata onça', '1980-05-18', '987811111', 'Rua Armando Nunes', '213', '12345-678', 'Complemento Jacinto','Bairro Assunção', 'Cidade Assada', 'Estado Asfalto'),
 ('12345678879', 'Baianinho mata leão', '1984-05-18', '217811111', 'Rua Armando Pedroso', '209', '12345-687', 'Complemento Neybey','Bairro Vasco', 'Cidade Fritada', 'Estado Amazonas'),
 ('12345678652', 'Baianinho mata Aranha', '1970-05-18', '9878114321', 'Rua Armando Lauro', '231', '12345-605', 'Complemento Jaime','Bairro Lamado', 'Cidade Beibuta', 'Estado São Paulo'),
 ('12345672076', 'Vascaino mata onça', '1989-05-18', '227811111', 'Rua Santo Nunes', '913', '32145-678', 'Complemento Javanta','Bairro Trindade', 'Cidade Peixoto', 'Estado São Paulo'),
    ('98756432432', 'Lucao', '1988-08-22', '297532422', 'Rua Neyn', '416', '54321-888', 'Complemento Bombom', 'Bairro Bola bola', 'Cidade Barueri', 'Estado Bahia');

INSERT INTO tb_rotas (cod_rota, origem, destino)
VALUES
    (1, 'Aeroporto A', 'Aeroporto 1'),
    (2, 'Aeroporto B', 'Aeroporto 2'),
    (3, 'Aeroporto C', 'Aeroporto 3'),
    (4, 'Aeroporto D', 'Aeroporto 4'),
    (5, 'Aeroporto E', 'Aeroporto 5');

INSERT INTO tb_avioes (numero_aviao, modelo)
VALUES
    (101, 'Boeing 737'),
    (201, 'Airbus 737'),
    (301, 'Dreamliner 217'),
    (401, 'Boeing 777'),
    (502, 'Airbus A320');

INSERT INTO tb_voos (numero_voo, cod_rota, numero_aviao, horario_partida, horario_chegada)
VALUES
    (1001, 1, 101, '2023-02-11 10:20:00', '2023-11-09 12:30:00'),
    (1002, 1, 102, '2023-02-12 11:20:00', '2023-11-09 13:30:00'),
    (1003, 1, 103, '2023-02-13 07:20:00', '2023-11-09 11:30:00'),
    (1004, 1, 104, '2023-02-14 09:20:00', '2023-11-09 12:30:00'),
    (1005, 2, 105, '2023-08-15 12:10:00', '2023-12-12 14:20:00');

INSERT INTO tb_reservas (cpf_passageiro, numero_voo, numero_assento)
VALUES
    ('12345678920', 1001, 15),
    ('12345678910', 1002, 16),
    ('12345678905', 1003, 17),
    ('12345678990', 1004, 18),
    ('98765432130', 1005, 20);
