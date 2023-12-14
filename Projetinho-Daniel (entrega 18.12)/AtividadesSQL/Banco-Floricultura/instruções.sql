Criando tabelas--------------------------------------------------------
CREATE TABLE tb_flores (
    nome_cientifico TEXT,
    nome_popular TEXT,
    preco TEXT,
    quantidade_estoque INTEGER,
    cores_disponiveis TEXT
);

CREATE TABLE tb_clientes (
    cpf TEXT PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    endereco_entrega TEXT
);

CREATE TABLE tb_pedidos (
    numero_pedido INTEGER PRIMARY KEY,
    data_realizacao TEXT,
    valor_total TEXT,
    cpf_cliente TEXT,
    data_entrega TEXT,
    horario_entrega TEXT,
    FOREIGN KEY (cpf_cliente) REFERENCES Clientes(cpf)
);

CREATE TABLE Detalhes_Pedido (
    numero_pedido INTEGER,
    codigo_identificacao INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (numero_pedido) REFERENCES Pedidos(numero_pedido),
    PRIMARY KEY (numero_pedido)
);


Inserindo dados na tabelas---------------------------------------------------------

INSERT INTO tb_flores (nome_cientifico, nome_popular, preco, quantidade_estoque, cores_disponiveis)
VALUES
    ('Rosa', 'Rosas', 13.00, 51, 'Vermelha, Branca, Amarela'),
    ('Lilium', 'Lírio', 18.00, 32, 'Branca, Rosa, Amarela'),
    ('Tulipa', 'Tulipa', 12.00, 30, 'Vermelha, Branca, Rosa'),
    ('Violeta', 'Violeta', 20.00, 35, 'Vermelha, Branca, Rosa'),
    ('Orquidia', 'Orquídea', 22.00, 22, 'Branca, Rosa, Roxa');

INSERT INTO tb_clientes (cpf, nome, telefone, endereco_entrega)
VALUES
    ('321.560.789-03', 'Maluma', '123456290', 'Rua Neymar freire, 223, Bairro Mancado, Cidade São Paulo, Estado São Paulo'),
    ('432.562.890-16', 'Carlinhos', '987654124', 'Rua Baacon, 156, Bairro Goiabada, Cidade São Paulo, Estado São Paulo'),
    ('789.450.789-09', 'Luluzinha', '283456897', 'Rua Arnando Nilson, 213, Bairro Laranjeira, Cidade São Paulo, Estado São Paulo'),
    ('987.569.890-11', 'Pedrinho', '922654243', 'Rua Bostolino, 96, Bairro Limoeiro, Cidade São Paulo, Estado São Paulo'),
    ('320.278.901-20', 'Maria Paula', '456786312', 'Rua Nuneco, 789, Bairro Z, Cidade São Paulo, Estado São Paulo');

INSERT INTO tb_pedidos (numero_pedido, data_realizacao, valor_total, cpf_cliente, data_entrega, horario_entrega)
VALUES
    (1, '2023-02-19', 120.00, '987.486.729-09', '2023-02-22', '12:20'),
    (2, '2023-03-21', 225.00, '114.537.840-21', '2023-03-26', '13:38'),
    (3, '2023-02-10', 120.00, '987.486.729-09', '2023-02-18', '11:20'),
    (4, '2023-03-20', 120.00, '114.537.840-34', '2023-03-29', '13:19'),
    (5, '2023-04-28', 100.00, '435.618.921-13', '2023-05-03', '15:15');

INSERT INTO Detalhes_Pedido (numero_pedido, codigo_identificacao, quantidade)
VALUES
    (1, 1, 8),
    (2, 2, 3),
    (3, 3, 6),
    (4, 4, 9),
    (5, 5, 11);
