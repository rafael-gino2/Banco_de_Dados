Criando tabelas------------------------------------------------
CREATE TABLE tb_hospede (
    hospede_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    documento TEXT,
    telefone TEXT
);

CREATE TABLE tb_quarto (
    quarto_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo TEXT NOT NULL,
    preco_diaria REAL NOT NULL,
    status TEXT NOT NULL
);

CREATE TABLE tb_reserva (
    reserva_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hospede_id INTEGER,
    quarto_id INTEGER,
    data_entrada TEXT NOT NULL,
    data_saida TEXT NOT NULL,
    FOREIGN KEY (hospede_id) REFERENCES tb_hospede(hospede_id),
    FOREIGN KEY (quarto_id) REFERENCES tb_quarto(quarto_id)
);

Inserindo registros nas tabelas-----------------------------------------------------
INSERT INTO tb_hospede (nome, documento, telefone) VALUES
    ('Neymar Coelho', '123456978', '92342020'),
    ('Marcos leite', '987659087', '987654512'),
    ('Pedro Pao', '176422863', '991742320'),
    ('Leozin cria', '3345876296', '965785670'),
    ('Lucas Rodrigues', '321123657', '917898234');

INSERT INTO tb_quarto (tipo, preco_diaria, status) VALUES
    ('Simples', 100.0, 'disponível'),
    ('Duplo', 150.0, 'disponível'),
    ('Suíte', 200.0, 'ocupado'),
    ('Simples', 100.0, 'disponível'),
    ('Luxo', 180.0, 'ocupado');

INSERT INTO tb_reserva (hospede_id, quarto_id, data_entrada, data_saida) VALUES
    (1, 1, '2023-02-01', '2023-02-04'),
    (2, 3, '2023-03-12', '2023-03-15'),
    (3, 5, '2023-04-22', '2023-04-25'),
    (4, 2, '2023-05-03', '2023-06-05'),
    (5, 4, '2023-06-12', '2023-06-14');
