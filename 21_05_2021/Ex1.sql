create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
tipo varchar (255),
ativo boolean not null,
primary key (id) 
);

insert tb_classe (tipo, ativo) values ("atacante", true); 
insert tb_classe (tipo, ativo) values ("meio-campo", true); 
insert tb_classe (tipo, ativo) values ("zagueiro", true); 
insert tb_classe (tipo, ativo) values ("lateral", true); 
insert tb_classe (tipo, ativo) values ("goleiro", true); 



create table tb_personagem(
id bigint(5) auto_increment,
 nome varchar(255),
 overall bigint(5),
 ataque bigint (5),
defesa bigint (5),
tipo_personagemId bigint(20),
primary key (id),
FOREIGN KEY (tipo_personagemId) REFERENCES tb_classe (id)
);

insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Neymar", 91, 5000, 1500,1);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Cristiano Ronaldo", 92, 6000, 2000,1);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Messi", 92, 5900,3000, 1);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId)values ("Marta", 90, 10000, 2300, 2);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Formiga", 89, 9000, 4000, 2);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Dani Alves", 81, 3000, 6000, 4);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Sergio Ramos", 89, 2000, 10000, 3);
insert tb_personagem (nome, overall, ataque, defesa, tipo_personagemId) values ("Neuer", 500, 90, 10000, 5);

select * from tb_classe; -- mostra tudo que tem na tabela classe
select * from tb_personagem; -- mostra tudo que tem na tabela personagem

select * from tb_personagem where ataque>2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "C%";

select tb_personagem.nome, tb_personagem.overall, tb_classe.tipo, tb_personagem.ataque,
tb_personagem.defesa from tb_classe inner join tb_personagem on tb_personagem.tipo_personagemId = tb_classe.id;

select  * from tb_classe inner join tb_personagem on tb_personagem.tipo_personagemId = tb_classe.id;


select tb_personagem.nome, tb_personagem.overall, tb_classe.tipo, tb_personagem.ataque,
tb_personagem.defesa from tb_classe inner join tb_personagem on tb_personagem.tipo_personagemId = tb_classe.id 
and tb_personagem.tipo_personagemId = 1;







