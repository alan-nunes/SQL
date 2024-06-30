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