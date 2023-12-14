Criando tabelas-------------------------------------------------------
CREATE TABLE tb_pneus (
    numero_serie INTEGER PRIMARY KEY,
    marca TEXT,
    modelo TEXT,
    dimensoes TEXT,
    quantidade_estoque INTEGER
);

CREATE TABLE tb_clientes (
    cpf TEXT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE tb_servicos (
    numero_ordem INTEGER PRIMARY KEY,
    data_realizacao TEXT,
    valor TEXT,
    cpf_cliente TEXT,
    FOREIGN KEY (cpf_cliente) REFERENCES tb_clientes(cpf)
);

CREATE TABLE tb_servicos_Pneus (
    numero_ordem INTEGER,
    numero_serie INTEGER,
    FOREIGN KEY (numero_ordem) REFERENCES tb_servicos(numero_ordem),
    FOREIGN KEY (numero_serie) REFERENCES tb_pneus(numero_serie),
    PRIMARY KEY (numero_ordem, numero_serie)
);

Inserindo dados nas tabelas----------------------------------------------------------------------------------
INSERT INTO tb_pneus (numero_serie, marca, modelo, dimensoes, quantidade_estoque)
VALUES
    (1, 'Michelin', 'Pilot Sport 4', '225/45R17', 38),
    (2, 'Continental', 'ContiSportContact 5', '205/55R16', 35),
    (3, 'Pirelli', 'P Zero', '245/40R18', 10),
    (4, 'Bridgestone', 'Turanza T005', '215/65R16', 30),
    (5, 'Goodyear', 'Eagle F1', '235/45R19', 22);

INSERT INTO tb_clientes (cpf, nome, telefone, endereco)
VALUES
    ('121.416.879-11', 'Jacinto no rego', '198756722', 'Rua Nonato, 129, Bairro Good, Cidade Belford Roxo, Estado Rio de janeiro'),
    ('212.347.980-21', 'Marcao', '987654321', 'Rua dos crias, 126, Bairro Little bairro, Cidade São Gonçalo, Estado Rio de Janeiro'),
    ('222.400.823-02', 'Lucas bamba', '213434689', 'Rua Asfalatada, 983, Bairro Laminas, Cidade São Gonçalo, Estado Rio de Janeiro'),
    ('342.326.580-29', 'Leonardo Turtle', '987650954', 'Rua calvonis, 236, Bairro Litora, Cidade Belford Roxo, Estado Rio de Janeiro'),
    ('352.938.921-32', 'Isaias', '566789210', 'Rua Armando Nunes, 189, Bairro Zazo, Cidade Belford Roxo, Estado Rio de Janeiro');

INSERT INTO tb_servicos (data_realizacao, valor, cpf_cliente)
VALUES
    ('2023-07-19', 120.00, '121.416.879-11'),
    ('2023-04-10', 230.00, '212.347.980-21'),
    ('2023-02-05', 170.00, '222.400.823-02'),
    ('2023-09-27', 220.00, '342.326.580-29'),
    ('2023-11-22', 130.00, '352.938.921-32');

INSERT INTO tb_servicos_Pneus (numero_serie)
VALUES
    (1),
    (2),
    (3),
    (3),
    (4);
