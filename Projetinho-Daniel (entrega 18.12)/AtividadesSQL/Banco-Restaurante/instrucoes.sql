CREATE TABLE "tb_produtos"(
	"produto_id" INTEGER,
	"nome" TEXT NOT NULL,
	"tipo" TEXT NOT NULL,
	"preco" TEXT NOT NULL,
	"descricao" TEXT NOT NULL,
	PRIMARY KEY ("produto_id" AUTOINCREMENT)
);

CREATE TABLE "tb_mesas"(
	"mesa_id" INTEGER,
	"numero" TEXT NOT NULL,
	"capacidade" TEXT NOT NULL,
	PRIMARY KEY ("mesa_id" AUTOINCREMENT)
);

CREATE TABLE "tb_pedidos" (
	"pedido_id"	INTEGER,
	"mesa_id"	INTEGER,
	"produto_id"	INTEGER,
	"quantidade"	TEXT NOT NULL,
	"total" TEXT NOT NULL,
	PRIMARY KEY("pedido_id" AUTOINCREMENT),
	FOREIGN KEY("mesa_id") REFERENCES "tb_mesas"("mesa_id"),
	FOREIGN KEY("produto_id") REFERENCES "tb_produtos"("produto_id")
);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


INSERT INTO tb_produtos (nome, tipo, preco, descricao)
VALUES
    ('Pamonha', 'Doce', '$20', 'Pamonha é um quitute brasileiro, comum nos estados do Nordeste e ainda em Goiás, Mato Grosso, Minas Gerais, Paraná, Rondônia, São Paulo e Tocantins.'),
    ('Esfiha', 'Salgado', '$4,80', 'Esfirra ou esfiha é uma pequena torta assada originária da Síria e do Líbano, e encontrada em outros países do Oriente Médio, como a Jordânia, Palestina e Iraque, além do Brasil e Argentina'),
    ('Pizza', 'Salgado', '$50', 'Pizza ou piza é uma preparação culinária que consiste em um disco de massa fermentada de farinha de trigo, coberto com molho de tomate e os ingredientes variados que normalmente incluem algum tipo de queijo, carnes preparadas ou defumadas e ervas'),
    ('Sorvete', 'Doce', '$10', 'Sorvete ou gelado é uma sobremesa gelada à base de lacticínios como leite ou nata, à qual é adicionada fruta ou outros ingredientes e sabores.'),
    ('Feijoada', 'Prato', '$30', 'Feijoada é uma designação portuguesa a um prato da culinária transmontana que se popularizou também nos demais países lusófonos como Brasil, Angola, Moçambique, Timor-Leste e Macau.'),
    ('Hamburguer', 'Prato', '$30', 'Um hambúrguer, ou simplesmente hambúrguer, é um sanduíche que consiste em recheios - geralmente uma empada de carne moída, geralmente bovina - colocada dentro de um pão fatiado ou pão. '),
    ('Strogonoff de carne', 'Prato', '$25', 'Estrogonofe de carne ou estrogonofe de carne é um prato russo feito de pedaços de carne salteados em molho de mostarda e smetana. '),
    ('Pudim', 'Doce', '$15', 'pudim pode ser tanto um prato de sobremesa como pode ser consumido sem ser um acompanhamento. O preparo habitual faz com que o açúcar e outros ingredientes sejam solidificados por meio de algum agente estrutural gelificante como amido de milho, gelatina, ovos, tapioca e outras féculas. ');


INSERT INTO tb_mesas (numero, capacidade)
VALUES
    ('1', '4'),
    ('2', '6'),
    ('3', '3'),
    ('4', '7'),
    ('5', '2'),
    ('6', '5'),
    ('7', '10'),
    ('8', '2');

INSERT INTO tb_pedidos (quantidade, total)
VALUES
    ('2', '$40,90'),
    ('1', '$20,00'),
    ('5', '$32,00'),
    ('3', '$10,00'),
    ('6', '$25,00'),
    ('1', '$50,00'),
    ('9', '$10,00'),
    ('4', '$13,00');

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


SELECT * FROM tb_produtos WHERE tipo = "Doce";

SELECT * FROM tb_mesas WHERE numero = "2";

SELECT nome, tipo, preco FROM tb_produtos;

SELECT * FROM tb_mesas WHERE numero = "6";

SELECT * FROM tb_mesas WHERE capacidade = "5";


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


SELECT
tb_produtos.nome, 
tb_produtos.tipo, 
tb_produtos.preco,
tb_mesas.numero, 
tb_mesas.capacidade,
tb_pedidos.pedido_id, 
tb_pedidos.quantidade, 
tb_pedidos.total
FROM
tb_pedidos
INNER JOIN
tb_produtos ON tb_pedidos.produto_id = tb_produtos.produto_id
INNER JOIN
tb_mesas ON tb_pedidos.mesa_id = tb_mesas.mesa_id
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

UPDATE tb_produtos
SET preco = "50,00"
WHERE produto_id = 5;

UPDATE tb_produtos
SET preco = "92,00"
WHERE produto_id = 4;

UPDATE tb_produtos
SET preco = "58,00"
WHERE produto_id = 2;

UPDATE tb_produtos
SET preco = "20,00"
WHERE produto_id = 1;

UPDATE tb_produtos
SET preco = "33,00"
WHERE produto_id = 6;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

UPDATE tb_mesas
SET capacidade = "3"
WHERE mesa_id = 2;

UPDATE tb_mesas
SET capacidade = "8"
WHERE mesa_id = 5;

UPDATE tb_mesas
SET capacidade = "2"
WHERE mesa_id = 6;

UPDATE tb_mesas
SET capacidade = "10"
WHERE mesa_id = 1;

UPDATE tb_mesas
SET capacidade = "9"
WHERE mesa_id = 5;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

DELETE FROM tb_pedidos WHERE quantidade = 2;
DELETE FROM tb_pedidos WHERE quantidade = 1;
DELETE FROM tb_pedidos WHERE quantidade = 5;
DELETE FROM tb_pedidos WHERE quantidade = 3;
DELETE FROM tb_pedidos WHERE quantidade = 6;

///////////////////////////////////////////////Clausula Order By//////////////////////////////////////////////////////////////////
   
SELECT * FROM tb_produtos ORDER by nome ASC;