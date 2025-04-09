-- Codigo
/*
Liste las ciudades (id y nombre) y las tiendas que se encuentran en cada ciudad, 
use RIGHT JOIN para mostrar TODAS las ciudades haya o no tiendas en ellas.
*/
SELECT c.city_id, c.city, s.store_id
FROM store s
RIGHT JOIN address a ON s.address_id = a.address_id
RIGHT JOIN city c ON a.city_id = c.city_id;

/*Liste los países (id y nombre) y las ciudades que se encuentran en cada 
país, use RIGHT JOIN para mostrar TODOS los países haya o no ciudades en ellos
*/
SELECT c.country_id, c.country, ci.city
FROM city ci
RIGHT JOIN country c ON c.country_id = ci.country_id;

/*Liste las ciudades (id y nombre) y los clientes que se encuentran en cada ciudad, 
use RIGHT JOIN para mostrar TODAS las ciudades haya o no clientes en ellas.
*/
SELECT ci.city_id, ci.city, CONCAT(c.first_name, ' ', c.last_name) AS Clientes
FROM customer c
RIGHT JOIN address a ON c.address_id = a.address_id
RIGHT JOIN city ci ON a.city_id = ci.city_id;

-- Liste las películas que para la tienda 1 no hayan sido rentadas 
SELECT DISTINCT f.film_id , f.title
FROM inventory i
JOIN film f ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
WHERE i.store_id = 1 AND r.rental_id IS NULL;

-- Liste los nombres de los actores y en cuantas películas del catalogo participa 
SELECT CONCAT(a.first_name, ' ', a.last_name) AS nombres_Actores, COUNT(f.film_id) AS Peliculas_participacion
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY CONCAT(a.first_name, ' ', a.last_name); 

-- Liste los nombres de las películas y en cuantas tiendas están registradas
SELECT f.title, COUNT(s.store_id) AS Tiendas_Registradas
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN store s ON i.store_id = s.store_id
GROUP BY f.title;

-- Liste los idiomas y cuantas películas están habladas en ese idioma  
SELECT l.name, COUNT(f.film_id) AS Num_peliculas_hablantes
FROM film f
JOIN language l ON f.language_id = l.language_id
GROUP BY l.name;

-- Liste cuantas veces ha sido rentada cada película en el catalogo 
SELECT f.title, COUNT(r.rental_id) AS Num_rentada
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY f.title;

-- Liste cuantos pagos se realizaron en cada renta
SELECT r.rental_id, COUNT(payment_id) AS pagos_Realizados
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY r.rental_id;

-- Liste cuantas películas ha rentado cada cliente
SELECT c.customer_id, CONCAT(c.first_name, ' ' ,c.last_name) AS Nombre_completo, COUNT(r.rental_id) AS num_peliculas_rentadas 
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.customer_id;

-- Liste cuantas películas ha rentado cada miembro del staff
SELECT s.staff_id, CONCAT(s.first_name, ' ' ,s.last_name) AS Nombre_completo, COUNT(r.rental_id) AS num_peliculas_rentadas 
FROM rental r
JOIN staff s ON r.staff_id = s.staff_id
GROUP BY s.staff_id;

-- Liste los clientes que han generado pagos con un monto total mayor a $10
SELECT c.customer_id ,CONCAT(c.first_name, '', c.last_name) AS Cliente, SUM(p.amount)
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id HAVING  SUM(p.amount) > 10;

-- Liste los empleados que han generado pagos con un monto total mayor a $100
SELECT s.staff_id , CONCAT(s.first_name, '', s.last_name) AS Empleado, SUM(p.amount)
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id HAVING  SUM(p.amount) > 100;

-- Calcule el número de pagos realizados por cada cliente en el mes de junio
SELECT c.customer_id ,CONCAT(c.first_name, '', c.last_name) AS Cliente, SUM(p.amount) AS Pagos_Realizados_Junio, p.payment_date
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id HAVING MONTH(p.payment_date) = 5;

-- Calcule la cantidad de películas por cada duración de renta (rental_duration) 
SELECT rental_duration, (film_id) AS cantidad_Peliculas  
FROM film GROUP BY rental_duration;

-- Calcule la cantidad total de pagos recibidos cada año 
SELECT YEAR(payment_date) AS Año, SUM(amount) AS Pagos_resibidos
FROM payment GROUP BY YEAR(payment_date);

-- Calcule el monto total de pagos por cada día de la semana 
SELECT DAY(payment_date) AS Dia, WEEK(payment_date) AS Semana ,SUM(amount) AS Monto_total
FROM payment GROUP BY DAY(payment_date), WEEK(payment_date);

-- Liste los días donde el total de pagos fue mayor a $50
SELECT DAY(payment_date) AS Dia, SUM(amount) AS Pagos
FROM payment GROUP BY DAY(payment_date) HAVING SUM(amount) > 50;

-- Calcule cuántas películas hay en cada duración (length) específica
SELECT length, (film_id) AS NumPeliculas
FROM film GROUP BY length;

-- Calcule la cantidad de pagos realizados en cada tienda
SELECT st.store_id ,COUNT(p.amount) AS pagos_realizados
FROM payment p
JOIN staff s ON s.staff_id = p.staff_id
JOIN store st ON st.store_id = s.store_id
GROUP BY st.store_id;

/*Calcule el monto total de pagos por cada cliente, pero 
solo para aquellos que han realizado más de 5 pagos 
*/
SELECT c.customer_id, SUM(p.amount) AS monto_total
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id 
GROUP BY c.customer_id;

/*Calcule el número de películas (puede haber mas de 1 película 
por cada titulo) según su clasificación (rating) 
*/
SELECT rating, COUNT(film_id) AS Num_peliculas
FROM film
GROUP BY rating;

-- Liste los clientes que han realizado pagos con un monto promedio mayor a $5 
SELECT c.customer_id, AVG(p.amount) AS monto_promedio
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id HAVING AVG(p.amount) > 5;

/*Calcule la cantidad de títulos de películas en cada duración de renta 
(rental_duration) mayor a 5 días
*/
SELECT rental_duration, COUNT(film_id) AS cantidad_Peliculas  
FROM film GROUP BY rental_duration HAVING rental_duration > 5;

-- Liste el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos 
SELECT COUNT(payment_id) AS pagos_resibidos, MONTH(payment_date) AS Mes
FROM payment GROUP BY MONTH(payment_date) HAVING COUNT(payment_id) > 100;

-- Liste las clasificaciones de películas (rating) que tienen más de 50 películas registradas
SELECT rating, COUNT(film_id) AS peliculas_registradas
FROM film GROUP BY rating HAVING COUNT(film_id) > 50;
