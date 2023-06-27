/*
A Organização Mundial de Caracteres em Nomes de Pessoas (OMCNP) está fazendo um censo para saber qual é a quantidade de caracteres que as pessoas têm em seus nomes.

Para ajudar a OMCNP, você deve mostrar a quantidade de caracteres de cada nome em ordem decrescente pela quantidade de caracteres.
*/

create table people(
	id int primary key not null auto_increment,
    name varchar(100)
);

insert into people values (1, 'Karen');
insert into people values (2, 'Manuel');
insert into people values (3, 'Ygor');
insert into people values (4, 'Valentine');
insert into people values (5, 'Jo');

select name, length(name) as length from people order by length(name) desc;