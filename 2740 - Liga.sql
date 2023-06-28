/*
A Liga Internacional de Escavação Subterrânea já é um sucesso entre os esportes alternativos, porém todos que trabalham na organização do evento trabalham com escavação e não computação. Então você foi contratado para solucionar o problema da Liga.

Selecione os três primeiros colocados da lista com a frase inicial Podium: e também, os dois últimos times que serão rebaixados para série B com a frase inicial Demoted:
*/

create table league(
	position int primary key not null auto_increment,
    team varchar(100) not null
);

insert into league values (1, 'The Quack Bats');
insert into league values (2, 'The Responsible Hornets');
insert into league values (3, 'The Bawdy Dolphins');
insert into league values (4, 'The Abstracted Sharks');
insert into league values (5, 'The Nervous Zebras');
insert into league values (6, 'The Oafish Owls');
insert into league values (7, 'The Unequaled Bison');
insert into league values (8, 'The Keen Kangaroos');
insert into league values (9, 'The Left Nightingales');
insert into league values (10, 'The Terrific Elks');
insert into league values (11, 'The Lumpy Frogs');
insert into league values (12, 'The Swift Buffalo');
insert into league values (13, 'The Big Chargers');
insert into league values (14, 'The Rough Robins');
insert into league values (15, 'The Silver Crocs');

(select concat('Podium: ', team) as name from league order by position limit 3)
UNION all
(select concat('Demoted: ', team) as name from league  where position > 13 order by position);



