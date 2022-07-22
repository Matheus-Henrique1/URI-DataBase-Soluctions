/*
O setor financeiro encontrou alguns problemas na entrega de um dos nossos fornecedores, a entrega dos produtos não condiz com a nota fiscal.

Seu trabalho é exibir o nome dos produtos e o nome do fornecedor, para os produtos fornecidos pelo fornecedor ‘Ajax SA’.
*/

SELECT pd.name, pr.name FROM products pd
JOIN providers pr
ON pd.id_providers = pr.id
WHERE pr.name = 'Ajax SA';


