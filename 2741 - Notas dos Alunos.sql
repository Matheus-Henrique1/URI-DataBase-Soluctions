/*
O semestre acabou na Universidade do Sul da Transilvânia. Todos os cursos tiveram suas notas fechadas, apenas a disciplina de Alquimia 104 não teve a lista de alunos aprovados.

Portanto, você deverá mostrar a frase 'Approved: ' junto com o nome do aluno e a sua nota, para os alunos que foram aprovados (grade ≥7).

Lembre-se de ordenar a lista pela maior nota.
*/

create table students (
	id int primary key not null auto_increment,
    name varchar(100) not null,
    grade float
);

insert into students values(1,'Terry B. Padilla', 7.3);
insert into students values(2,'William S. Ray', 0.6);
insert into students values(3,'Barbara A. Gongora', 5.2);
insert into students values(4,'Julie B. Manzer', 6.7);
insert into students values(5,'Teresa J. Axtell', 4.6);
insert into students values(6,'Ben M. Dantzler', 9.6);

select concat('Approved: ', name) as name, grade from students where grade >= 7 order by grade desc;








