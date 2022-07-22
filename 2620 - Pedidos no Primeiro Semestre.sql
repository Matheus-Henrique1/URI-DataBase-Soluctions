/*
A auditoria financeira da empresa está pedindo para nós um relatório do primeiro
semestre de 2016. Então exiba o nome dos clientes e o número do pedido para os
clientes que fizeram pedidos no primeiro semestre de 2016.
*/

SELECT c.name, o.id
FROM customers c
JOIN orders o
ON o.id_customers = c.id
WHERE o.orders_date
BETWEEN '2016-01-01' AND '2016-06-30';


