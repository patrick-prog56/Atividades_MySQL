create database db_notas;

use db_notas;

create table tb_notas (id bigint(5) auto_increment,
nome varchar (255) not null,
Registro int not null,
cpf varchar (255) not null,
nota decimal not null,
primary key (id));

insert into tb_notas (nome, Registro, cpf, nota) values ("Maria", 352921, "154.678.098-08", 5);
insert into tb_notas  (nome, Registro, cpf, nota) values ("Patrick", 999999, "572.976.236-87", 10);
insert into tb_notas  (nome, Registro, cpf, nota) values ("Roberto", 352921, "517.738.109-09", 7);
insert into tb_notas (nome, Registro, cpf, nota) values ("Neymar", 354293, "253.765.473-87", 9);
insert into tb_notas  (nome, Registro, cpf, nota) values ("Robben", 635289, "456.386.374-04", 6);
insert into tb_notas  (nome, Registro, cpf, nota) values ("Claudio", 452907, "517.738.109-09", 7);
insert into tb_notas  (nome, Registro, cpf, nota) values ("Messi", 452792, "344.274.467-02", 8);
insert into tb_notas  (nome, Registro, cpf, nota) values ("Cristiano Ronaldo", 453822, "347.283.234-74", 2);

update tb_notas set nota = 9 where id = 6;

select * from tb_notas where nota >= 7;

select * from tb_notas where nota < 7;





