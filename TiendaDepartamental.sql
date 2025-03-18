-- Tabla Departamento
INSERT INTO Departamento (Nombre) VALUES
('Tecnologia'),
('Ropa'),
('Comida'),
('Hogar'),
('Juguetes'),
('Deportes'),
('Tecnología'),
('Cocina'),
('Deportes'),
('Juguetes'),
('Ropa'),
('Mobiliario'),
('Música'),
('Jardinería'),
('Mobiliario');

-- Tabla Cliente
insert into cliente (Nombre, Direccion, Edad) VALUES
('Juan Perez', 'Calle 89', 30),
('Cesar Sanchez', 'Calle 56', 23),
('Sofia Martitez', 'Calle 67', 28),
('Juan Perez', 'Calle 67', 30),
('Giovanni Santoyo', 'Calle 877', 48),
('Jenifer Franco', 'Calle 56', 45),
('Rocio Pilar', 'Calle 56', 23),
('Marcela Lopez', 'Calle 76', 42),
('Ana Rodriguez', 'Calle 234', 19),
('Jose Molina', 'Calle 843', 50),
('Ivan Campos', 'Calle 96', 34),
('Jesus Duran', 'Calle 56', 31),
('Bruno Orea', 'Calle 27', 30),
('Dalia González', 'Calle 94', 26),
('Pablo Franco', 'Calle 239', 44);

-- Tabla Vendedor
INSERT INTO Vendedor (Nombre) VALUES
('Ivan Ramos'),
('Rodrigo Martin'),
('Carlos Garcia'),
('Yazmin Saragoza'),
('Luna Rodriguez'),
('Luis Gómez'),
('Ricardo Lopez'),
('Fernando Garcia'),
('Marta Sánchez'),
('Teresa Gutierrez'),
('Alan Alvarez'),
('Laura Fernández'),
('Carlos Gonzalez'),
('Ricardo Lopez'),
('Marcela González');

-- Tabla Marca
INSERT INTO Marca (Nombre) VALUES
('Nike'),
('Apple'),
('Nintendo'),
('Sony'),
('Adidas'),
('LG'),
('Casio'),
('Fender'),
('Casio'),
('HP'),
('Motorola'),
('Puma'),
('Samsung'),
('ZTE'),
('Fender');

-- Tabla Proveedor
INSERT INTO Proveedor (Nombre, claveDepartamento) VALUES
('Marta Marques', 1),
('Camila Torrez', 2),
('Eustaquio Gonzalez', 3),
('Maria Saldoval', 4),
('Filomeno Herrera', 5),
('Ulises Martinez', 6),
('Marcela González', 7),
('Jesus Alvarado', 8),
('Juan Zappa', 9),
('Rafael Martinez', 10),
('William Torres', 11),
('Maria Sandoval', 12),
('Lucero Alcala', 13),
('Eustaquio Gonzalez', 14),
('Beatriz Sanchez', 15);

-- Tabla Ventas
INSERT INTO Ventas (numArticulos, ganancias, claveCliente, claveVendedor) VALUES
(20, 5000, 1, 1),
(3, 1500, 2, 2),
(4, 2000, 3, 3),
(2, 1000, 4, 4),
(5, 500, 5, 5),
(7, 3000, 6, 6),
(9, 1500, 7, 7),
(22, 2500, 8, 8),
(3, 3500, 9, 9),
(8, 4000, 10, 10),
(12, 2000, 11, 11),
(11, 3000, 12, 12),
(20, 1500, 13, 13),
(5, 2500, 14, 14),
(2, 1000, 15, 15);

-- Tabla Articulos
INSERT INTO Articulos (descripcion, precio, existencia, claveDepartamento, claveVendedor, claveProveedor, claveVenta) VALUES
('Tenis', 220.00, 10, 1, 1, 1, 1),   
('Auriculares Apple', 1080.99, 50, 2, 2, 2, 2),   
('Nintendo Switch', 7000.99, 7, 3, 3, 3, 3),   
('Audífonos Sony', 200.00, 30, 4, 4, 4, 4),   
('Pelota de fútbol', 100.00, 70, 5, 5, 5, 5),   
('Televisión', 5400.98, 10, 6, 6, 6, 6),   
('Teclado', 4200.00, 15, 7, 7, 7, 7),   
('Guitarra Eléctrica', 3000.00, 10, 8, 8, 8, 8),   
('Reloj', 550.00, 40, 9, 9, 9, 9),   
('Laptop', 8500.94, 8, 10, 10, 10, 10),   
('Celular', 3000.00, 25, 11, 11, 11, 11),   
('Camisa', 100.00, 30, 12, 12, 12, 12),   
('Tablet', 2500.00, 19, 13, 13, 13, 13),   
('Teléfono', 5030.00, 20, 14, 14, 14, 14),   
('Guitarra Eléctrica', 3040.00, 10, 15, 15, 15, 15);     

-- Tabla Proveedor_Articulo
INSERT INTO Proveedor_Articulo (claveProveedor, claveArticulo) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Tabla Marca_Articulo
INSERT INTO Marca_Articulo (claveMarca, claveArticulo) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);
