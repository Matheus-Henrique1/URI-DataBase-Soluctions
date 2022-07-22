/*
A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda.
Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.
*/

SELECT c.name, r.rentals_date
FROM rentals r JOIN customers c
ON r.id_customers = c.id
WHERE extract(month FROM r.rentals_date) = 9;


