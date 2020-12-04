

create table tb_produto(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
	nm_produto VARCHAR(50) NOT NULL,
	dc_descricao varchar(200) NOT NULL,
	pc_preco Decimal NOT NULL,
	im_imagem mediumblob NOT NULL	
);

INSERT INTO tb_produto ( nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lava-louça', 'Lava-louças Brastemp Serviços - Branco', 3925.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\louca_Prata.jpeg");

INSERT INTO tb_produto ( nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('geladeira', 'Geladeira Frost Free Side Brastemp Branca', 5020.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\
geladeira.jpeg");

INSERT INTO tb_produto ( nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('geladeira', 'Geladeira Frost Free Side Inverse', 4840.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\
geladeira.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ( 'fogão', 'Fogão 4 Bocas Consul Branco',  590.00,  "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\fogão.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ( 'fogão', 'Fogão 4 Bocas Consul Branco Simples', 390.00,  "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\fogão_simples.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('fogão', 'Fogão 4 Bocas Consul Branco', 690.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas_preto.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('microondas', 'Micro-ondas Consul 32Litros Inox 220V',  680.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\microondas.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lavadoura de roupas', 'Lava Brastemp VC4 10,5Kg Branco 220V', 2380.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lavadoura de roupas', 'Lava e Seca LG VC2 11kg Branca 220V', 7460.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas_branca.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lavadoura de roupas', 'Lava e Seca LG VC2 11kg preto 220V', 7460.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas_preto.jpeg");



create table tb_pedidos(
	id_pedidos INT PRIMARY KEY AUTO_INCREMENT,
	nm_cliente VARCHAR(20) NOT NULL,
	ed_endereco VARCHAR(200)NOT NULL,
	nr_telefone VARCHAR(11),
	vl_unitario DECIMAL NOT NULL,
	qt_quantidade_produtos INT NOT NULL, 
	vl_total DECIMAL NOT NULL,
	idProduto INT,
	FOREIGN KEY (idProduto) REFERENCES tb_produto(id_produto)
);


INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ( 'joão pedro', 'AV: pedro chaves, 13', '111234562', 980.00,  2, 2380.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ('vitor', 'rua: joão chaves, 7 ', '119558874', 3925.00, 3, 11.775);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ('lion', 'rua: cachoeira, 50', '966335875', 8460.00, 2, 14460.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ('samuel', 'rua: ovelhas, 98', '795632155', 7460.00, 3, 16840.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ( 'vick', 'AV: augusta, 8', '258999999', 4840.00, 1, 4840.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ( 'ester', 'rua: rua uva, 4',  '799654220', 980.00,  3,  8940.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ( 'carla', 'AV: paulista,  8',  '588888888', 4600.00,  2, 4840.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ( 'flavia', 'AV: pedro, 8',  '788898888', 3600.00,  2, 4840.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ( 'fernando', 'AV: acarirema,4',  '955888888', 3600.00,  2, 4840.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, vl_unitario, qt_quantidade_produtos, vl_total) 
	VALUES ('bruno', 'rua: uva, 17', '976335875', 7460.00, 2, 1446.00);


SELECT * FROM tb_produto;

SELECT * FROM tb_pedidos;

SELECT * FROM tb_produto
	WHERE nm_produto = 'fogão';
	
SELECT * FROM tb_produto
	WHERE dc_descricao = 'Lava-louças Brastemp Serviços - Branco';	
	

SELECT tb_produto.nm_produto, tb_produto.dc_descricao, tb_produto.pc_preco
	FROM tb_produto
	WHERE pc_preco <= 1000;
	
SELECT ped.nm_cliente, ped.qt_quantidade_produtos, ped.idProduto, ped.vl_total
	FROM tb_pedidos ped
	WHERE vl_total <= 1000;


SELECT tb_pedidos.nm_cliente, tb_produto.nm_produto, tb_produto.dc_descricao 
	FROM tb_produto JOIN tb_pedidos
	ON tb_pedidos.idProduto = tb_produto.id_produto;

SELECT pro.nm_produto, pro.pc_preco, ped.vl_total, ped.vl_unitario 
	FROM tb_produto pro JOIN tb_pedidos ped
	ON ped.idProduto = pro.id_produto
	WHERE vl_total >= 500
	AND pc_preco >= 100
	AND vl_unitario >= 1000;
	
SELECT ped.nm_cliente, ped.ed_endereco, ped.qt_quantidade_produtos, pro.nm_produto 
	FROM tb_produto pro JOIN tb_pedidos ped	
	ON ped.idProduto = pro.id_produto
	WHERE qt_quantidade_produtos  > 2
	AND nm_produto = 'fogão';
	
