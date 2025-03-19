-- Actividad 15
DROP DATABASE productos_prueba;
CREATE DATABASE productos_prueba;
USE productos_prueba;
SET SQL_SAFE_UPDATES=0;

CREATE TABLE producto (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 categoria VARCHAR(50),
 precio DECIMAL(10, 2),
 stock INT
);

INSERT INTO producto (id, nombre, categoria, precio, stock) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10),
(2, 'Mouse', 'Tecnología', 25.00, 100),
(3, 'Teclado', 'Tecnología', 50.00, 60),
(4, 'Monitor', 'Tecnología', 300.00, 20),
(5, 'Silla', 'Muebles', 120.00, 15),
(6, 'Escritorio', 'Muebles', 250.00, 5),
(7, "Mantel", "Accesorios" , 150.00 ,0),
(8, "Celular", "Tecnologia", 6999.99, 50),
(9, "Television", "Tecnologia", 14000.99, 13),
(10, "Relog", "Tecnologia", 800.87, 24),
(11, "Manzana", "Comida", 5.99, 100),
(12, "Naranja", "Comida", 6.99, 200),
(13, "Almohada", "Accesorios", 99.99, 30),
(14, "Cables", "Electronica", 20.00, 500),
(15, "Disco Duro", "Electronica", 300.00, 300),
(16, "Cuadro", "Muebles", 250.00, 20),
(17, "Tablet", "Tecnologia", 4299.99, 40),
(18, "Proyector", "Tecnologia", 5699.99, 10),
(19, "PC", "Tecnologia", 14998.99, 25),
(20, "Mesa", "Muebles", 9299.99, 14),
(21, "Chimenea", "Muebles", 6999.99, 3),
(22, "Consola", "Tecnologia", 4080.00,0),
(23, "Bocina", "Tecnologia", 1300.00, 30),
(24, "Sopa", "Comida", 84.99, 50),
(25, "Repisa", "Muebles" ,240.00, 10),
(26, "Percheros", "Muebles", 300.00, 10);

SELECT * FROM producto;
USE productos_prueba;

-- Actualizar el precio del producto "Silla" a 130.00.
UPDATE producto 
SET precio = 130.00
WHERE nombre = "Silla";
SELECT * FROM producto;

-- Incrementar en un 10% el precio de todos los productos de la categoría "Tecnología".
UPDATE producto
SET precio = precio * 1.1
WHERE categoria= "Tecnologia";
SELECT * FROM producto;

-- Aumentar el stock de todos los productos con stock menor o igual a 10 en 5 unidades.
UPDATE producto
SET stock = stock + 5
WHERE stock <= 10;
SELECT * FROM producto;

-- Cambiar el nombre del producto con id = 6 a "Escritorio de Madera".
UPDATE producto
SET nombre = "Escritorio de Madera"
WHERE id = 6;
SELECT * FROM producto;

-- Reducir en un 5% el precio de los productos cuyo precio sea mayor a 500.
UPDATE producto
SET precio = precio - (precio * 0.05)
WHERE precio > 500;
SELECT * FROM producto;

-- Actualizar la categoría del producto "Monitor" a "Electrónica".
UPDATE producto
SET categoria = "Electronica"
WHERE nombre = "Monitor";
SELECT * FROM producto;

-- Establecer el stock en 0 para todos los productos con un precio inferior a 30.
UPDATE producto
SET stock = 0
WHERE precio < 30;
SELECT * FROM producto;

-- Eliminar el producto con el nombre "Mouse".
DELETE FROM producto
WHERE nombre = "Mouse";
SELECT * FROM producto;

--  Eliminar todos los productos cuya categoría sea "Muebles" y cuyo stock sea menor a 10.
DELETE FROM producto
WHERE categoria = "Muebles" AND stock < 10;
SELECT * FROM producto;

-- Eliminar los productos cuyo precio sea mayor a 1000.
DELETE FROM producto
WHERE precio > 1000;
SELECT * FROM producto;

-- Eliminar el producto con id igual a 4.
DELETE FROM producto
WHERE id = 4;
SELECT * FROM producto;

-- Eliminar todos los productos que tengan un stock igual a 0.
DELETE FROM producto
WHERE stock = 0;
SELECT * FROM producto;

/*Actualiza el precio de todos los productos de la categoría "Tecnología" 
en un 15%, pero solo si su precio actual es menor a 1000.
*/
UPDATE producto
SET precio = precio + (precio*0.15)
WHERE categoria = "Tecnologia" AND precio < 1000;
SELECT * FROM producto;

-- Elimina todos los productos cuyo stock sea menor al promedio del stock de todos los productos.
SELECT AVG(stock) FROM producto;
DELETE FROM producto
WHERE stock < ( SELECT AVG(stock) FROM producto);  -- INVESTIGUE Y SE LE PONE SELECT EN ESTA PARTE
SELECT * FROM producto;

-- Cambia el nombre de todos los productos de la categoría "Muebles" agregando la palabra "Deluxe" al final del nombre.
UPDATE producto
SET nombre = CONCAT(nombre, " Deluxe")
WHERE categoria = "Muebles";
SELECT * FROM producto;