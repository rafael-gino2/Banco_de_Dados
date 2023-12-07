CREATE TABLE "tb_cliente" (
	"cliente_id"	INTEGER,
	"nome"	TEXT,
	"cnh"	TEXT,
	"telefone"	TEXT,
	PRIMARY KEY("cliente_id" AUTOINCREMENT)
);


////////////////////////////////////////////////////////////////////////////////////////////////////////////


CREATE TABLE "tb_aluguel" (
	"aluguel_id"	INTEGER,
	"cliente_id"	INTEGER NOT NULL,
	"veiculo_id"	INTEGER NOT NULL,
	"data_inicio"	TEXT NOT NULL,
	"data_fim"	TEXT NOT NULL,
	PRIMARY KEY("aluguel_id" AUTOINCREMENT)
	CONSTRAINT "cliente_id" FOREIGN KEY("cliente_id") REFERENCES "tb_cliente"("cliente_id"),
	CONSTRAINT "veiculo_id" FOREIGN KEY("veiculo_id") REFERENCES "tb_veiculo"("veiculo_id")
);



///////////////////////////////////////////////////////////////////////////////////////////////////////////


CREATE TABLE "tb_veiculo" (
	"veiculo_id"	INTEGER,
	"modelo"	TEXT NOT NULL,
	"ano"	TEXT NOT NULL,
	"placa"	TEXT NOT NULL,
	"disponibilidade"	TEXT NOT NULL,
	PRIMARY KEY("veiculo_id" AUTOINCREMENT)
);




////////////////////////////////////////////////////////////////////////////////////////////////////////////


INSERT INTO tb_cliente (nome, cnh, telefone)
VALUES
    ('Luiz Sapeca', '1096207694', '(11)10000-2000'),
    ('Ana Souza', '4296045276', '(19)93045-5432'),
    ('Marcos Polo', '1650264934', '(14)90987-6543'),
    ('Maria Frente', '8254867036', '(12)91098-7654'),
    ('Lucas Do capa', '8987528740', '(11)92312-3213'),
    ('Juliana Paula', '1437593760', '(11)98654-4677'),
    ('Jorge Mendes', '42983219078', '(79)91334-2287'),
    ('Bianca Pereira', '6093290845', '(11)94520-6590');

	UPDATE tb_cliente
	SET telefone = '(11) 97648-9367'
	WHERE cliente_id = 1;

////////////////////////////////////////////////////////////////////////////////////////////////////////////


INSERT INTO tb_veiculo (modelo, ano, placa, disponibilidade)
VALUES
    	('Fusca Azul', '2000', 'OVO-2699', 'Disponivel'),
	('Kombi roxa', '2019', 'NEY-5065', 'Indisponivel'),
	('Corsa Amarelo', '2012', 'MAR-9756 ', 'Disponivel'),
	('Palio rebaixado', '2017', 'YAG-1826 ', 'Disponivel'),
	('Ferrari 2', '2006', 'KFC-0931 ', 'Indisponivel'),
	('Batmovel', '2007', 'PNG-8697 ', 'Disponivel'),
	('Uno', '2021', 'VAS-1992 ', 'Indisponivel'),
	('Jeep', '2020', 'COS-1182 ', 'disponivel');



////////////////////////////////////////////////////////////////////////////////////////////////////////////


INSERT INTO tb_aluguel (cliente_id, veiculo_id, data_inicio, data_fim)
VALUES
    	( 1, 2, '12/07/2023', '02/09/2023'),
	( 2, 3, '10/09/2023', '22/01/2023'),
	(3, 4, '03/06/2023 ', '23/08/2023'),
	( 4,5, '01/09/2023 ', '22/07/2023'),
	(5,6, '29/11/2023 ', '31/12/2023'),
	(6, 7, '21/01/20023 ', '07/04/2023'),
	(7,8 , '03/06/2023 ', '13/02/2023'),
	( 8,6 , '18/07/2023 ', '26/05/2023');



////////////////////////////////////////////////////////////////////////////////////////////////////////////

SELECT * FROM tb_cliente WHERE telefone = "(11)98654-4677"
SELECT * FROM tb_cliente WHERE cnh = "8254867036"
SELECT nome, cnh FROM tb_cliente 
SELECT * FROM tb_veiculo WHERE ano = 2019
SELECT * FROM tb_veiculo WHERE veiculo_id = 2
SELECT * FROM tb_veiculo WHERE disponibilidade = "Disponivel"


////////////////////////////////////////////////////////////////////////////////////////////////////////////
