/*
Richard é um cientista muito famoso por suas teorias do multiverso, onde ele descreve que todo o conjunto hipotético de universos paralelos podem ser representados
por meio de tabelas em um banco de dados. E graças a essa teoria você tem um emprego.

A sua primeira tarefa é selecionar todos os possíveis Richards das dimensões C875 e C774, junto a sua probabilidade de existência (o fator N) com a precisão de 3 casas decimais.

Lembre-se que (o fator N) é calculado multiplicando o valor omega por 1,618. Os dados devem ser ordenados pelo menor valor do campo omega.
*/

create table dimensions(
	id int primary key not null auto_increment,
    name varchar(100) not null
);

create table life_registry(
	id int primary key not null auto_increment,
    name varchar(100) not null,
    omega float(10,3),
    dimensions_id int,
    foreign key(dimensions_id) references dimensions(id)
);
alter table life_registry modify column omega float(10,1);
insert into dimensions values(1, 'C774');
insert into dimensions values(2, 'C784');
insert into dimensions values(3, 'C794');
insert into dimensions values(4, 'C824');
insert into dimensions values(5, 'C875');

insert into life_registry values(1, 'Richard Postman', 5.6, 2);
insert into life_registry values(2, 'Simple Jelly', 1.4, 1);
insert into life_registry values(3, 'Richard Gran Master', 2.5, 1);
insert into life_registry values(4, 'Richard Turing', 6.4, 4);
insert into life_registry values(5, 'Richard Strall', 1.0, 3);

select l.name as name, round((l.omega * 1.618),3) as 'Fator N'
from life_registry l
inner join dimensions d on l.dimensions_id = d.id
where l.name like '%Richard%' and d.name in('C875','C774')




