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
    ('12345678876', 'Baianinho mata onça', '1980-05-18', '987811111', 'Rua Armando Nunes', '213', '12345-678', 'Complemento Jacinto', 'Bairro Assunção', 'Cidade Assada', 'Estado Asfalto'),
    ('98756432432', 'Lucao', '1988-08-22', '297532422', 'Rua Neyn', '416', '54321-888', 'Complemento Bombom', 'Bairro Bola bola', 'Cidade Barueri', 'Estado Bahia');

INSERT INTO tb_rotas (cod_rota, origem, destino)
VALUES
    (1, 'Aeroporto A', 'Aeroporto B'),
    (2, 'Aeroporto B', 'Aeroporto C');

INSERT INTO tb_avioes (numero_aviao, modelo)
VALUES
    (101, 'Boeing 737'),
    (202, 'Airbus A320');

INSERT INTO Voos (numero_voo, cod_rota, numero_aviao, horario_partida, horario_chegada)
VALUES
    (1001, 1, 101, '2023-02-10 08:20:00', '2023-11-09 10:30:00'),
    (1002, 2, 202, '2023-08-11 12:10:00', '2023-12-12 14:20:00');

INSERT INTO Reservas (cpf_passageiro, numero_voo, numero_assento)
VALUES
    ('12345678900', 1001, 15),
    ('98765432100', 1002, 20);
