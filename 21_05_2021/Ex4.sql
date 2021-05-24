create database db_cidade_das_frutas;
use db_cidade_das_frutas;

CREATE TABLE tb_produto (
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
insert tb_produto (tipo,ativo) values ("Frutas", true);
insert tb_produto (tipo,ativo) values ("Doces", true);
insert tb_produto (tipo,ativo) values ("Legumes", true);
insert tb_produto (tipo,ativo) values ("Hortaliças", true);
insert tb_produto (tipo,ativo) values ("Temperos", true);


CREATE TABLE tb_categoria (
    id BIGINT(5) AUTO_INCREMENT,
    item VARCHAR(255),
    preco DECIMAL(5,2),
    quantidade VARCHAR(255),
    tb_categoriaId bigint(5),
    PRIMARY KEY (id),
    FOREIGN KEY (tb_categoriaId)
        REFERENCES tb_produto (id)
);

insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Tomate", 10.00,"20 Kg" , 1);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Couve", 7.00, "5 Kg", 4);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Pé de moleque", 1.50, "10 unidades", 2);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Abobrinha", 3.00, "15 Kg", 3);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Tempero Baiano", 2.00, "12 unidades", 5);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Alface", 4.00, "6 Kg", 4);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Beringela", 70.00, "20kg", 3);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Maçã", 8.00, "40Kg", 1);

select * from tb_categoria where preco > 50.00;
select * from tb_categoria where preco between 3.00 and 60.00;
select * from tb_categoria where item like "%c%";
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id and tb_categoria.tb_categoriaId = 3;




