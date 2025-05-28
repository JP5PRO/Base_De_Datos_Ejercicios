-- Actividad 28
/* Crea un procedimiento que reciba el customer_id y 
devuelva el nombre completo (first_name + last_name) como salida.
*/
DROP PROCEDURE IF EXISTS Nombre_completo;
DELIMITER $$
CREATE PROCEDURE Nombre_completo (
	IN a_customer_id INT,
    OUT a_nombre_completo VARCHAR(255)
    )
BEGIN
	SELECT CONCAT(first_name, ' ', last_name)
	INTO a_Nombre_completo
	FROM customer
	WHERE customer_id = a_customer_id;
END$$
DELIMITER ;

SET @nombre := '';
CALL Nombre_completo(1, @nombre);
SELECT @nombre;

-- --------------------------------------------------------------------
/* Crear un procedimiento que reciba el nombre de una 
categoría (por ejemplo, 'Action') y devuelva cuántas películas hay en esa categoría
*/
DROP PROCEDURE IF EXISTS numPeliculas;
DELIMITER $$
CREATE PROCEDURE numPeliculas (
	IN a_name VARCHAR(255),
    OUT a_numPeliculas INT
    )
BEGIN
	SELECT COUNT(film_id)
	INTO a_numPeliculas
	FROM film_category fic
    JOIN category cy ON fic.category_id = cy.category_id 
	WHERE cy.name = a_name;
END$$
DELIMITER ;

SET @numero := 0;
CALL numPeliculas('Action', @numero);
SELECT @numero;

-- ------------------------------------------------------------------
-- Crea un procedimiento que reciba un customer_id y devuelva 1 si existe, o 0 si no.
DROP PROCEDURE IF EXISTS Existe_Confirmar;
DELIMITER $$
CREATE PROCEDURE Existe_Confirmar (
	IN z_customer_id INT,
    OUT z_confirmacion INT
    )
BEGIN
	SELECT COUNT(customer_id)
	INTO z_confirmacion
	FROM customer
	WHERE customer_id = z_customer_id;
END$$
DELIMITER ;

SET @si_o_no := 0;
CALL Existe_Confirmar(36, @si_o_no);
SELECT @si_o_no;

-- --------------------------------------------------------------------
-- Crear un procedimiento que reciba un número (min_duracion) y muestre todas las películas que duran más que ese valor.
DROP PROCEDURE IF EXISTS Duracion_peliculas;
DELIMITER $$
CREATE PROCEDURE Duracion_peliculas (
	IN d_duracion INT
    )
BEGIN
	SELECT title, length
	FROM film
	WHERE length > d_duracion;
END$$
DELIMITER ;

CALL Duracion_peliculas(100);

-- --------------------------------------------------------------------
-- Crea un procedimiento que reciba el customer_id y devuelva una lista de títulos de películas que ha rentado.
DROP PROCEDURE IF EXISTS peliculas_rentadas;
DELIMITER $$
CREATE PROCEDURE peliculas_rentadas (
	IN i_customer_id INT
    )
BEGIN
	SELECT f.title AS titulos_rentados
	FROM customer c
    JOIN rental r ON c.customer_id = r.customer_id 
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
	WHERE c.customer_id = i_customer_id;
END$$
DELIMITER ;

CALL peliculas_rentadas(26);

-- --------------------------------------------------------------------
-- Crear un procedimiento que reciba el store_id y devuelva el total de dinero generado por esa tienda.
DROP PROCEDURE IF EXISTS Dinero_en_tienda;
DELIMITER $$
CREATE PROCEDURE Dinero_en_tienda (
	IN r_staff_id INT,
    OUT z_dinero DECIMAL(15, 2)
    )
BEGIN
	SELECT SUM(amount)
	INTO z_dinero
	FROM payment
    WHERE staff_id = r_staff_id;
END$$
DELIMITER ;

SET @total_dinero := 0;
CALL Dinero_en_tienda(1, @total_dinero);
SELECT @total_dinero;

-- --------------------------------------------------------------------
-- Crear un procedimiento que reciba el film_id y devuelva el número de copias disponibles en la tabla inventory.
DROP PROCEDURE IF EXISTS Numero_copias_peliculas;
DELIMITER $$
CREATE PROCEDURE Numero_copias_peliculas (
	IN f_film_id INT,
    OUT n_num_copias INT
    )
BEGIN
	SELECT COUNT(i.inventory_id)
	INTO n_num_copias
	FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    WHERE f.film_id = f_film_id;
END$$
DELIMITER ;

SET @num_copias := 0;
CALL Numero_copias_peliculas(77, @num_copias);
SELECT @num_copias;

-- --------------------------------------------------------------------
-- Crear un procedimiento que reciba el film_id y muestre una lista con los nombres de los actores que participan en esa película.
DROP PROCEDURE IF EXISTS pelicula_actores_participantes;
DELIMITER $$
CREATE PROCEDURE pelicula_actores_participantes (
	IN f_film_id INT
    )
BEGIN
	SELECT CONCAT(a.first_name, ' ', a.last_name) AS Actores_participantes
	FROM film f
    JOIN film_actor fa ON f.film_id = fa.film_id
    JOIN actor a ON fa.actor_id = a.actor_id
	WHERE f.film_id = f_film_id;
END$$
DELIMITER ;

CALL pelicula_actores_participantes(49);

-- --------------------------------------------------------------------
-- Recibir el customer_id y devolver el correo electrónico del cliente.
DROP PROCEDURE IF EXISTS Correo_cliente;
DELIMITER $$
CREATE PROCEDURE Correo_cliente (
	IN c_customer_id INT,
    OUT c_correo VARCHAR(255)
    )
BEGIN
	SELECT email
	INTO c_correo
	FROM customer
    WHERE customer_id = c_customer_id;
END$$
DELIMITER ;

SET @correo := '';
CALL Correo_cliente(21, @correo);
SELECT @correo;

-- --------------------------------------------------------------------
-- Recibir el nombre de una ciudad y devolver cuántos clientes viven ahí.
DROP PROCEDURE IF EXISTS clientes_viven_en_ciudad;
DELIMITER $$
CREATE PROCEDURE clientes_viven_en_ciudad (
	IN c_city VARCHAR(255),
    OUT c_clientes_num INT
    )
BEGIN
	SELECT COUNT(c.customer_id)
    INTO c_clientes_num
	FROM city cy
    JOIN address a ON cy.city_id = a.city_id
    JOIN customer c ON a.address_id = c.address_id
	WHERE cy.city= c_city;
END$$
DELIMITER ;

SET @num_clientes := 0;
CALL clientes_viven_en_ciudad('Greensboro', @num_clientes);
SELECT @num_clientes;

-- --------------------------------------------------------------------
-- Recibir la clasificación (rating, como 'PG' o 'R') y mostrar las películas con esa clasificación.
DROP PROCEDURE IF EXISTS rating_peliculas;
DELIMITER $$
CREATE PROCEDURE rating_peliculas (
	IN r_rating VARCHAR(255)
    )
BEGIN
	SELECT title
	FROM film 
	WHERE rating = r_rating;
END$$
DELIMITER ;

CALL rating_peliculas('G');

-- --------------------------------------------------------------------
-- Recibir el estado (activo o inactivo) y mostrar la lista de clientes.
DROP PROCEDURE IF EXISTS activo_inactivo;
DELIMITER $$
CREATE PROCEDURE activo_inactivo (
	IN a_activo INT
    )
BEGIN
	SELECT CONCAT(first_name, ' ', last_name) AS Nombre_activacion
	FROM customer 
	WHERE active = a_activo;
END$$
DELIMITER ;

CALL activo_inactivo(1);

-- --------------------------------------------------------------------
-- Recibir un número y mostrar las películas con duración menor a ese valor.
DROP PROCEDURE IF EXISTS duracion_peliculas_menor;
DELIMITER $$
CREATE PROCEDURE duracion_peliculas_menor (
	IN n_duracion INT
    )
BEGIN
	SELECT title
	FROM film 
	WHERE length < n_duracion;
END$$
DELIMITER ;

CALL duracion_peliculas_menor(50);

-- --------------------------------------------------------------------
-- Recibir una fecha y listar los clientes registrados después de esa fecha.
DROP PROCEDURE IF EXISTS registrados_despues_fecha;
DELIMITER $$
CREATE PROCEDURE registrados_despues_fecha (
	IN f_fecha DATE
    )
BEGIN
	SELECT CONCAT(first_name, ' ', last_name)
	FROM customer 
	WHERE create_date > f_fecha;
END$$
DELIMITER ;

CALL registrados_despues_fecha('2006-02-14 22:04:36');

-- --------------------------------------------------------------------
-- Recibir un store_id y mostrar todas las películas disponibles en esa tienda.
DROP PROCEDURE IF EXISTS peliculas_en_tienda;
DELIMITER $$
CREATE PROCEDURE peliculas_en_tienda (
	IN s_store INT
    )
BEGIN
	SELECT DISTINCT f.title
	FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    JOIN store s ON i.store_id = s.store_id
	WHERE s.store_id = s_store;
END$$
DELIMITER ;
CALL peliculas_en_tienda(2);
