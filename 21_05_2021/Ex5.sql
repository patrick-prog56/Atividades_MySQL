create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

CREATE TABLE tb_produto (
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
insert tb_produto (tipo,ativo) values ("Ferramentas", true);
insert tb_produto (tipo,ativo) values ("Materiais de Alvenaria", true);
insert tb_produto (tipo,ativo) values ("Materiais Elétricos", true);
insert tb_produto (tipo,ativo) values ("Materiais Hidráulicos", true);
insert tb_produto (tipo,ativo) values ("Materiais para acabamento", true);


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

insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Torneira", 70.00,"10 unidades" , 4);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Pá", 27.00, "5 unidades", 1);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Inchada", 40.00, "12 unidades", 1);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Fio 2,5 mm", 70.00, "250 metros", 3);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Piso", 100.00, "100 metros quadrados", 5);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Tijolo baiano", 30.00, "10 mil blocos", 2);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Interruptor", 20.00, "50 unidades", 3);
insert tb_categoria (item, preco, quantidade, tb_categoriaId) values ("Cano", 8.00, "60 metros", 4);

select * from tb_categoria where preco > 50.00;
select * from tb_categoria where preco between 3.00 and 60.00;
select * from tb_categoria where item like "%C%";
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id and tb_categoria.tb_categoriaId = 4;




