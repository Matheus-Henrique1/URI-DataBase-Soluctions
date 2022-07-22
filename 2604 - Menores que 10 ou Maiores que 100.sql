/*
O setor financeiro da empresa precisa de um relatório que mostre o código e o nome dos produtos cujo
preço são menores que 10 ou maiores que 100.
*/


SELECT p.id, p.name FROM products as p WHERE p.price < 10 OR p.price > 100