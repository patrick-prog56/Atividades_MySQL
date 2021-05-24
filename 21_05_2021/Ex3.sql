create database db_farmacia_do_bem;
use db_farmacia_do_bem;

CREATE TABLE tb_produto (
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
insert tb_produto (tipo,ativo) values ("Remédios para dor de cabeça", true);
insert tb_produto (tipo,ativo) values ("Doces", true);
insert tb_produto (tipo,ativo) values ("Cosméticos", true);
insert tb_produto (tipo,ativo) values ("Itens para curativo", true);
insert tb_produto (tipo,ativo) values ("Xaropes", true);


CREATE TABLE tb_categoria (
    id BIGINT(5) AUTO_INCREMENT,
    remedio VARCHAR(255),
    preco DECIMAL(5,2),
    Generico VARCHAR(255),
    tb_categoriaId bigint(5),
    PRIMARY KEY (id),
    FOREIGN KEY (tb_categoriaId)
        REFERENCES tb_produto (id)
);

insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Tylenol", 5.00, "sim", 1);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Ibupril", 7.00, "não", 1);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Bala Halls De Melancia", 1.50, "não", 2);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Gaze", 10.00, "não", 4);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Batom", 15.00, "não", 3);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Ambroxol", 30.00, "sim", 5);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Bala Fini 5Kg", 70.00, "não", 2);
insert tb_categoria (remedio, preco, generico, tb_categoriaId) values ("Micropore", 10.00, "não", 4);

select * from tb_categoria where preco > 50.00;
select * from tb_categoria where preco between 3.00 and 60.00;
select * from tb_categoria where remedio like "%B%";
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id and tb_categoria.tb_categoriaId = 3;




