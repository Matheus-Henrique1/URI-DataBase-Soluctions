/*
A nossa empresa está querendo fazer um novo contrato para o fornecimento de novos
produtos superluxuosos, e para isso precisamos de alguns dados dos nossos produtos.

Seu trabalho é exibir o nome dos produtos, nome dos fornecedores e o preço,
para os produtos cujo preço seja maior que 1000 e sua categoria seja ‘Super Luxury.
*/

SELECT p.name, f.name, p.price
FROM products p
JOIN providers f
ON p.id_providers = f.id
JOIN categories c
ON p.id_categories = c.id
WHERE p.price > 1000 AND c.name = 'Super Luxury';


