create database db_commerce;
use db_commerce;

create table tb_produtos (id bigint(5) auto_increment,
nome varchar (255) not null,
código int not null,
segmento varchar (255) not null,
preço decimal not null,
primary key (id));

insert into tb_produtos (nome, código, segmento, preço) values ("Macarrão", 35628, "Alimentício", 5.00);
insert into tb_produtos (nome, código, segmento, preço) values ("TV", 36728, "Eletronicos", 3500);
insert into tb_produtos (nome, código, segmento, preço) values ("Geladeira", 51719, "Eletrodomésticos", 5.00);
insert into tb_produtos (nome, código, segmento, preço) values ("Camiseta", 25281, "Roupas", 50);
insert into tb_produtos (nome, código, segmento, preço) values ("Salgadinho", 35382, "Alimentício", 13);
insert into tb_produtos (nome, código, segmento, preço) values ("Celular", 35628, "Eletronicos", 2000);
insert into tb_produtos (nome, código, segmento, preço) values ("Fones de ouvido", 36482, "Eletronicos",40);

select * from tb_produtos where preço> 500;
select * from tb_produtos where preço< 500;

update tb_produtos set preço = 600 where id = 7;
alter table tb_produtos modify preço decimal (20,2);
