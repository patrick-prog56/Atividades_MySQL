create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_pizza (
id int (5) auto_increment,
tipo varchar (255),
fabricacao varchar(255),
primary key (id)
);

insert tb_pizza (tipo, fabricacao) values ("Salgada","Industrializada");
insert tb_pizza (tipo, fabricacao) values ("Doce", "Caseira");
insert tb_pizza (tipo, fabricacao) values ("Salgada", "Frita");
insert tb_pizza (tipo, fabricacao) values ("Doce", "Industrializada");
insert tb_pizza (tipo, fabricacao) values ("Salgada", "De mercado");







create table tb_categoria(
id int (5) auto_increment,
Sabor varchar (255),
Preco decimal,
Borda_Recheada_com varchar (255),
Com_Azeitona varchar (255),
tb_categoriaId int (5),
primary key(id),
foreign key (tb_categoriaId) references tb_pizza(id)
);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Calabresa", 35.00, "Catupiry", "não", 1);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Frango com Catupiry", 45.00, "Cheddar", "sim", 1);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Brigadeiro", 39.00, "Chocolate", "não", 2);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Portuguesa", 60.00, "Queijo", "sim", 3);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Marguerita", 29.00, "não", "não", 5);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Romeu e Julieta", 41.00, "Goiabada", "não", 4);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Banana com Chocolate ", 62.00, "Brigadeiro", "não", 2);

insert tb_categoria (Sabor, Preco, Borda_Recheada_com, Com_Azeitona, tb_categoriaId) 
values ("Bauru", 47.00, "Catupiry", "sim", 3);


select * from tb_categoria where preco > 45;

select * from tb_categoria where preco between 29 and 60;

select * from tb_categoria where sabor like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.tb_categoriaId = tb_pizza.id;

select * from tb_pizza inner join tb_categoria on tb_categoria.tb_categoriaId = tb_pizza.id and tb_categoria.tb_categoriaId = 2 and 4;

select * from tb_pizza inner join tb_categoria on tb_categoria.tb_categoriaId = tb_pizza.id and tb_categoria.tb_categoriaId = 2 or tb_categoria.tb_categoriaId = tb_pizza.id and tb_categoria.tb_categoriaId = 4
