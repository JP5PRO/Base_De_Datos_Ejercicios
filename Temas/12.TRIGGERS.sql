-- Actividad 30
/*1. Actualizar last_update de customer cuando se actualice su dirección
Crea un trigger que actualice el campo last_update de la tabla customer cuando se modifique su address_id.
*/
DELIMITER$$
CREATE TRIGGER update_customer
AFTER UPDATE ON customer
FOR EACH ROW

BEGIN
	UPDATE customer
    SET last_update = NOW()
    WHERE customer_id = NEW.customer_id
END
DELIMITER ;

UPDATE customer
SET address_id = 1
WHERE customer_id = 7;

SELECT customer_id, address_id, last_update FROM customer;

/*2. Actualizar last_update de rental al insertar un payment
Cuando se inserte un pago, actualiza el campo last_update del rental asociado.
*/
DELIMITER $$
CREATE TRIGGER update_al_insertar
AFTER INSERT ON payment
FOR EACH ROW
BEGIN
	UPDATE rental
	SET last_update = NOW()
	WHERE rental_id = NEW.rental_id
END
DELIMITER ;

DELETE FROM payment
WHERE payment_id = 2;
INSERT payment VALUES(2, 1, 1, 573, 0.99, '2005-05-28 10:35:23', '2006-02-15 22:12:30');
SELECT rental_id ,last_update FROM rental WHERE rental_id = 573;


/*3. Actualizar last_update de la tabla inventory al actualizar film_id
Cuando se actualice el film_id de un inventario, actualizado su campo last_update.
*/
DROP TRIGGER IF EXISTS actualizar_lastupdate;
DELIMITER$$
CREATE TRIGGER actualizar_lastupdate
AFTER UPDATE ON inventory
FOR EACH ROW

BEGIN
	UPDATE inventory
    SET last_update = NOW()
    WHERE inventory_id = NEW.inventory_id
END
DELIMITER ;

UPDATE inventory
SET film_id = 3
WHERE inventory_id = 3;

SELECT inventory_id, last_update FROM inventory;

/*4. Actualizar last_update de la tabla staff cuando se modifique su nombre
Cuando se actualice el first_name o last_name de un empleado (staff), 
también debe actualizarse el campo last_update.
*/
DELIMITER$$
CREATE TRIGGER nombres_staff_lastupdate
AFTER UPDATE ON staff
FOR EACH ROW

BEGIN
	UPDATE staff
    SET last_name = NOW()
    WHERE staff_id = NEW.staff_id
END
DELIMITER ;

UPDATE staff
SET first_name = 'Paul'
WHERE staff_id = 2;

SELECT staff_id, CONCAT(first_name, ' ', last_name) AS Nombre, last_update FROM staff;

-- Tienda Departamental: Cuando se actualiza el numero de articulos cambia las ganancias
DELIMITER$$
CREATE TRIGGER articulos_ganancias
BEFORE UPDATE ON ventas
FOR EACH ROW

BEGIN
	UPDATE ventas
    SET ganancias = CASE
		WHEN numArticulos > 20 THEN 10000
        WHEN numArticulos BETWEEN 10 AND 20 THEN 7000
        ELSE 5000
	END
END
DELIMITER ;

UPDATE ventas
SET numArticulos = 30
WHERE claveVenta = 2;

SELECT * FROM ventas WHERE claveVenta = 2;

-- Escuela: Si un dia se modifica la hora se actualiza al momento
DELIMITER$$
CREATE TRIGGER dia_hora
BEFORE SELECT ON horarios
FOR EACH ROW

BEGIN
	UPDATE horarios
    SET hora = NOW()
    WHERE Dia = NEW.Dia
END
DELIMITER ;

SELECT * FROM horarios WHERE Dia = 1;

-- Liga Deportiva: Al perder un partido pierda puntos un equipo
DELIMITER$$
CREATE TRIGGER puntos_perdidas
AFTER UPDATE ON clasificacion
FOR EACH ROW

BEGIN
	UPDATE clasificacion
    SET Puntos = Puntos - 2
    WHERE idEquipo = NEW.idEquipo AND NEW.Perdidas > OLD.Perdidas
END

DELIMITER ;
UPDATE clasificacion
SET Perdidas = Perdidas + 1
WHERE idEquipo = 5;

SELECT * FROM clasificacion WHERE idEquipo = 5;

-- Videojuegos: Si eliminamos niveles de un mapa tambien se eliminaran coleccionables
DELIMITER$$
CREATE TRIGGER numNiveles_coleccionables
BEFORE UPDATE ON mapas
FOR EACH ROW
BEGIN
	UPDATE mapas
    SET Coleccionables = Coleccionables - 5
    WHERE idMapa = NEW.idmapa AND NEW.numNiveles <> OLD.numNiveles
END
DELIMITER ;
UPDATE mapas
SET numNiveles = numNiveles - 3
WHERE idMapa = 1;
SELECT * FROM mapas WHERE idMapa = 1;
