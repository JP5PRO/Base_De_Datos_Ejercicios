-- Actividad 11
-- Liste los registros de la tabla de actor con actor_id entre 10 y 20 o entre 30 y 40 o entre 50 y 60
SELECT * FROM actor WHERE (actor_id BETWEEN 10 AND 20) OR 
(actor_id BETWEEN 30 AND 40) OR (actor_id BETWEEN 50 AND 60);

/*Liste los registros de la tabla de actor cuyo nombre es ‘Carmen’ o que se llama ‘PENELOPE’ 
con apellido ‘GUINES’
*/
SELECT * FROM actor WHERE (first_name='carmen' OR first_name='PENELOPE') AND last_name='GUINESS';

-- Lista los registros de la tabla actor cuyo nombre comienza con ‘A’, ‘B’, ‘H’, ‘J’ ordenado por nombre
SELECT * FROM actor WHERE (first_name LIKE "A%" OR first_name LIKE "B%" OR first_name LIKE "H%" 
OR first_name LIKE"J%") ORDER BY first_name;

/* Lista el identificador, titulo y descripción de la tabla film cuyo titulo contenga 
“DINOSAUR” o “CRAFT”
*/
SELECT film_id, title, description FROM film WHERE title LIKE"%DINOSAUR%" OR title LIKE"%CRAFT%";

/*Lista los registros de la table  film con rating ="G" o "PG“ y con valor de renta menor 
o igual a 1.5  ordenado por descendentemente por el valor de renta
*/
SELECT * FROM film WHERE (rating="G" OR rating="PG") AND rental_rate<=1.5 ORDER BY rental_rate desc;

/* Lista los registros de la table  film con duración de la renta 
mayor a 3 días y costo de renta menor a 3 dólares ordenada ascendente por el costo de renta
*/
SELECT * FROM film WHERE rental_duration>3 AND rental_rate<3 ORDER BY rental_rate asc;

-- Obtener todos los clientes de la tienda 1 que tengan un apellido que empiece con 'A' o 'B'.
SELECT * FROM customer WHERE store_id=1 AND (last_name LIKE"A%" OR last_name LIKE"B%");
 
/*Obtener todas las películas que sean de clasificación 'PG' o 'G' y 
tengan una duración mayor a 100 minutos.
*/
SELECT * FROM film WHERE (rating="PG" OR rating="G") AND length>100;
 
/*Obtener todos los pagos realizados por clientes con un monto entre
5 y 10 dólares, excluyendo aquellos que pagaron exactamente 7.
*/
SELECT * FROM payment WHERE amount BETWEEN 5 AND 10 AND NOT amount=7;

/*Obtener los actores cuyos nombres comienzan con 'M' 
y que no tengan un apellido que comience con 'S'.
*/
SELECT * FROM actor WHERE first_name LIKE"M%" AND NOT last_name LIKE"S%";

-- Obtener los clientes que tienen una dirección en la tabla address, pero que no están activos
SELECT * FROM customer WHERE address_id IS NOT NULL AND active=0;

-- Obtener todos los alquileres realizados en el año 2005, excepto aquellos hechos en diciembre.
SELECT * FROM rental WHERE rental_date LIKE"2005%" AND NOT rental_date LIKE "_____12";
