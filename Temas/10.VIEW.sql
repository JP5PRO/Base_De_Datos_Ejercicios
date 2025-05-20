-- Actividad 26
-- 22
-- Muestra los títulos de todas las películas junto con el nombre de la categoría a la que pertenecen.
DROP VIEW IF EXISTS titulos_categoria;
CREATE VIEW titulos_categoria AS
SELECT CONCAT(f.title, ' / ', c.name) AS 'Titulo / Categoria'
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY f.title, c.name
ORDER BY f.title;
SELECT * FROM titulos_categoria;

/* Lista todas las películas con el idioma en que están habladas.
Si alguna película no tiene idioma, muestra "NULL".
*/
DROP VIEW IF EXISTS lenguaje_peliculas;
CREATE VIEW lenguaje_peliculas AS
SELECT f.title, l.name
FROM film f
LEFT JOIN language l ON f.language_id = l.language_id
GROUP BY f.title, l.name
ORDER BY f.title;
SELECT * FROM lenguaje_peliculas;

/*Muestra todas las categorías, y si tienen películas, el número
de películas en esa categoría. Si no tienen, muestra 0.
*/
DROP VIEW IF EXISTS peliculas_categoria;
CREATE VIEW peliculas_categoria AS
SELECT DISTINCT c.name, IFNULL(COUNT(f.film_id), 0) AS num_peliculas
FROM category c
LEFT JOIN film_category fc ON c.category_id = fc.category_id
LEFT JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name
ORDER BY c.name;
SELECT * FROM peliculas_categoria;

-- Lista todos los clientes y cuánto dinero han pagado en total. Si no han hecho pagos, muestra 0.
DROP VIEW IF EXISTS clientes_dinero_total;
CREATE VIEW clientes_dinero_total AS
SELECT DISTINCT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS Nombre,
IFNULL(SUM(p.amount), 0) AS total
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY c.customer_id;
SELECT * FROM clientes_dinero_total;

-- Muestra todas las direcciones y, si hay una tienda en esa dirección, muestra su ID.
DROP VIEW IF EXISTS tienda_direcciones;
CREATE VIEW tienda_direcciones AS
SELECT a.address, s.store_id
FROM address a
LEFT JOIN store s ON a.address_id = s.address_id
GROUP BY a.address, s.store_id
ORDER BY a.address;
SELECT * FROM tienda_direcciones;

-- Muestra la fecha de renta y el título de la película que fue rentada.
DROP VIEW IF EXISTS fecha_titulo_peliculas;
CREATE VIEW fecha_titulo_peliculas AS
SELECT r.rental_date, f.title
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY r.rental_date, f.title
ORDER BY r.rental_date;
SELECT * FROM fecha_titulo_peliculas;

/*Lista todos los empleados y la tienda en la que trabajan.
Si algún empleado no tiene tienda asignada, muestra NULL.
*/
DROP VIEW IF EXISTS empleados_tienda;
CREATE VIEW empleados_tienda AS
SELECT s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS Nombre, st.store_id
FROM staff s
LEFT JOIN store st ON s.store_id = st.store_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY st.store_id;
SELECT * FROM empleados_tienda;

/* Muestra todas las ciudades y la cantidad de clientes
que viven en ellas. Si no hay clientes, muestra 0.
*/
DROP VIEW IF EXISTS ciudades_clientes_cantidad;
CREATE VIEW ciudades_clientes_cantidad AS
SELECT c.city_id, c.city, IFNULL(COUNT(cu.customer_id), 0) AS Conteo
FROM city c
LEFT JOIN address a ON c.city_id = a.city_id
LEFT JOIN customer cu ON a.address_id = cu.address_id
GROUP BY c.city_id, c.city
ORDER BY c.city_id;
SELECT * FROM ciudades_clientes_cantidad;

-- Lista los clientes junto con las películas que han rentado.
DROP VIEW IF EXISTS clientes_peliculas_rentadas;
CREATE VIEW clientes_peliculas_rentadas AS
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS Nombre, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY c.customer_id, f.title
ORDER BY c.customer_id, f.title;
SELECT * FROM clientes_peliculas_rentadas;

/* Muestra todas las películas y cuántas veces han sido rentadas.
Incluye las que nunca se han rentado.
*/
DROP VIEW IF EXISTS peliculas_num_veces_rentadas;
CREATE VIEW peliculas_num_veces_rentadas AS
SELECT f.film_id, f.title, COUNT(r.rental_id) AS veces_rentadas
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY f.film_id;
SELECT * FROM peliculas_num_veces_rentadas;

/*Muestra todos los actores junto con la cantidad de películas
en las que han actuado. Si un actor no ha actuado en ninguna película,
mostrar 0.
*/
DROP VIEW IF EXISTS actores_cantidad_peliculas;
CREATE VIEW actores_cantidad_peliculas AS
SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS Nombre,
IFNULL(COUNT(f.film_id), 0) AS Conteo
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY a.actor_id;
SELECT * FROM actores_cantidad_peliculas;

/* Muestra todas las tiendas, incluso si no tienen empleados asignados, 
junto con la cantidad de empleados que trabajan en cada una. 
*/ 
DROP VIEW IF EXISTS tiendas_empleados_cantidad;
CREATE VIEW tiendas_empleados_cantidad AS
SELECT s.store_id, COUNT(st.staff_id) AS Conteo 
FROM store s LEFT JOIN address a ON s.address_id = a.address_id 
LEFT JOIN staff st ON a.address_id = st.address_id 
GROUP BY s.store_id 
ORDER BY s.store_id;
SELECT * FROM tiendas_empleados_cantidad;

-----------------------------------------------------------------------------------------------------
-- 23
-- Muestra los títulos de las películas que tienen la misma duración que la película 'ALIEN CENTER'.
DROP VIEW IF EXISTS titulo_ALIENCENTER;
CREATE VIEW titulo_ALIENCENTER AS
SELECT title FROM film
WHERE length = (SELECT length FROM film WHERE title = 'ALIEN CENTER');
SELECT * FROM titulo_ALIENCENTER;

-- Muestra los nombres de los clientes que han hecho al menos un pago mayor a 5 dólares.
DROP VIEW IF EXISTS clientes_pagos_mayor_5;
CREATE VIEW clientes_pagos_mayor_5 AS
SELECT CONCAT(first_name, ' ', last_name) AS Nombres_pago_mayor_5 FROM customer
WHERE customer_id IN (SELECT customer_id FROM payment WHERE amount > 5);
SELECT * FROM clientes_pagos_mayor_5;

/*Muestra los títulos de las películas que tienen el mismo
precio de renta que la película 'ZOOLANDER FICTION'.
*/
DROP VIEW IF EXISTS titulos_ZOOLANDERFICTION;
CREATE VIEW titulos_ZOOLANDERFICTION AS
SELECT title FROM film
WHERE rental_rate = (SELECT rental_rate FROM film WHERE title = 'ZOOLANDER
FICTION');
SELECT * FROM titulos_ZOOLANDERFICTION;

-- Muestra los nombres de los actores que actuaron en la película 'GHOSTBUSTERS ELF'.
DROP VIEW IF EXISTS titulos_GHOSTBUSTERSELF;
CREATE VIEW titulos_GHOSTBUSTERSELF AS
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_actores FROM actor
WHERE actor_id = (SELECT actor_id FROM film_actor WHERE film_id = (
SELECT film_id FROM film WHERE title = 'GHOSTBUSTERS ELF'));
SELECT * FROM titulos_GHOSTBUSTERSELF;

-- Muestra las películas cuya duración es mayor al promedio de todas las películas.
DROP VIEW IF EXISTS duracion_mayor_promedio_peliculas;
CREATE VIEW duracion_mayor_promedio_peliculas AS
SELECT title FROM film
WHERE length > (SELECT AVG(length) FROM film);
SELECT * FROM duracion_mayor_promedio_peliculas;

-- Lista los nombres de los clientes que han realizado al menos un pago.
DROP VIEW IF EXISTS nombres_clientes_un_pago;
CREATE VIEW nombres_clientes_un_pago AS
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_clientes FROM customer
WHERE customer_id IN(SELECT customer_id FROM payment GROUP BY customer_id
HAVING COUNT(amount) > 0);
SELECT * FROM nombres_clientes_un_pago;

-- Muestra los títulos de las películas que nunca han sido rentadas.
DROP VIEW IF EXISTS titulos_peliculas_nunca_rentadas;
CREATE VIEW titulos_peliculas_nunca_rentadas AS
SELECT title FROM film WHERE
film_id NOT IN (SELECT i.film_id FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id);
SELECT * FROM titulos_peliculas_nunca_rentadas;

-- Muestra el nombre de las categorías que tienen más de 50 películas.
DROP VIEW IF EXISTS categorias_mas_50_peliculas;
CREATE VIEW categorias_mas_50_peliculas AS
SELECT name FROM category
WHERE category_id IN (SELECT c.category_id FROM film_category c
JOIN film f ON c.film_id = f.film_id GROUP BY c.category_id HAVING COUNT(f.film_id) >
50);
SELECT * FROM categorias_mas_50_peliculas;

-- Muestra los nombres de los empleados que trabajan en la tienda que tiene más películas en inventario.
DROP VIEW IF EXISTS nombres_empleados_inventario;
CREATE VIEW nombres_empleados_inventario AS
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_empleados FROM staff
WHERE store_id = (SELECT store_id FROM inventory
GROUP BY store_id
ORDER BY COUNT(*) DESC LIMIT 1);
SELECT * FROM nombres_empleados_inventario;

-- Muestra los títulos de las películas que tienen el mismo rating que la película 'ACADEMY DINOSAUR'.
DROP VIEW IF EXISTS titulos_rating_ACADEMYDINOSAUR;
CREATE VIEW titulos_rating_ACADEMYDINOSAUR AS
SELECT title FROM film
WHERE rating = (SELECT rating FROM film WHERE title = 'ACADEMY DINOSAUR');
SELECT * FROM titulos_rating_ACADEMYDINOSAUR;

-- Muestra el nombre de los actores que han participado en más de 20 películas.
DROP VIEW IF EXISTS actores_mas_20_peliculas;
CREATE VIEW actores_mas_20_peliculas AS
SELECT CONCAT(first_name, ' ', last_name) AS Nombre_actores FROM actor
WHERE actor_id IN (SELECT actor_id FROM film_actor GROUP BY actor_id HAVING
COUNT(film_id) > 20);
SELECT * FROM actores_mas_20_peliculas;

-- Muestra los títulos de las películas que tienen el mismo costo de reposición que la película 'CRUSADE HONEY'.
DROP VIEW IF EXISTS titulos_mismo_costo_CRUSADEHONEY;
CREATE VIEW titulos_mismo_costo_CRUSADEHONEY AS
SELECT title FROM film
WHERE replacement_cost = (SELECT replacement_cost FROM film WHERE title =
'CRUSADE HONEY');
SELECT * FROM titulos_mismo_costo_CRUSADEHONEY;

------------------------------------------------------------------------------------------------------
-- 24
-- Tienda Departamental
-- Seleccionar el nombre de los proveedores de la tienda con nombre ropa
DROP VIEW IF EXISTS proveedor_tienda;
CREATE VIEW proveedor_tienda AS
SELECT Nombre FROM proveedor WHERE claveDepartamento IN
(SELECT claveDepartamento FROM departamento WHERE Nombre = 'Ropa');
SELECT * FROM proveedor_tienda;

-- Selecciona el nombre y edad de los clientes que en las ventas aparesca como numArticulos entre 3 y 5
DROP VIEW IF EXISTS clientes_numArticulos;
CREATE VIEW clientes_numArticulos AS
SELECT Nombre, Edad FROM cliente WHERE claveCliente IN
(SELECT claveCliente FROM ventas WHERE numArticulos BETWEEN'3' and '5');
SELECT * FROM clientes_numArticulos;

/* Selecciona el nombre de las marcas que en sus articulos tengan entre 20 y 50 existencia y
y un precio mayor a 400
*/
DROP VIEW IF EXISTS marcas_articulos_existencia_20_50;
CREATE VIEW marcas_articulos_existencia_20_50 AS
SELECT Nombre FROM marca WHERE claveMarca IN
(SELECT claveMarca FROM articulos WHERE existencia BETWEEN '20' and '50' AND precio > 400);
SELECT * FROM marcas_articulos_existencia_20_50;

-- Selecciona el nombre de los vendedores que su clave de articulo sea 3,5,6,7,9,11,30,40
DROP VIEW IF EXISTS actores_mas_20_peliculas;
CREATE VIEW actores_mas_20_peliculas AS
SELECT Nombre FROM vendedor WHERE claveVendedor IN
(SELECT claveVendedor FROM articulos WHERE claveArticulo IN(3, 5, 6, 7, 9, 11, 30, 40));
SELECT * FROM actores_mas_20_peliculas;

/* Selecciona la clave de articulo, descripcion y precio de articulos donde las ganancias
tienen que ser mayor a 20
*/
DROP VIEW IF EXISTS actores_mas_20_peliculas;
CREATE VIEW actores_mas_20_peliculas AS
SELECT claveArticulo, descripcion, precio FROM articulos WHERE claveVendedor IN
(SELECT c.claveVendedor FROM vendedor c
JOIN ventas v ON c.claveVendedor = v.claveVendedor
WHERE v.ganancias > 20 GROUP BY c.claveVendedor);
SELECT * FROM actores_mas_20_peliculas;

-- Escuela
-- Selecciona el nombre y numMaterias donde el numero de estudaintes en el grupo debe ser menor que 20 y mayor a 50
DROP VIEW IF EXISTS estudiante_grupo_menor20;
CREATE VIEW estudiante_grupo_menor20 AS
SELECT Nombre, numMaterias FROM estudiante WHERE idGrupo =
(SELECT idGrupo FROM grupo WHERE numEstudiantes > 50 OR numEstudiantes < 20);
SELECT * FROM estudiante_grupo_menor20;

-- Selecciona el nombre y edad mientras que el grado del grupo sea mayor a 3
DROP VIEW IF EXISTS nombre_edad_grupo_mayor3;
CREATE VIEW nombre_edad_grupo_mayor3 AS
SELECT Nombre, Edad FROM maestro WHERE idGrupo IN
(SELECT idGrupo FROM grupo WHERE Grado > 3);
SELECT * FROM nombre_edad_grupo_mayor3;

-- Selecciona el dia, hora de los horarios que la materia sea matematicas
DROP VIEW IF EXISTS horarios_matematicas;
CREATE VIEW horarios_matematicas AS
SELECT Dia, hora FROM horarios WHERE idMateria IN
(SELECT idMateria FROM materia WHERE Nombre > 'Matematicas');
SELECT * FROM horarios_matematicas;

-- Selecciona el numero de encargador donde el grupo tenga 40 estudiantes
DROP VIEW IF EXISTS numeroencargados_4estudiantes;
CREATE VIEW numeroencargados_4estudiantes AS
SELECT NumEncargados FROM direccion WHERE idGrupo IN
(SELECT idGrupo FROM grupo WHERE numEstudiantes = 40);
SELECT * FROM numeroencargados_4estudiantes;

-- Selecciona el nombre y idGrupo donde los horarios sea del dia 4
DROP VIEW IF EXISTS horarios_dia4;
CREATE VIEW horarios_dia4 AS
SELECT Nombre, idGrupo FROM maestro WHERE idMaestro IN
(SELECT idMaestro FROM horarios WHERE Dia = 4);
SELECT * FROM horarios_dia4;

-- Liga Deportiva
-- Selecciona el nombre y rol del jugador que en su equipo hayan mas de 9 integrantes
DROP VIEW IF EXISTS equipos_mas9_integrantes;
CREATE VIEW equipos_mas9_integrantes AS
SELECT Nombre, Rol FROM jugador WHERE idEquipo IN
(SELECT idEquipo FROM equipo WHERE numIntegrantes > 9);
SELECT * FROM equipos_mas9_integrantes;

-- Selecciona el nombre y partidos jugados de cada arbitro pero que el idPartido sea mayor a 30
DROP VIEW IF EXISTS partidos_arbitro_idmayor30;
CREATE VIEW partidos_arbitro_idmayor30 AS
SELECT Nombre, partidosJugados FROM arbitro WHERE idArbitro IN
(SELECT idArbitro FROM partido WHERE idPartido > 30);
SELECT * FROM partidos_arbitro_idmayor30;

-- Selecciona los partidos ganados y persidos pero que el idCategoria sea entre 5 y 15
DROP VIEW IF EXISTS partidos_ganados_perdidos;
CREATE VIEW partidos_ganados_perdidos AS
SELECT Ganadas, Perdidas FROM clasificacion WHERE idEquipo IN
(SELECT idEquipo FROM categoria WHERE idCategoria BETWEEN '5' AND '15');
SELECT * FROM partidos_ganados_perdidos;

-- Selecciona el nombre y rol de los jugadores que en partidos ganados tengan mas de 2 y perdidos menos de 2
DROP VIEW IF EXISTS partidos_ganados_perdidos_2;
CREATE VIEW partidos_ganados_perdidos_2 AS
SELECT Nombre, Rol FROM jugador WHERE idEquipo IN
(SELECT idEquipo FROM equipo WHERE Ganadas > 2 AND Perdidas < 2);
SELECT * FROM partidos_ganados_perdidos_2;

-- Selecciona el nombre y premio de la categoria donde los puntos de los equipos esten entre 25 y 31
DROP VIEW IF EXISTS premio_categoria_puntos;
CREATE VIEW premio_categoria_puntos AS
SELECT Nombre, Premio FROM categoria WHERE idEquipo IN
(SELECT idEquipo FROM equipo WHERE puntos BETWEEN '25' AND '31');
SELECT * FROM premio_categoria_puntos;

-- Videojuegos
-- Selecciona el nombre y duracion del nivel con un mapa que tenga mas de 20 niveles
DROP VIEW IF EXISTS duracion_mapa_mas_20niveles;
CREATE VIEW duracion_mapa_mas_20niveles AS
SELECT Nombre, Duracion FROM nivel WHERE idMapa IN
(SELECT idMapa FROM mapas WHERE numNiveles > 20);
SELECT * FROM duracion_mapa_mas_20niveles;

-- Selecciona el nombre y correo del usuario donde la habilidad de su jugador inicie con la letra A
DROP VIEW IF EXISTS usuario_A;
CREATE VIEW usuario_A AS
SELECT Nombre, Correo FROM usuario WHERE idJugador IN
(SELECT idJugador FROM jugadores WHERE Habilidad LIKE 'A%');
SELECT * FROM usuario_A;

-- Selecciona el nombre y coleccionables del nivel donde el haya jugado el idUsuario 22,40,12,32
DROP VIEW IF EXISTS coleciconables_idUsuario;
CREATE VIEW coleciconables_idUsuario AS
SELECT Nombre, Coleccionables FROM nivel WHERE idNivel IN
(SELECT idNivel FROM nivel_usuario WHERE idUsuario IN(22,40,12,32));
SELECT * FROM coleciconables_idUsuario;

-- Selecciona el nombre y niveles completados del usuario donde sus puntos sean mayor a 2000
DROP VIEW IF EXISTS niveles_puntos_mayor_2000;
CREATE VIEW niveles_puntos_mayor_2000 AS
SELECT Nombre, nivelesCompletados FROM usuario WHERE idUsuario IN
(SELECT idUsuario FROM usuario_puntos WHERE idPuntos > 2000);
SELECT * FROM niveles_puntos_mayor_2000;

-- Selecciona el nombre, correo y contraseña donde el usuario utilize el jugador con un nombre que tenga una O
DROP VIEW IF EXISTS Usuario_jugador_O;
CREATE VIEW Usuario_jugador_O AS
SELECT Nombre, Correo, Contraseña FROM usuario WHERE idJugador IN
(SELECT idJugador FROM jugadores WHERE Nombre LIKE '%O%');
SELECT * FROM Usuario_jugador_O;

