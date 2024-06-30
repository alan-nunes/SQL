create database cadastro
default character set utf8	
default collate utf8_general_ci;
use cadastro;

create table pessoas ( 
	id int auto_increment primary key,
	nome varchar(30) not null,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal (5,2),
    altura decimal (3,2),
    nacionalidade varchar(20) default 'Brasil'
) default charset = utf8, auto_increment = 1;

insert into pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
values ('Godofredo', "1984-01-02", 'M', 78.5, 1.83, 'Brasil');

insert into pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
values ('Maria', "1999-12-30", 'f', 55.2, 1.65, 'Portugal');

insert into pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
values(default, 'Joana', "1920-12-30", 'f', 67.5, 1.57, default);

insert into pessoas values (default, 'Creuza', "1997-02-24", 'f', 79.0, 1.68, 'Irlanda');

insert into pessoas values (default, 'Claudio', "1975-04-22", 'm', 99.0, 2.15, 'Brasil'),
						   (default, 'Pedro', "1982-07-09", 'M', 76.8, 1.76, 'Brasil'),
						   (default, 'Andrielle', "2003-11-19", 'F', 54, 1.64, 'Brasil');

describe pessoas;

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add codigo int first;

alter table pessoas
modify column profissao varchar(20) not null default ' ' ;

alter table pessoas
change column profissao profission varchar(20);

alter table pessoas
rename to gafanhotos;

create table if not exists cursos (
	nome varchar(30) not null unique,
    decricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2016'
)  default charset = utf8;

alter table cursos
add column id_curso int first ;

alter table cursos
add primary key (id_curso);

describe cursos; 

create table if not exists teste(
	id int, 
    nome varchar(10),
    idade int
);

drop table cursos; 
 
 insert into cursos values ('1', 'html4', 'Curso de HTML5', 40, 37, '2014'),
						   ('2', 'Algoritmos', 'Lógica de Programação', 20, 15, '2014'),
                           ('3', 'photosop', 'dicas de photosop cc', 10, 8, '2014'),
                           ('4', 'pgp', 'curso de php para iniciantes', 40, 20, '2010'),
                           ('5', 'jarva', 'introdução á liguagem java', 10, 29, '2000'),
                           ('6', 'mysql', 'bancos de dados mysql', 30, 15, '2016'),
                           ('7', 'word', 'curso completo de word', 40, 30, '2016'),
                           ('8', 'sapateado', 'danças ritmicas', 40, 30, '2018'),
                           ('9', 'conzinha árabe', 'aprenda a fazer kibe', 40, 30, '2018'),
                           ('10', 'youtuber', 'gerar polêmica e ganhar inscritos', 5, 2, '2018');

update cursos
set nome = 'HTML5'
where id_curso = 1;

update cursos
set nome = 'PHP', ano = '2015'
where id_curso = 4;

update cursos
set nome = 'Java', ano = '2015', carga = '40'
where id_curso = 5
limit 1;

update cursos
set ano = '2050', carga = '800'
where ano = '2018';

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit  1;

delete from cursos
where id_curso = 8;

delete from cursos
where ano = '2050';

truncate cursos;

-- DDL -> create database, create table, alter table, drop table
-- DML -> insert into, update, delete, truncate
