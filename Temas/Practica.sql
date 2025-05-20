-- Actividad 22

-- Muestra los títulos de todas las películas junto con el nombre de la categoría a la que pertenecen.
SELECT CONCAT(f.title, ' / ', c.name) AS 'Titulo / Categoria'
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY f.title, c.name
ORDER BY f.title;

/* Lista todas las películas con el idioma en que están habladas. 
Si alguna película no tiene idioma, muestra "NULL".
*/
SELECT f.title, l.name
FROM film f
LEFT JOIN language l ON f.language_id = l.language_id
GROUP BY f.title, l.name
ORDER BY f.title;

/*Muestra todas las categorías, y si tienen películas, el número 
de películas en esa categoría. Si no tienen, muestra 0.
*/
SELECT DISTINCT c.name, IFNULL(COUNT(f.film_id), 0) AS num_peliculas
FROM category c
LEFT JOIN film_category fc ON c.category_id = fc.category_id
LEFT JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name
ORDER BY c.name;

-- Lista todos los clientes y cuánto dinero han pagado en total. Si no han hecho pagos, muestra 0.
SELECT DISTINCT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS Nombre, IFNULL(SUM(p.amount), 0) AS total
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY c.customer_id;

-- Muestra todas las direcciones y, si hay una tienda en esa dirección, muestra su ID.
SELECT a.address, s.store_id
FROM address a
LEFT JOIN store s ON a.address_id = s.address_id
GROUP BY a.address, s.store_id
ORDER BY a.address;

-- Muestra la fecha de renta y el título de la película que fue rentada.
SELECT r.rental_date, f.title
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY r.rental_date, f.title
ORDER BY r.rental_date;

/*Lista todos los empleados y la tienda en la que trabajan. 
Si algún empleado no tiene tienda asignada, muestra NULL.
*/
SELECT s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS Nombre, st.store_id
FROM staff s
LEFT JOIN store st ON s.store_id = st.store_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY st.store_id;

/* Muestra todas las ciudades y la cantidad de clientes 
que viven en ellas. Si no hay clientes, muestra 0.
*/
SELECT c.city_id, c.city, IFNULL(COUNT(cu.customer_id), 0) AS Conteo
FROM city c
LEFT JOIN address a ON c.city_id = a.city_id
LEFT JOIN customer cu ON a.address_id = cu.address_id
GROUP BY c.city_id, c.city
ORDER BY c.city_id;

-- Lista los clientes junto con las películas que han rentado.
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS Nombre, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY c.customer_id, f.title
ORDER BY c.customer_id, f.title;

/* Muestra todas las películas y cuántas veces han sido rentadas. 
Incluye las que nunca se han rentado.
*/ 
SELECT f.film_id, f.title, COUNT(r.rental_id) AS veces_rentadas
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY f.film_id;

/*Muestra todos los actores junto con la cantidad de películas
 en las que han actuado. Si un actor no ha actuado en ninguna película,
 mostrar 0.
*/
SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS Nombre, IFNULL(COUNT(f.film_id), 0) AS Conteo
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY a.actor_id;
