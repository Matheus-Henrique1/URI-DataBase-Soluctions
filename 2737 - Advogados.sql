/*
O diretor da Mangojata Advogados ordenou que lhe fosse entregue um relatório
sobre seus advogados atuais.

O diretor quer que você mostre para ele o nome do advogado que têm mais clientes,
o nome do advogado que tem menos clientes e a média de clientes entre todos os advogados.

OBS: Antes de apresentar a média mostre um campo chamado Average a fim de deixar
o relatório mais apresentável. A média deverá ser apresentada em inteiros.
*/

SELECT l.name, l.customers_number
FROM lawyers AS l
WHERE l.customers_number = (
    SELECT MAX(l.customers_number) FROM lawyers AS l)

UNION ALL

SELECT l.name, l.customers_number
FROM lawyers AS l
WHERE l.customers_number = (
    SELECT MIN(l.customers_number) FROM lawyers AS l)

UNION ALL

SELECT 'Average', ROUND(AVG(l.customers_number), 0)
FROM lawyers AS l

