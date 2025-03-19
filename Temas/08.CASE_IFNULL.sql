-- Actividad 16
DROP DATABASE productos_prueba2;
CREATE DATABASE productos_prueba2;
USE productos_prueba2;
SET SQL_SAFE_UPDATES=0;

CREATE TABLE producto (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    stock_status VARCHAR(20)
);
INSERT INTO producto (id, nombre, categoria, precio, stock) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10),
(2, 'Mouse', 'Tecnología', 25.00, 0),
(3, 'Teclado', 'Tecnología', 50.00, 60),
(4, 'Monitor', 'Tecnología', 300.00, 20),
(5, 'Silla', 'Muebles', 120.00, 15),
(6, 'Escritorio', 'Muebles', 250.00, 5);

/*1. Mostrar el nombre y una columna llamada rango_precio que clasifique los productos así:
"Económico" si el precio es menor a 100.
"Moderado" si el precio está entre 100 y 500.
"Caro" si el precio es mayor a 500.
*/
SELECT nombre, CASE
	WHEN precio < 100 THEN "Economico"
    WHEN precio BETWEEN 100 AND 500 THEN "Moderado"
    WHEN precio > 500 THEN "Caro"
END AS rango_precio FROM producto;

/*2. Mostrar el nombre del producto y una columna disponibilidad que diga:
"Sin Stock" si el stock es 0.
"Bajo Stock" si el stock es menor a 20.
"Disponible" si el stock es igual o mayor a 20.
*/
SELECT nombre, CASE
	WHEN stock = 0 THEN "Sin Stock"
    WHEN stock < 20 THEN "Bajo Stock"
    WHEN stock >= 20 THEN "Disponible"
END AS Disponibilidad FROM producto;

/*3. Agregar una columna calculada llamada descuento que aplique lo siguiente:
Si el precio es mayor a 1000, aplicar un descuento del 10%.
Si el precio es entre 500 y 1000, aplicar un descuento del 5%.
En otros casos, sin descuento (0).
*/
SELECT nombre, precio, CASE
	WHEN precio > 1000 THEN precio * 0.90
    WHEN precio BETWEEN 500 AND 1000 THEN precio * 0.95
    ELSE precio = 0 
END AS Descuento FROM producto;

/*4. Actualizar la columna stock_status de la tabla productos con los siguientes valores:
"Sin Stock" si el stock es 0.
"Bajo" si el stock es menor a 20.
"Disponible" si el stock es igual o mayor a 20.
*/
UPDATE producto 
SET stock_status = CASE
	WHEN stock = 0 THEN "Sin Stock"
    WHEN stock < 20 THEN "Bajo"
    WHEN stock >= 20 THEN "Disponible"
END;
SELECT * FROM producto;

/*5. Actualizar la categoría de los productos:
Si el precio es mayor a 1000, cambiar la categoría a "Alta Gama".
Si el precio está entre 500 y 1000, cambiar a "Gama Media".
En otros casos, dejar la categoría como "Gama Baja".
*/
UPDATE producto
SET categoria = CASE
	WHEN precio > 1000 THEN "Alta Gama"
    WHEN precio BETWEEN 500 AND 1000 THEN "Gama Media"
    ELSE "Gama Baja"
END;
SELECT * FROM producto;

-- 6. Ordenar los productos mostrando primero los "Sin Stock", luego los de "Bajo Stock" y al final los "Disponibles".
SELECT * FROM producto ORDER BY stock, 
CASE 
	WHEN stock = 0 THEN "Sin Stock"
    WHEN stock < 20 THEN "Bajo Stock"
    WHEN stock >= 20 THEN "Disponibles"
END;

/*7. Ordenar los productos por precio según la siguiente prioridad:
Primero los productos "Caros" (precio > 1000).
Luego los "Moderados" (precio entre 500 y 1000).
Por último, los "Económicos" (precio menor a 500).
*/
SELECT * FROM producto ORDER BY precio,
CASE
	WHEN precio > 1000 THEN "Caros"
    WHEN precio BETWEEN 500 AND 1000 THEN "Moderados"
    WHEN precio < 500 THEN "Economicos"
END;

/*8. Mostrar una lista de productos con una columna oferta_especial que indique:
"Sí" si el producto está en la categoría "Muebles" y tiene un stock menor a 10.
"No" en caso contrario.
*/
SELECT *,
CASE
	WHEN categoria = "Muebles" AND stock < 10 THEN "Si"
    ELSE "No"
END AS Oferta_especial FROM producto;



-- IFNULL
CREATE TABLE producto2 (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    descuento DECIMAL(10, 2)
);
 
INSERT INTO producto2 (id, nombre, categoria, precio, stock, descuento) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10, NULL),
(2, 'Mouse', 'Tecnología', 25.00, NULL, 5.00),
(3, 'Teclado', 'Tecnología', 50.00, 60, NULL),
(4, 'Monitor', 'Tecnología', 300.00, 20, 15.00),
(5, 'Silla', 'Muebles', 120.00, NULL, NULL),
(6, 'Escritorio', 'Muebles', 250.00, 5, 10.00);

-- Mostrar todos los productos y su stock. Si el stock es NULL, mostrar 0.
SELECT nombre, IFNULL(stock, 0) AS stock FROM producto2;

-- Mostrar el nombre del producto y el precio_final considerando el descuento. Si el descuento es NULL, considerarlo como 0.
SELECT nombre, precio ,IFNULL(descuento, 0) AS Descuento, precio-(IFNULL(descuento, 0)) AS precio_final FROM producto2;

-- Mostrar el nombre y una columna categoria_segura que muestre "Desconocida" si la categoría es NULL.
SELECT nombre, IFNULL(categoria, "Desconocida") AS categoria_segura FROM producto2;

-- Actualizar el campo stock para que, si es NULL, se establezca en 0.
UPDATE producto2
SET stock = IFNULL(stock, 0);
SELECT nombre, stock FROM producto2;

-- Actualizar el campo descuento para que, si es NULL, se establezca en 0.
UPDATE producto2
SET descuento = IFNULL(descuento, 0);
SELECT nombre, precio, descuento FROM producto2;

-- Mostrar todos los productos ordenados por stock, considerando los NULL como 0.
SELECT nombre, IFNULL(stock, 0) AS stock FROM producto2 ORDER BY stock;