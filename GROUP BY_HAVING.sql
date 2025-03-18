-- Actividad 14
-- Calcule el monto de las rentas de cada empleado con durante el mes de mayo 
SELECT staff_id, SUM(amount) AS MontoDeRentas FROM payment
WHERE MONTH(payment_date)=5
GROUP BY staff_id;

-- Calcule el promedio de los pagos por cada mes 
SELECT YEAR(payment_date) AS Año, MONTH(payment_date) AS Mes , AVG(amount) AS PromedioDePagos FROM payment
GROUP BY Mes;

-- Calcule el promedio de los pagos de cada cliente
SELECT customer_id, AVG(amount) AS Promedio_Pagos_Por_Cliente 
FROM payment GROUP BY customer_id;

-- Calcule el promedio de los pagos de cada día de la semana 
SELECT CONCAT(YEAR(payment_date), "/", MONTH(payment_date), "/", DAY(payment_date)) AS Año_Mes_dia, 
AVG(amount) AS Promedio_Pagos_Dia FROM payment GROUP BY DAY(payment_date);

-- Calcule cuántas rentas tiene cada cliente 
SELECT customer_id, COUNT(rental_id) AS Rentas_Por_Cliente FROM rental GROUP BY customer_id;

-- Calcule cuantas rentas tiene cada empleado 
SELECT staff_id, COUNT(rental_id) AS Rentas_Por_Empleado FROM rental GROUP BY staff_id;

-- Calcule cuántos clientes tiene cada tienda 
SELECT store_id, COUNT(customer_id) AS Clientes_Tienda FROM customer GROUP BY store_id;

-- Calcule cuántas películas tiene cada categoría de rating
SELECT rating, COUNT(film_id) AS NumPeliculas FROM film GROUP BY rating;

-- Calcule cuántas ciudades están registradas por país 
SELECT country_id AS Id_Pais,COUNT(city_id) AS Num_Ciudad FROM city GROUP BY country_id;

-- Calcule cuántas películas hay en cada tienda 
SELECT store_id, COUNT(film_id) AS Num_Peliculas FROM inventory GROUP BY store_id;

-- Calcule el monto total de pagos de cada cliente
SELECT customer_id, SUM(amount) AS Monto_Total_Pagos FROM payment GROUP BY customer_id; 

-- Liste los empleados que han generado pagos con un monto total mayor a $100
SELECT staff_id, SUM(amount) AS Pagos FROM payment 
GROUP BY staff_id HAVING Pagos>100;

-- Calcule el número de pagos realizados por cada cliente en el mes de junio
SELECT customer_id, COUNT(payment_id) AS Pagos_Realizados, payment_date AS Fecha FROM payment
GROUP BY customer_id HAVING MONTH(Fecha)=6;

-- Calcule la cantidad de películas por cada duración de renta (rental_duration)
SELECT rental_duration ,COUNT(film_id) AS Cantidad_Peliculas FROM film GROUP BY rental_duration;

-- Calcule la cantidad total de pagos recibidos cada año
SELECT YEAR(payment_date) AS Año, COUNT(payment_id) AS Cantidad_Total_Pagos FROM payment
GROUP BY Año;

-- Calcule el monto total de pagos por cada día de la semana
SELECT DAY(payment_date) AS Dia, SUM(amount) AS Monto_Total FROM payment
GROUP BY Dia;

-- Liste los días donde el total de pagos fue mayor a $500
SELECT DAY(payment_date) AS Dia, SUM(amount) AS Monto FROM payment
GROUP BY Dia HAVING Monto>500;

-- Calcule cuántas películas hay en cada duración (length) específica
SELECT length, COUNT(film_id) FROM film GROUP BY length;

-- Calcule la cantidad de pagos realizados en cada tienda
-- SELECT  FROM payment;  NOSE DUDA CON ESTA

-- Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos
SELECT customer_id, SUM(amount) AS Monto_Total_Pagos FROM payment 
GROUP BY customer_id HAVING Monto_Total_Pagos>5;

-- Calcule el número de películas según su clasificación (rating)
SELECT rating, COUNT(film_id) AS NumPeliculas FROM film GROUP BY rating;

-- Liste los clientes que han realizado pagos con un monto promedio mayor a $5
SELECT customer_id, AVG(amount) AS Monto_Promedio FROM payment 
GROUP BY customer_id HAVING Monto_Promedio>5;

-- Calcule la cantidad de películas en cada duración de renta (rental_duration) mayor a 5 días
SELECT rental_duration AS Duracion, COUNT(film_id) AS Cantidad_Peliculas FROM film 
GROUP BY rental_duration HAVING rental_duration>5;

-- Calcule el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos
SELECT MONTH(payment_date) AS Mes, COUNT(payment_id) AS Total_Pagos_Resibidos FROM payment
GROUP BY Mes HAVING Total_Pagos_Resibidos>100;

-- Liste las clasificaciones de películas (rating) que tienen más de 200 películas registradas
SELECT rating, COUNT(film_id) AS Peliculas_Registradas FROM film
GROUP BY rating HAVING Peliculas_Registradas>200;
