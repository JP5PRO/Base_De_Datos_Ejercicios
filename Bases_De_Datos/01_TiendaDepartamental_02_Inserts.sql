-- DB Departamental
-- Tabla Departamento
INSERT INTO Departamento (Nombre) VALUES
('Tecnologia'), ('Ropa'), ('Comida'), ('Hogar'), ('Juguetes'),  ('Tecnología'), ('Deportes'), ('Juguetes'),
('Ropa'), ('Mobiliario'), ('Música'),  ('Mobiliario'), ('Ropa'), ('Tecnologia'), ('Accesorios'), ('Musica'), 
('Deportes'), ('Hogar'), ('Juguetes'), ('Medicina'), ('Accesorios'), ('Muebles'), ('Comida'), ('Mercantil'), 
('Salud'), ('Informacion'), ('Comida'), ('Hogar'), ('Ropa'), ('Ropa'), ('Deportes'), ('Muebles'), ('Musica'), 
('Medicina'), ('Accesorios'), ('Deportes'), ('Laboral');

-- Tabla Cliente
insert into cliente (Nombre, Direccion, Edad) VALUES
('Juan Perez', 'Calle 89', 30), ('Cesar Sanchez', 'Calle 56', 23), ('Sofia Martitez', 'Calle 67', 28),
('Juan Perez', 'Calle 67', 30), ('Giovanni Santoyo', 'Calle 877', 48), ('Jenifer Franco', 'Calle 56', 45),
('Rocio Pilar', 'Calle 56', 23), ('Marcela Lopez', 'Calle 76', 42), ('Ana Rodriguez', 'Calle 234', 19),
('Jose Molina', 'Calle 843', 50), ('Ivan Campos', 'Calle 96', 34), ('Jesus Duran', 'Calle 56', 31),
('Bruno Orea', 'Calle 27', 30), ('Dalia González', 'Calle 94', 26), ('Pablo Franco', 'Calle 239', 44),
('Ana Rodriguez', 'Calle 23', 20), ('Evan Morales', 'Calle 21', 21 ), ('Cristofer Cruz', 'Calle 222', 25),
('Carolina Torres', 'Calle 32', 32), ('Manolo Mendoza', 'Calle 827', 27), ('manuela Rivera', 'Calle 73', 36),
('Manuel Salgado', 'Calle 67', 50), ('Ivan Ramos', 'Calle 722', 21), ('José Ramírez', 'Calle 50', 39),
('Adriana Vargas', 'Calle 56', 26),('Sergio Castro', 'Calle 99', 41),('Paola Fernández', 'Calle 22', 22),
('Óscar Estrada', 'Calle 77', 37), ('Camila Pacheco', 'Calle 100', 24), ('Luis Domínguez', 'Calle 66', 45),
('Gabriela Montes', 'Calle 32', 28), ('Javier Rivas', 'Calle 55', 36), ('Natalia Pérez', 'Calle 90', 30),
('Fernando López', 'Calle 123', 35), ('Margarita Gómez', 'Calle 45', 27), ('Hugo Sánchez', 'Calle 21', 40),
('Beatriz González', 'Calle 88', 31), ('Daniel Ortega', 'Calle 11', 29), ('Silvia Ramírez', 'Calle 15', 33),
('Miguel Ángel Torres', 'Calle 19', 38);

-- Tabla Vendedor
INSERT INTO Vendedor (Nombre) VALUES
('Ivan Ramos'), ('Rodrigo Martin'), ('Carlos Garcia'), ('Yazmin Saragoza'), ('Luna Rodriguez'), ('Luis Gómez'),
('Ricardo Lopez'), ('Fernando Garcia'),  ('Alan Alvarez'), ('Carlos Gonzalez'),  ('Marcela González'), 
('Adriana Pérez'),  ('Esteban Fernández'), ('Verónica Montes'), ('Roberto Sánchez'), ('Alejandra Vargas'),
('Santiago Domínguez'), ('Natalia Gutiérrez'), ('Patricia Ramírez'), ('Humberto Salgado'), ('Silvia Márquez'),
('Rafael Pacheco'), ('Daniela González'), ('Luciano Martínez'), ('Claudia Espinoza'), ('Antonio Medina'), ('Eduardo Rivas'),
('Teresa Campos'), ('Leonardo Estrada'), ('Fernanda Morales'), ('Beatriz López'), ('Ricardo Cano'), ('Oscar Montes'), 
('Marcela Gonzalez'), ('Cesar Parra'), ('Cristina Esparza'), ('William Puentes'), ('Francisco Fuentes'),
('Kalol Lopez'), ('Luis Reyes');

-- Tabla Marca
INSERT INTO Marca (Nombre) VALUES
('Nike'), ('Apple'), ('Nintendo'), ('Sony'), ('Adidas'), ('LG'), ('Casio'), ('Fender'), ('Casio'),
('HP'), ('Motorola'),  ('Samsung'), ('ZTE'), ('Fender'), ('Apple'), ('Samsung '), ('Sony'), ('Microsoft'), 
('Nike'), ('Adidas'), ('Puma'), ('Rolex'), ('Casio'), ('Fender'), ('Gibson'), ('Yamaha'), ('Honda'), 
('Mazda'), ('Lego'), ('Hot Wheels'), ('Nintendo'), ('Playmobil'),('Coca-Cola'), ('Pepsi'), ('Nestlé'), 
('L’Oréal'), ('Colgate'), ('Whiskas'), ('Pedigree');

-- Tabla Proveedor
INSERT INTO Proveedor (Nombre, claveDepartamento) VALUES
('Marta Marques', 1), ('Camila Torrez', 2), ('Eustaquio Gonzalez', 3), ('Maria Saldoval', 4), ('Filomeno Herrera', 5), 
('Ulises Martinez', 6), ('Marcela González', 7),  ('Jesus Alvarado', 8), ('Juan Zappa', 9), ('Rafael Martinez', 10), 
('William Torres', 11), ('Maria Sandoval', 12), ('Lucero Alcala', 13), ('Eustaquio Gonzalez', 14),  ('Federico Montalvo', 16),
('Claudia Meza', 17), ('Pablo Sainz', 18), ('Joaquín Salinas', 19), ('Matías López', 20), ('Susana Herrera', 21),
('Fernando Castro', 22),('Ramón Ibarra', 23), ('Diana Ortega', 24), ('Cecilia Dávila', 25), ('Enrique Solís', 26), 
('Rodrigo Mendoza', 27),('Paula Vargas', 28), ('Mario Estrada', 29), ('Camilo Ríos', 30), ('Bárbara Guzmán', 31), 
('Miguel Valencia', 32),('Luciana Flores', 33), ('Emilio Herrera', 34), ('Catalina Márquez', 35), ('Diego Domínguez', 36), 
('Bruno Pérez', 37), ('Ximena Tapia', 38), ('Héctor Suárez', 39), ('Gloria Ávila', 40);

-- Tabla Ventas
INSERT INTO Ventas (numArticulos, ganancias, claveCliente, claveVendedor) VALUES
(20, 5000, 1, 1), (3, 1500, 2, 2), (4, 2000, 3, 3), (2, 1000, 4, 4), (5, 500, 5, 5), (7, 3000, 6, 6),
(9, 1500, 7, 7), (22, 2500, 8, 8), (3, 3500, 9, 9), (8, 4000, 10, 10), (12, 2000, 11, 11), (11, 3000, 12, 12),
(20, 1500, 13, 13), (5, 2500, 14, 14), (2, 1000, 15, 15), (6, 4500, 16, 16), (9, 500, 17, 17), (14, 3000, 18, 18),
(10, 2000, 19, 19), (25, 5500, 20, 20), (15, 3500, 21, 21), (18, 4000, 22, 22), (22, 2000, 23, 23),
(5, 1000, 24, 24), (30, 4500, 25, 25), (8, 1500, 26, 26), (12, 3000, 27, 27), (7, 2500, 28, 28), (35, 5000, 29, 29),
(10, 2000, 30, 30), (40, 4000, 31, 31), (20, 3500, 32, 32), (15, 2500, 33, 33), (18, 1500, 34, 34), (28, 5500, 35, 35),
(12, 2000, 36, 36), (25, 4500, 37, 37), (30, 5000, 38, 38), (35, 3000, 39, 39), (40, 4000, 40, 40);

-- Tabla Articulos
INSERT INTO Articulos (descripcion, precio, existencia, claveDepartamento, claveVendedor, claveProveedor, claveVenta) VALUES
('Tenis', 220.00, 10, 1, 1, 1, 1), ('Auriculares Apple', 1080.99, 50, 2, 2, 2, 2), ('Nintendo Switch', 7000.99, 7, 3, 3, 3, 3),   
('Audífonos Sony', 200.00, 30, 4, 4, 4, 4), ('Pelota de fútbol', 100.00, 70, 5, 5, 5, 5), ('Televisión', 5400.98, 10, 6, 6, 6, 6),   
('Teclado', 4200.00, 15, 7, 7, 7, 7), ('Guitarra Eléctrica', 3000.00, 10, 8, 8, 8, 8), ('Reloj', 550.00, 40, 9, 9, 9, 9), 
('Laptop', 8500.94, 8, 10, 10, 10, 10), ('Celular', 3000.00, 25, 11, 11, 11, 11), ('Camisa', 100.00, 30, 12, 12, 12, 12), 
('Tablet', 2500.00, 19, 13, 13, 13, 13), ('Teléfono', 5030.00, 20, 14, 14, 14, 14), ('Guitarra Eléctrica', 3040.00, 10, 15, 15, 15, 15),
('Lego Star Wars', 18999.00, 20, 16, 16, 16, 16), ('Hot Wheels Pista', 1499.00, 50, 17, 17, 17, 17), ('Nintendo Switch OLED', 7999.00, 30, 18, 18, 18, 18),
('Playmobil Castillo Medieval', 3499.00, 25, 19, 19, 19, 19), ('Coca-Cola', 30.00, 200, 20, 20, 20, 20), ('Pepsi', 18.00, 150, 21, 21, 21, 21),
('Nestlé', 25.00, 80, 22, 22, 22, 22), ('L’Oréal Shampoo', 95.00, 60, 23, 23, 23, 23), ('Colgate', 60.00, 100, 24, 24, 24, 24),
('Alimento para gato', 180.00, 50, 25, 25, 25, 25), ('Croquetas para perro', 350.00, 40, 26, 26, 26, 26), ('HP Laptop', 12500.00, 15, 27, 27, 27, 27),
('Bocina', 4500.00, 30, 28, 28, 28, 28),('Canon Cámara', 10500.00, 12, 29, 29, 29, 29), ('GoPro', 11500.00, 20, 30, 30, 30, 30),
('Samsung Monitor”', 6999.00, 18, 31, 31, 31, 31), ('Teclado', 2800.00, 35, 32, 32, 32, 32), ('Xiaomi', 5500.00, 25, 33, 33, 33, 33),
('Reloj', 8000.00, 10, 34, 34, 34, 34), ('Impresora', 4999.00, 22, 35, 35, 35, 35), ('Audífonos', 2500.00, 40, 36, 36, 36, 36),
('Smartwatch', 7800.00, 15, 37, 37, 37, 37), ('Tarjeta Madre', 4100.00, 20, 38, 38, 38, 38), ('Tarjeta Gráfica', 9200.00, 10, 39, 39, 39, 39),
('Laptop', 39999.00, 8, 40, 40, 40, 40);

-- Tabla Proveedor_Articulo
INSERT INTO Proveedor_Articulo (claveProveedor, claveArticulo) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11),  (13, 13), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24),  (26, 26), (27, 27),  (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40);

-- Tabla Marca_Articulo
INSERT INTO Marca_Articulo (claveMarca, claveArticulo) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11),  (13, 13), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24),  (26, 26), (27, 27),  (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40);