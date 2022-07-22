/*
O setor de importação da nossa empresa precisa de um relatório sobre a
importação de produtos do nosso fornecedor Sansul.

Sua tarefa é exibir o nome dos produtos, o nome do fornecedor e o nome da categoria,
para os produtos fornecidos pelo fornecedor ‘Sansul SA’ e cujo nome da categoria seja
'Imported'.
*/

SELECT p.name, f.name, c.name
FROM products p
JOIN providers f
ON p.id_providers = f.id
JOIN categories c
ON p.id_categories = c.id
WHERE f.name = 'Sansul SA' and c.name = 'Imported'


