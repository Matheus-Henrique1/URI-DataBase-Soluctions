/*
O Banco Central de Financiamentos perdeu vários registros após uma falha no servidor que ocorreu no mês de Outubro.
As datas de cobrança das parcelas foram perdidas. Porém uma cópia de segurança foi encontrada contendo as informações sobre as datas de pagamento das parcelas dos clientes.

Por tanto, o Banco pede a sua ajuda para selecionar os nomes e o dia do mês que cada cliente deve pagar sua parcela.

OBS: Obrigatoriamente o dia do mês precisa ser um inteiro.
*/

create table loan(
	id int primary key not null auto_increment,
	name varchar(100) not null,
    value numeric not null,
    payday timestamp
);

alter table loan modify column payday timestamp;

insert into loan values (1, 'Cristian Ghyprievy', 3000.50, '2017-10-19');
insert into loan values (2, 'John Serial', 10000, '2017-10-10');
insert into loan values (3, 'Michael Seven', 5000.40, '2017-10-17');
insert into loan values (4, 'Joana Cabel', 2000, '2017-10-05');
insert into loan values (5, 'Miguel Santos', 4050, '2017-10-20');

select name as name, cast(extract(day from payday) as int)as day from loan;




