-- Actividad 23


-- Muestra los títulos de las películas que tienen la misma duración que la película 'ALIEN CENTER'.
SELECT title FROM film
WHERE length = (SELECT length FROM film WHERE title = 'ALIEN CENTER');


-- Muestra los nombres de los clientes que han hecho al menos un pago mayor a 5 dólares.
SELECT CONCAT(first_name, ' ', last_name) AS Nombres_pago_mayor_5 FROM customer
WHERE customer_id IN (SELECT customer_id FROM payment WHERE amount > 5);


/*Muestra los títulos de las películas que tienen el mismo 
precio de renta que la película 'ZOOLANDER FICTION'.
*/
SELECT title FROM film
WHERE rental_rate = (SELECT rental_rate FROM film WHERE title = 'ZOOLANDER FICTION');


-- Muestra los nombres de los actores que actuaron en la película 'GHOSTBUSTERS ELF'.
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_actores FROM actor
WHERE actor_id = (SELECT actor_id FROM film_actor WHERE film_id = (
SELECT film_id FROM film WHERE title = 'GHOSTBUSTERS ELF'));


-- Muestra las películas cuya duración es mayor al promedio de todas las películas.
SELECT title FROM film 
WHERE length > (SELECT AVG(length) FROM film);


-- Lista los nombres de los clientes que han realizado al menos un pago.
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_clientes FROM customer
WHERE customer_id IN(SELECT customer_id FROM payment GROUP BY customer_id HAVING COUNT(amount) > 0);

-- Muestra los títulos de las películas que nunca han sido rentadas.
SELECT title FROM film WHERE 
film_id NOT IN (SELECT i.film_id FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id);
		   
-- Muestra el nombre de las categorías que tienen más de 50 películas.
SELECT name FROM category 
WHERE category_id IN (SELECT c.category_id FROM film_category c  
JOIN film f ON c.film_id = f.film_id GROUP BY c.category_id HAVING COUNT(f.film_id) > 50);

-- Muestra los nombres de los empleados que trabajan en la tienda que tiene más películas en inventario.
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_empleados FROM staff
WHERE store_id = (SELECT store_id FROM inventory 
GROUP BY store_id 
ORDER BY COUNT(*) DESC LIMIT 1);

-- Muestra los títulos de las películas que tienen el mismo rating que la película 'ACADEMY DINOSAUR'.
SELECT title FROM film
WHERE rating = (SELECT rating FROM film WHERE title = 'ACADEMY DINOSAUR');

-- Muestra el nombre de los actores que han participado en más de 20 películas.
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_actores FROM actor
WHERE actor_id IN (SELECT actor_id FROM film_actor GROUP BY actor_id HAVING COUNT(film_id) > 20);

-- Muestra los títulos de las películas que tienen el mismo costo de reposición que la película 'CRUSADE HONEY'.
SELECT title FROM film 
WHERE replacement_cost = (SELECT replacement_cost FROM film WHERE title = 'CRUSADE HONEY')
