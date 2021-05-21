create database db_RH;
use db_RH;
create table tb_funcionario
 (id bigint   auto_increment,
nome varchar (255) not null,
CPF varchar(15) not null,
idade int not null,
salario decimal not null,
primary key(id));

insert into tb_funcionario (nome, CPF, idade, salario) values ("Isaque", "763.532.974-98", 22, 3000);
insert into tb_funcionario (nome, CPF, idade, salario) values ("Paulo", "564.587.976-18", 19, 1500);
insert into tb_funcionario (nome, CPF, idade, salario) values ("Patrick", "346.673.353-47", 21, 1000000000);
insert into tb_funcionario (nome, CPF, idade, salario) values ("Sabrina", "653.546.798-81", 32, 15000);

select * from tb_funcionario where salario >2000;
select * from tb_funcionario where salario <2000;

update tb_funcionario set nome = "Bruno" where id = 2;
update tb_funcionario set salario = 50000 where id = 4;
select * from tb_funcionario;
alter table tb_funcionario modify salario decimal (65,2);

