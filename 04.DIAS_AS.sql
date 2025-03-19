-- Actividad 12
/*Calcularemos el porcentaje de comisión del mes de mayo del empleado
con id=2 aplicando un 10% al monto de las rentas
*/
SELECT staff_id AS Empleado, amount AS MontoDeRentas, amount*0.10 AS Comision, payment_date AS Fecha FROM payment
WHERE staff_id=2 AND month(payment_date)=5;

/* Calcularemos el porcentaje de comisión del mes de Junio del empleado con 
id=1 aplicando un 10% al monto de las rentas 
*/
SELECT staff_id AS Empleado, amount AS MontoDeRentas, amount*0.10 AS Comision, payment_date AS Fecha FROM payment
WHERE staff_id=1 AND month(payment_date)=6;

/*El día 30 de mayo se agrega 1 dólar a la comisión de todos los empleados 
(que es del 10% del monto de la renta) muestre el listado de las rentas del 
día calculando la comisión  de forma que la comisión no sea mayor al 50% 
del monto de la renta
*/
SELECT rental_id,amount AS MontoDeRenta,((amount*0.10) + 1)+amount AS Comision,payment_date AS Fecha
FROM payment
WHERE month(payment_date)=5 AND day(payment_date)=30 
AND (((amount*0.10) + 1)+amount)<=((amount*0.50)+amount);

/*A todos los clientes que rentaron los días 30 o 31 de cada mes se les 
da un descuento del 20% sobre el monto de la renta , liste los id de los 
clientes, el folio de la renta, el monto, el descuento y el nuevo valor a pagar  
*/
SELECT customer_id, rental_id AS FolioDeRenta, amount AS Monto,(amount*0.20) AS Descuento ,
amount-(amount*0.20) AS NuevoValorAPagar, payment_date AS Fecha
FROM payment WHERE day(payment_date)=30 OR day(payment_date)=31;

/*
A todos los clientes que rentan los lunes se les otorga un día mas para regresarla , 
liste los id de los clientes, el folio de la renta, la fecha  de pago y la fecha 
de entrega 3 días después del pago
*/
SELECT customer_id AS IdCliente, rental_id AS FolioDeRenta, rental_date AS FechaDePago, 
return_date AS FechaDeEntrega 
FROM rental
WHERE WEEKDAY(rental_date) = 0 AND DATEDIFF(return_date, rental_date) = 3;

/*En la tabla de rentas calcular para cada ID los días trascurridos 
entre la fecha de regreso y la fecha de la renta 
*/
SELECT rental_id AS ID, rental_date AS FechaDeRenta, return_date AS FechaDeRegreso, 
ABS(Day(return_date)-Day(rental_date)) AS DiasTrasncurridos FROM rental;

/*Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas de los días domingo */
SELECT rental_id AS IdRenta, customer_id AS IdCliente, rental_date AS FechasDeRenta FROM rental
WHERE WEEKDAY(rental_date) = 6;

/*Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas de los días domingo del mes de mayo*/
SELECT rental_id AS IdRenta, customer_id AS IdCliente, rental_date AS FechaRenta FROM rental
WHERE WEEKDAY(rental_date)=6 AND MONTH(rental_date) = 5;

/*Lista el id de la renta, el id del cliente, fecha de renta y fecha de devolución 
de todas las rentas que se devuelven los días domingo del mes de junio
*/
SELECT rental_id AS IdRenta, customer_id AS IdCliente, rental_date AS FechaDeRenta, return_date AS FechaDeDevolucion FROM rental
WHERE WEEKDAY(return_date) = 6 AND MONTH(return_date) = 6;
