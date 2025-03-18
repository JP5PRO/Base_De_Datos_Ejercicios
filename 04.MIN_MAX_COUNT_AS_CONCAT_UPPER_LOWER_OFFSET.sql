-- Actividad 12

-- Obtener la fecha más antigua de alquiler
SELECT MIN(rental_date) AS FechaMasAntigua FROM rental;

-- Obtener el ID de actor más bajo
SELECT MIN(actor_id) AS ActorMasBajo FROM actor;

-- Obtener la duración mínima de una película
SELECT MIN(length) AS Duracion FROM film;

-- Obtener la fecha más reciente de alquiler
SELECT MAX(rental_date) AS Fecha_Reciente_De_Alquiler FROM rental;

-- Obtener el ID de actor más alto
SELECT MAX(actor_id) AS ActorMarAlto FROM actor;

-- Obtener la duración máxima de una película
SELECT MAX(length) AS Duracion FROM film;

-- Contar el número total de actores
SELECT COUNT(*) AS Numero_Total FROM actor;

-- Contar cuántas películas tienen clasificación PG
SELECT COUNT(*) AS PeliculasClasif_PG FROM film
WHERE rating="PG";

-- Contar cuántos clientes hay en la tienda 1
SELECT COUNT(*) FROM customer
WHERE store_id=1;

-- Sumar todos los pagos registrados
SELECT SUM(amount) AS PagosRegistradosSumados FROM payment;

-- Sumar la duración total de todas las películas
SELECT SUM(length) AS SUMTotalDuracion FROM film;

-- Sumar todos los pagos de un cliente específico (ID 5)
SELECT SUM(amount) AS SumPagosCustomerId5 FROM payment
WHERE customer_id=5;

-- Calcular el promedio de duración de las películas
SELECT AVG(length) AS DuracionPromedio FROM film;

-- Calcular el promedio de los pagos realizados
SELECT AVG(amount) AS PagosRealizados FROM payment;

-- Calcular el promedio de duración de alquiler de las películas
SELECT AVG(rental_duration) AS PromedioDuracion FROM film;

-- Mostrar nombres de actores con alias de nombre y apellido
SELECT first_name AS Nombre, last_name AS Apellido FROM actor;

-- Mostrar la cantidad total de películas con un alias
SELECT COUNT(*) AS Cantidad_Total_Peliculas FROM film;

-- Calcular el pago total por cliente con un alias
SELECT customer_id AS Cliente, SUM(amount) AS PagoTotal FROM payment;
-- GROUP BY customer_id;

-- Concatenar el nombre y apellido de los actores
SELECT CONCAT(first_name, " ", last_name) AS Nombre_Apellidos FROM actor;

-- Concatenar el título de la película con su clasificación
SELECT CONCAT(title, " ", rating) AS Titulo_Clasificacion FROM film;

-- Concatenar el nombre completo del cliente con su ID
SELECT CONCAT(first_name, " ", last_name, "___", customer_id) AS Nombre_ID FROM customer;

-- Convertir todos los nombres de actores a mayúsculas
SELECT UPPER(first_name) AS Nombres_Actores FROM actor;

-- Convertir los nombres de las películas a mayúsculas
SELECT UPPER(title) AS Nombres_Film FROM film;

-- Convertir el nombre del país a mayúsculas
SELECT UPPER(country) AS Nombre_Pais FROM country;

-- Convertir todos los nombres de actores a minúsculas
SELECT LOWER(first_name) AS Name_actor FROM actor;

-- Convertir los nombres de las películas a minúsculas
SELECT LOWER(title) AS Name_film FROM film;

-- Convertir el nombre del país a minúsculas
SELECT LOWER(country) AS Name_country FROM country;

-- Obtener 5 películas saltando las primeras 10 en orden alfabético
SELECT film_id, title, description FROM film ORDER BY title asc LIMIT 5 OFFSET 10;

-- Obtener 5 clientes saltando los primeros 15 en orden por apellido
SELECT customer_id, first_name AS Nombre, last_name AS Apellido FROM customer ORDER BY last_name asc LIMIT 5 OFFSET 15;