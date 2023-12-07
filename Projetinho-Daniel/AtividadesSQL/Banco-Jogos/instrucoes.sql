
--------------------------------------------------------------Criar Tabela-----------------------------------------------------------------

CREATE TABLE "tb_plataformas" (
	"cod_plataformas"	INTEGER,
	"nome"	TEXT,
	"fabricante" TEXT,
	PRIMARY KEY("cod_plataformas" AUTOINCREMENT)
);

CREATE TABLE "tb_jogo" (
	"cod_jogo"	INTEGER,
	"titulo"	TEXT,
	"genero" TEXT,
	"lancamento" DATE,
	"cod_plataformas" INTEGER,
	
	PRIMARY KEY("cod_jogo" AUTOINCREMENT)
);

-------------------------------------------------------------Popular tabelas------------------------------------------------------------------

INSERT INTO tb_plataformas (nome, fabricante)
VALUES
    ('Playstation 2', 'Sony'),
    ('Playstation 3', 'Sony'),
    ('Playstation 4', 'Sony'),
    ('Xbox 360', 'Microsoft'),
    ('Xbox One', 'Microsoft'),
    ('Xbox Series X', 'Microsoft'),
    ('Xbox Series S', 'Microsoft'),
    ('Playstation 5', 'Sony'),
    ('Nintendo Switch', 'Nintendo'),
    ('Nintendo Wii', 'Nintendo');



INSERT INTO tb_jogo (titulo, genero, lancamento, cod_plataformas)
VALUES
    ('The Last Of Us 2', 'Ação/Aventura', '19/06/2020',1),
    ('Celeste', 'Aventura', '05/01/2018',2),
    ('Fifa 23', 'Esportes', '27/09/2022',3),
    ('Alien: Isolation', 'Terror', '06/10/2014',4),
    ('Outlast', 'Terror', '04/09/2013',5),
    ('Resident Evil 4', 'Ação/Terror', '11/01/2005',6),
    ('Dead Space', 'FPS/Terror', '27/01/2023',7),
    ('Starfield', 'Ação', '06/09/2023',8),
    ('Minecraft Dungeons', 'RPG', '26/05/2020',9),
    ('Star Wars Jedi: Fallen Order', 'Ação/Aventura', '10/11/2019',10);


-------------------------------------------------------Consultar--------------------------------------------------------------------------------

SELECT * FROM tb_plataformas WHERE fabricante = 'Sony';

SELECT * FROM tb_jogo WHERE genero  = 'Ação';

SELECT
tb_plataformas.nome,
tb_plataformas.fabricante,
tb_jogo.titulo,
tb_jogo.lancamento,
tb_jogo.genero

FROM
tb_plataformas

INNER JOIN
tb_jogo ON tb_jogo.cod_plataformas = tb_plataformas.cod_plataformas;

-------------------------------------------------Alteração de registros-----------------------------------------------------------------------



UPDATE tb_jogo
SET lancamento = 2000
WHERE cod_jogo = 3;

UPDATE tb_jogo
SET lancamento = 2043
WHERE cod_jogo = 6;

UPDATE tb_jogo
SET lancamento = 2040
WHERE cod_jogo = 7;

UPDATE tb_jogo
SET lancamento = 2010
WHERE cod_jogo = 9;


---------------------------------------------------Deletando jogos------------------------------------------------------------------------------

DELETE FROM tb_jogo WHERE cod_jogo = 4;
DELETE FROM tb_jogo WHERE cod_jogo = 2;
DELETE FROM tb_jogo WHERE cod_jogo = 1;
DELETE FROM tb_jogo WHERE cod_jogo = 7;