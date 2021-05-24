create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

CREATE TABLE tb_produto (
    id BIGINT(5) AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
insert tb_produto (tipo,ativo) values ("Python", true);
insert tb_produto (tipo,ativo) values ("MySQL", true);
insert tb_produto (tipo,ativo) values ("Java Script", true);
insert tb_produto (tipo,ativo) values ("Java", true);
insert tb_produto (tipo,ativo) values ("C++", true);


CREATE TABLE tb_categoria (
    id BIGINT(5) AUTO_INCREMENT,
    item VARCHAR(255),
    preco DECIMAL(5,2),
    Suporta_quantos_alunos bigint(5),
    tb_categoriaId bigint(5),
    PRIMARY KEY (id),
    FOREIGN KEY (tb_categoriaId)
        REFERENCES tb_produto (id)
);

insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Lógica de programação", 200.00, 20 , 4);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("SpringBoot", 300.00, 10, 4);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Banco de dados", 38.00, 15, 2);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Liguagem estruturada", 70.00, 30, 1);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Front-end", 50.00, 35, 3);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Back-end", 51.00, 40, 5);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Angular", 20.00, 16, 3);
insert tb_categoria (item, preco, Suporta_quantos_alunos, tb_categoriaId) values ("Laços de repetição", 9.00, 5, 4);

select * from tb_categoria where preco > 50.00;
select * from tb_categoria where preco between 3.00 and 60.00;
select * from tb_produto where tipo like "%J%";
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.tb_categoriaId = tb_produto.id and tb_categoria.tb_categoriaId = 4;




