CRIANDO TABELAS-------------------------------------------------------------------

CREATE TABLE "tb_usuario" (
	"matricula"	INTEGER,
	"nome"	TEXT,
	"telefone"	TEXT,
	"rua"	TEXT,
	"numero"	TEXT,
	"cep"	TEXT,
	"complemento"	TEXT,
	"bairro"	TEXT,
	"cidade"	TEXT,
	"estado"	TEXT,
	PRIMARY KEY("matricula" AUTOINCREMENT)
);

CREATE TABLE "tb_livro" (
	"codigo_catalogacao"	INTEGER,
	"titulo"	TEXT NOT NULL,
	"autor"	TEXT NOT NULL,
	"editora"	TEXT NOT NULL,
	"ano_de_publicacao"	TEXT NOT NULL,
	"quantidade" INTEGER NOT NULL,
	PRIMARY KEY("codigo_catalogacao" AUTOINCREMENT)
);

CREATE TABLE "tb_emprestimo" (
	"cod_emprestimo"	INTEGER,
	"codigo_catalogacao"	INTEGER,
	"matricula"	INTEGER,
	"data_emprestimo"	TEXT,
	"data_devolucao"	TEXT,
	CONSTRAINT "matricula" FOREIGN KEY("matricula") REFERENCES "tb_usuario"("matricula"),
	CONSTRAINT "codigo_catalogacao" FOREIGN KEY("codigo_catalogacao") REFERENCES "tb_livro"("codigo_catalogacao"),
	PRIMARY KEY("cod_emprestimo" AUTOINCREMENT)
);


POPULANDO TABELAS------------------------------------------------------------------------------------------------------------------

INSERT INTO tb_usuario (nome, telefone, rua, numero, complemento, cep, bairro, cidade, estado)
VALUES
    ('Pedro Almeida', '7777-8888', 'Rua D', '1010', 'Apto 5', '55555-444', 'Jardim Primavera', 'Porto Alegre', 'RS'),
    ('Ana Souza', '3333-2222', 'Rua E', '222', 'Casa 7', '22222-333', 'Centro', 'Curitiba', 'PR'),
    ('Carlos Lima', '5555-4444', 'Rua F', '4567', 'Sala 10', '98765-432', 'Bairro Novo', 'Belo Horizonte', 'MG'),
    ('Mariana Costa', '2222-1111', 'Rua G', '7890', 'Casa 1', '12345-678', 'Vila Feliz', 'Rio de Janeiro', 'RJ'),
    ('Lucas Ferreira', '4444-3333', 'Rua H', '6543', 'Apto 3', '54321-876', 'Bairro Novo', 'Belo Horizonte', 'MG');
	
	INSERT INTO tb_livro (titulo, autor, editora, ano_de_publicacao, quantidade)
VALUES
    ('Aventuras na Floresta', 'Maria Silva', 'Livros Inc.', '2010', 10),
    ('Mistérios da Cidade Antiga', 'Pedro Santos', 'Sabedoria Editorial', '2005', 5),
    ('Noite Estrelada', 'Ana Rodrigues', 'Universo Literário', '2018', 8),
    ('Viagem ao Desconhecido', 'Carlos Mendes', 'Aventuras Publicações', '2022', 9),
    ('Sombras do Passado', 'Sofia Fernandes', 'Mistério Livros', '2013', 15);
	
INSERT INTO tb_emprestimo (codigo_catalogacao, matricula, data_emprestimo, data_devolucao)
VALUES
    (1, 3, '2023-08-08', '2023-08-15'),
    (3, 5, '2023-07-25', '2023-08-05'),
    (5, 7, '2023-08-01', '2023-08-08'),
    (2, 2, '2023-07-20', '2023-07-30'),
    (8, 3, '2023-07-15', '2023-07-22'),
    (6, 1, '2023-08-05', '2023-08-12'),
    (4, 8, '2023-07-10', '2023-07-17'),
    (7, 9, '2023-07-28', '2023-08-11'),
    (10, 10, '2023-08-02', '2023-08-09'),
    (9, 10, '2023-07-18', '2023-07-25');