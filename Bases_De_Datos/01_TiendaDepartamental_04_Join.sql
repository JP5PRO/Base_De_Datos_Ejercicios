-- Consultas
-- INNER JOIN
SELECT v.claveVendedor, v.Nombre, a.claveArticulo, a.descripcion, a.precio
FROM vendedor v 
INNER JOIN articulos a ON v.claveVendedor=a.claveVendedor;

SELECT c.Nombre, c.claveCliente, c.Direccion, v.numArticulos, v.claveVenta
FROM cliente c
INNER JOIN ventas v ON c.claveCliente = v.claveCliente;

-- RIGHT JOIN
SELECT d.claveDepartamento, d.Nombre, p.claveProveedor, p.Nombre
FROM departamento d
RIGHT JOIN proveedor p ON d.claveDepartamento = p.claveDepartamento;

SELECT v.Nombre, v.claveVendedor, ve.numArticulos, ve.ganancias, ve.claveVenta
FROM vendedor v
RIGHT JOIN ventas ve ON v.claveVendedor = ve.claveVendedor;

-- LEFT JOIN
SELECT p.claveProveedor, p.Nombre, p.claveDepartamento, a.claveArticulo, a.descripcion
FROM proveedor p
LEFT JOIN articulos a ON p.claveProveedor = a.claveProveedor;

SELECT v.claveVenta, v.numArticulos, v.ganancias, a.ckaveArticulo, a.descripcion
FROM ventas v
LEFT JOIN articulos a ON v.claveVenta = a.claveVenta;
