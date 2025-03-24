Create database TiendaDepartamental;
Use TiendaDepartamental;
-- Tabla Departamento
Create Table Departamento(
claveDepartamento INT primary key auto_increment,
Nombre VARCHAR(50) Not null
);
-- Tabla Cliente
Create Table Cliente(
claveCliente Int primary key auto_increment,
Nombre VARCHAR(50) not null,
Direccion VARCHAR(100) not null,
Edad Int(10) not null
);
-- Tabla Vendedor
Create table Vendedor(
claveVendedor Int primary key auto_increment,
Nombre VARCHAR(50) not null
);
-- Tabla Marca
Create table Marca(
claveMarca Int primary key auto_increment,
Nombre VARCHAR(50) not null
);
-- Tabla Proveedor
Create table Proveedor(
ClaveProveedor Int primary key auto_increment,
Nombre VARCHAR(50),
claveDepartamento int not null,
foreign key (claveDepartamento) references Departamento(claveDepartamento)
);
-- Tabla Ventas
Create table Ventas(
claveVenta Int primary key auto_increment,
numArticulos int(10) not null,
ganancias int(250) not null,
claveCliente int not null,
claveVendedor int not null,
foreign key (claveCliente) references Cliente(claveCliente),
foreign key (claveVendedor) references Vendedor(claveVendedor)
);
-- Tabla Articulos
Create table Articulos(
claveArticulo int primary key auto_increment,
descripcion text,
precio decimal (20,2) not null,
existencia int(30) not null,
claveDepartamento int not null,
claveVendedor int not null,
claveProveedor int not null,
claveVenta int not null,
foreign key (claveDepartamento) references Departamento(claveDepartamento),
foreign key (claveVendedor) references Vendedor(claveVendedor),
foreign key (claveProveedor) references Proveedor(claveProveedor),
foreign key (claveVenta) references Ventas(claveVenta)
);
-- Tabla Proveedor_Articulo
Create table Proveedor_Articulo(
claveProveedor int not null,
claveArticulo int not null,
foreign key (claveProveedor) references Proveedor(claveProveedor),
foreign key (claveArticulo) references Articulos(claveArticulo)
);
-- Tabla Marca_Articulo
Create table Marca_Articulo(
claveMarca int not null,
claveArticulo int not null,
foreign key (claveMarca) references Marca(claveMarca),
foreign key (claveArticulo) references Articulos(claveArticulo)
);
