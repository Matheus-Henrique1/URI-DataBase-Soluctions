/*
Os diretores do setor de comunicação da sua empresa querem um relatório sobre os dados
dos clientes físicos que estão cadastrados no banco de dados. Porem o antigo relatório teve um problema. Os dados do CPF dos clientes vieram sem a máscara.

Por isso seu trabalho agora é selecionar todos os CPFs de todos os clientes,
e aplicar uma máscara sobre o retorno dos dados.

A máscara do CPF é parecida com: '000.000.000-00'.
*/

SELECT CONCAT(SUBSTRING(n.cpf,1,3),'.',
              SUBSTRING(n.cpf,4,3),'.',
              SUBSTRING(n.cpf,7,3),'-',
              SUBSTRING(n.cpf,10,2)) 
FROM customers c
JOIN natural_person n
ON n.id_customers = c.id


