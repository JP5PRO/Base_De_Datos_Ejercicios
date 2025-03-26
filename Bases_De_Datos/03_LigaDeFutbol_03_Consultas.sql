Drop database LigaDeportiva;
Create DataBase LigaDeportiva;
USE LigaDeportiva;
-- Tabla Equipo
Create Table Equipo(
idEquipo int primary key auto_increment,
Nombre VARCHAR(100) not null,
numIntegrantes int(50) not null,
Ganadas int(20) null,
Perdidas int(20) null,
Empates int(20) null,
Puntos int(250) null
);
-- Tabla Arbitro
Create Table Arbitro(
idArbitro int primary key auto_increment,
Nombre VARCHAR(50) not null,
Edad INT(30) not null,
partidosJugados int(100) not null
);
-- Tabla Categoria
Create Table Categoria(
idCategoria int primary key auto_increment,
Nombre VARCHAR(50) not null,
Premio text null,
idEquipo int not null,
foreign key (idEquipo) references Equipo(idEquipo)
);
-- Tabla Clasificacion
Create Table Clasificacion(
idEquipo int not null,
foreign key (idEquipo) references Equipo(idEquipo),
Ganadas int(20) null,
Perdidas int(20) null,
Empates int(20) null,
Puntos int(250) null
);
-- Tabla Jugador
Create Table Jugador(
idJugador int primary key auto_increment,
Nombre VARCHAR(50) not null,
idEquipo int not null,
foreign key (idEquipo) references Equipo(idEquipo),
Edad INT(20) not null,
Rol text not null
);
-- Tabla Partido
Create Table Partido(
idPartido int primary key auto_increment,
idEquipoGanador int not null,
foreign key (idEquipoGanador) references Equipo(idEquipo),
idEquipoPerdedor int not null,
foreign key (idEquipoPerdedor) references Equipo(idEquipo),
Fecha date not null,
idArbitro int not null,
foreign key (idArbitro) references Arbitro(idArbitro)
);

-- DB Liga de Futbol
-- Tabla Equipo
INSERT INTO Equipo (Nombre, numIntegrantes, Ganadas, Perdidas, Empates, Puntos) VALUES
('Tigres', 12, 11, 2, 3, 33), ('Águilas', 11, 8, 5, 2, 26), ('Pumas', 12, 7, 6, 3, 24), ('Chivas', 11, 9, 4, 3, 30),
('Atlas', 13, 10, 3, 3, 33),('Madrid', 12, 8, 6, 2, 26),('Barcelona', 11, 7, 6, 3, 24),('Liverpool', 12, 6, 7, 3, 21),
('Tlaxcala', 11, 5, 8, 3, 18),('Necaxa', 12, 6, 7, 3, 21),('Tigres', 12, 11, 2, 3, 33),('Panteras', 13, 9, 4, 3, 30),
('America', 11, 5, 8, 3, 18),('Cruz Azul', 12, 8, 4, 4, 28),('Zorros', 12, 8, 3, 4, 27),('Real Madrid', 12, 10, 5, 2, 32),
('Juventus', 11, 9, 4, 3, 30),('Chelsea', 13, 8, 6, 2, 28),('Boca Juniors', 11, 7, 5, 4, 25),('River Plate', 12, 6, 7, 3, 21),
('Manchester City', 12, 11, 3, 2, 35),('PSG', 11, 9, 5, 2, 29),('Arsenal', 12, 8, 6, 3, 27),('Inter Milan', 13, 9, 4, 2, 29),
('AC Milan', 12, 7, 6, 3, 24),('Sevilla', 11, 6, 7, 4, 22),('Atletico Madrid', 12, 10, 4, 2, 32),('Monterrey', 11, 7, 6, 3, 24),
('Cruz Azul', 12, 8, 5, 3, 27),('Chivas', 11, 9, 4, 3, 30),('Flamengo', 12, 8, 4, 4, 28),('Santos', 13, 10, 2, 5, 32),
('Tijuana', 12, 7, 6, 4, 25),('Pachuca', 11, 6, 7, 3, 21),('Toluca', 12, 8, 5, 4, 28),('Villarreal', 13, 8, 5, 4, 27),
('Fiorentina', 12, 7, 6, 3, 24),('León', 11, 9, 4, 3, 30),('Atlético San Luis', 12, 6, 7, 3, 21),('Cincinnati', 13, 9, 4, 2, 29);

-- Tabla Arbitro
INSERT INTO Arbitro ( Nombre, Edad, partidosJugados) VALUES
('Pedro', 40, 50), ('Raúl', 42, 45),('Daniel', 45, 60),('Martín', 37, 52),('Esteban', 39, 57),('Adrián', 41, 50),
('Hugo', 43, 51),('Gabriel', 40, 49),('César', 46, 58),('Óscar', 44, 59),('Ramiro', 41, 55),('Enrique', 43, 54),
('Andrés', 41, 54),('Sergio', 42, 50),('Eduardo', 40, 50),('Juan', 44, 55),('Luis', 40, 53),('Felipe', 42, 50),
('Carlos', 45, 60),('Fernando', 43, 52),('Javier', 41, 51),('Martín', 38, 48),('Ricardo', 44, 57),('Luis Ángel', 46, 59),
('José', 40, 54),('Manuel', 41, 50),('Tomás', 42, 53),('Roberto', 43, 51),('Antonio', 44, 58),('Raúl Alberto', 41, 55),
('Víctor', 40, 52),('Alberto', 44, 59),('Héctor', 42, 50),('Ricardo Ángel', 45, 57),('David', 43, 56),('Salvador', 42, 54),
('Luis Eduardo', 41, 50),('Eduardo Ángel', 43, 52),('Armando', 44, 55),('Oscar Iván', 42, 53),('Francisco', 40, 50);

-- Tabla Categoria
INSERT INTO Categoria ( Nombre, Premio, idEquipo) VALUES
('Juvenil', 'Trofeo', 1), ('Infantil', 'Medalla', 2), ('Femenil', 'Medalla', 3), ('Libre', 'Trofeo', 4),
('Senior', 'Trofeo', 5), ('Mixto', 'Medalla', 6), ('Sub-15', 'Trofeo', 7), ('Sub-17', 'Medalla', 8), ('Universitario', 'Trofeo', 9),
('Profesional', 'Medalla', 10), ('Juvenil', 'Trofeo', 11), ('Infantil', 'Medalla', 12), ('Libre', 'Trofeo', 13), ('Femenil', 'Medalla', 14),
('Senior', 'Trofeo', 15),('Mixto', 'Medalla', 16), ('Sub-15', 'Trofeo', 17),('Sub-17', 'Medalla', 18),
('Universitario', 'Trofeo', 19),('Profesional', 'Medalla', 20), ('Juvenil', 'Trofeo', 21),('Infantil', 'Medalla', 22),
('Libre', 'Trofeo', 23),('Femenil', 'Medalla', 24),('Senior', 'Trofeo', 25),('Mixto', 'Medalla', 26),('Sub-15', 'Trofeo', 27),
('Sub-17', 'Medalla', 28),('Universitario', 'Trofeo', 29),('Profesional', 'Medalla', 30),('Juvenil', 'Trofeo', 31),
('Infantil', 'Medalla', 32),('Libre', 'Trofeo', 33),('Femenil', 'Medalla', 34),('Senior', 'Trofeo', 35),('Mixto', 'Medalla', 36),
('Sub-15', 'Trofeo', 37),('Sub-17', 'Medalla', 38),('Universitario', 'Trofeo', 39),('Profesional', 'Medalla', 40);

-- Tabla Jugador
INSERT INTO Jugador ( Nombre, idEquipo, Edad, Rol) VALUES
('Juan', 1, 21, 'Delantero'),('Luis', 2, 23, 'Defensa'),('Carlos', 3, 19, 'Portero'),('Miguel', 4, 22, 'Mediocampista'),
('Jorge', 5, 20, 'Defensa'),('Diego', 6, 24, 'Delantero'),('Andrés', 7, 21, 'Mediocampista'),('Sergio', 8, 23, 'Defensa'),
('Roberto', 9, 25, 'Portero'),('Fernando', 10, 23, 'Defensa'),('Ernesto', 11, 24, 'Mediocampista'),('Samuel', 12, 21, 'Delantero'),
('David', 13, 24, 'Portero'),('Emiliano', 14, 22, 'Defensa'),('Hugo', 15, 23, 'Mediocampista'),('Ricardo', 16, 22, 'Delantero'),
('Pablo', 17, 24, 'Defensa'),('Manuel', 18, 19, 'Portero'),('Eduardo', 19, 23, 'Mediocampista'),('Francisco', 20, 21, 'Defensa'),
('Alejandro', 21, 25, 'Delantero'),('Gerardo', 22, 22, 'Mediocampista'),('Iván', 23, 20, 'Defensa'),('Gustavo', 24, 23, 'Portero'),
('Héctor', 25, 24, 'Defensa'),('Oscar', 26, 21, 'Mediocampista'),('Javier', 27, 22, 'Delantero'),('Ramón', 28, 23, 'Portero'),
('Raúl', 29, 20, 'Defensa'),('Felipe', 30, 25, 'Mediocampista'),('Ángel', 31, 22, 'Delantero'),('Cristian', 32, 19, 'Defensa'),
('Tomás', 33, 23, 'Portero'),('Sebastián', 34, 21, 'Mediocampista'),('Antonio', 35, 24, 'Defensa'),('Jonathan', 36, 22, 'Delantero'),
('Emmanuel', 37, 23, 'Portero'),('Adrián', 38, 20, 'Defensa'),('Mauricio', 39, 25, 'Mediocampista'),('Leonardo', 40, 22, 'Delantero');


-- Tabla Partido
INSERT INTO Partido (idEquipoGanador, idEquipoPerdedor, Fecha, idArbitro) VALUES
(1, 1, '2024-06-01', 1), (2, 2, '2024-11-05', 2),(3, 3, '2024-02-04', 3),(4, 4, '2024-02-02', 4),
(5, 5, '2024-08-22', 5),(6, 6, '2024-09-23', 6),(7, 7, '2024-05-13', 7),(8, 8, '2024-05-06', 8),
(9, 9, '2024-08-10', 9),(10, 10, '2024-04-30', 10),(11, 11, '2024-06-12', 11),(12, 12, '2024-08-22', 12),
(13, 13, '2024-03-27', 13),(14, 14, '2024-10-25', 14),(15, 15, '2024-11-16', 15),(16, 16, '2024-03-12', 16),
(17, 17, '2024-07-08', 17),(18, 18, '2024-01-23', 18),(19, 19, '2024-09-14', 19),(20, 20, '2024-12-05', 20),
(21, 21, '2024-06-17', 21),(22, 22, '2024-04-09', 22),(23, 23, '2024-10-02', 23),(24, 24, '2024-02-18', 24),
(25, 25, '2024-07-30', 25),(26, 26, '2024-08-21', 26),(27, 27, '2024-05-25', 27),(28, 28, '2024-11-13', 28),
(29, 29, '2024-09-09', 29),(30, 30, '2024-12-29', 30),(31, 31, '2024-01-15', 31),(32, 32, '2024-06-05', 32),
(33, 33, '2024-03-20', 33),(34, 34, '2024-05-28', 34),(35, 35, '2024-07-15', 35),(36, 36, '2024-10-10', 36),
(37, 37, '2024-08-14', 37),(38, 38, '2024-04-12', 38),(39, 39, '2024-11-02', 39),(40, 40, '2024-09-30', 40);

-- Tabla Clasificacion
INSERT INTO Clasificacion (idEquipo, Ganadas, Perdidas, Empates, Puntos) VALUES
(1, 10, 2, 3, 33), (2, 7, 6, 3, 24),(3, 8, 5, 2, 26),(4, 9, 4, 3, 30),(5, 10, 3, 3, 33),
(6, 8, 6, 2, 26),(7, 7, 6, 3, 24),(8, 6, 7, 3, 21),(9, 5, 8, 3, 18),(10, 6, 7, 3, 21),(11, 7, 6, 3, 24),
(12, 9, 4, 3, 30),(13, 5, 8, 3, 18),(14, 8, 4, 4, 28),(15, 8, 3, 4, 27),(16, 6, 5, 4, 22),(17, 9, 3, 3, 30),
(18, 7, 6, 2, 24),(19, 10, 3, 2, 32),(20, 5, 8, 3, 18),(21, 8, 4, 4, 28),(22, 6, 7, 3, 21),(23, 9, 5, 2, 29),
(24, 7, 6, 3, 24),(25, 10, 3, 2, 32),(26, 6, 8, 1, 19),(27, 5, 9, 1, 16),(28, 8, 6, 1, 25),
(29, 7, 5, 3, 24),(30, 9, 4, 2, 29),(31, 8, 5, 2, 26),(32, 6, 6, 3, 21),(33, 7, 7, 1, 22),(34, 5, 8, 2, 17),
(35, 9, 3, 3, 30),(36, 10, 2, 3, 33),(37, 6, 6, 3, 21),(38, 8, 4, 3, 27),(39, 7, 7, 1, 22),(40, 9, 5, 1, 28);

-- Consultas
-- Distinct
SELECT DISTINCT Nombre FROM jugador LIMIT 10;

SELECT DISTINCT Fecha FROM partido ORDER BY Fecha asc;

SELECT DISTINCT Edad FROM arbitro;

-- Limit
SELECT Nombre FROM jugador LIMIT 6;

SELECT * FROM partido LIMIT 4;

SELECT * FROM clasificacion LIMIT 17;

-- Order by
SELECT * FROM equipo ORDER BY Nombre asc;

SELECT idJugador, Nombre, idEquipo FROM jugador ORDER BY Nombre desc LIMIT 6;

SELECT * FROM categoria ORDER BY Premio desc;

-- Operadores de comparación(3, los que sean)
SELECT * FROM partido WHERE idArbitro = 1;

SELECT * FROM equipo WHERE idEquipo>10;

SELECT idEquipo, puntos FROM clasificacion WHERE puntos < 20;

-- LIKE
SELECT * FROM jugador WHERE Nombre LIKE "%T%";

SELECT * FROM equipo WHERE Nombre LIKE "C%";

SELECT idArbitro, Nombre FROM arbitro WHERE Nombre LIKE"%E";

-- BETWEEN
SELECT * FROM categoria WHERE idEquipo BETWEEN 5 AND 18;

SELECT * FROM jugador WHERE Edad BETWEEN 20 AND 30;

SELECT idEquipo, Nombre FROM equipo WHERE numIntegrantes BETWEEN 10 AND 20;

-- AND 
SELECT * FROM clasificacion WHERE Ganadas > 5 AND Perdidas < 3;

SELECT * FROM categoria WHERE Nombre LIKE"%A" AND idEquipo BETWEEN 5 AND 25;

SELECT * FROM jugador WHERE edad >= 20 AND rol IN("Delantero", "Defensa");

-- OR
SELECT * FROM equipo WHERE Nombre LIKE "%A%" OR Nombre LIKE "%T%";

SELECT * FROM jugador WHERE Nombre LIKE "E%" OR idEquipo BETWEEN 16 AND 20;

SELECT * FROM categoria WHERE Premio LIKE"%O%" OR idEquipo < 26;

-- NOT
SELECT * FROM equipo WHERE NOT Perdidas >= 5;

SELECT IdEquipo, Ganadas FROM clasificacion WHERE NOT Ganadas > 8;

SELECT * FROM jugador WHERE NOT Nombre LIKE "%A%";

-- IN
SELECT * FROM equipo WHERE numIntegrantes IN(10, 20, 15, 17);

SELECT * FROM clasificacion WHERE Ganadas IN(1, 3);

SELECT * FROM clasificacion WHERE Perdidas IN(10, 12);

-- Operaciones matemáticas(las que sean, 3)
SELECT idEquipo, numIntegrantes + 2 AS Nuevos FROM equipo WHERE idEquipo = 1;

SELECT idCategoria, Nombre, Premio + 1 AS Nuevo_Trofeo FROM categoria Where idCategoria = 3;

SELECT idArbitro, partidosJugados AS Actualizacion FROM arbitro;

--- MIN
SELECT MIN(Edad) FROM Arbitro;

SELECT MIN(numIntegrantes) FROM Equipo;

SELECT MIN(Ganadas) FROM Clasificacion;

-- MAX
SELECT MAX(Puntos) FROM Clasificacion;

SELECT MAX(Edad) FROM Jugador;

SELECT MAX(partidosJugados) FROM Arbitro;

-- COUNT
SELECT COUNT(Nombre) FROM Equipo;

SELECT COUNT(Nombre) FROM Jugador;

SELECT COUNT(idArbitro) FROM Arbitro;

-- SUM
SELECT SUM(Ganadas) FROM Clasificacion;

SELECT SUM(Puntos) FROM Clasificacion;

SELECT SUM(numIntegrantes) FROM Equipo;

-- AVG
SELECT AVG(Puntos) FROM clasificacion;

SELECT AVG(Edad) FROM jugador;

SELECT AVG(partidosJugados) FROM arbitro;

-- CONCAT
SELECT CONCAT(Nombre, ' / ', Edad) FROM arbitro;

SELECT CONCAT(Nombre, ' - ', Rol) FROM jugador;

SELECT CONCAT(Nombre, " --- ", puntos) FROM equipo;

-- UPPER
SELECT UPPER(Nombre) FROM equipo;

SELECT UPPER(Nombre) FROM jugador;

SELECT UPPER(Nombre) FROM arbitro;

-- LOWER
SELECT LOWER(Nombre) FROM equipo;

SELECT LOWER(Rol) FROM jugador;

SELECT LOWER(Nombre) FROM arbitro;

-- OFFSET
SELECT * FROM categoria ORDER BY idCategoria LIMIT 23 OFFSET 9;

SELECT idJugador, Nombre FROM jugador ORDER BY idJugador LIMIT 23 OFFSET 23;

SELECT * FROM partido ORDER BY fecha LIMIT 5 OFFSET 25;

-- GROUP BY
SELECT idEquipo, SUM(Ganadas) AS Suma_ganadas FROM equipo GROUP BY idEquipo;

SELECT idJugador, Nombre, AVG(Edad) AS Edad_promedio FROM jugador GROUP BY idJugador;

SELECT idEquipo, AVG(Perdidas) AS Promedio_perdidas FROM clasificacion GROUP BY idEquipo;

-- HAVING
SELECT idEquipo, Nombre, COUNT(numIntegrantes) AS Count_INtegrantes FROM equipo GROUP BY idEquipo
HAVING COUNT(numIntegrantes) < 10;

SELECT idJugador, AVG(Edad) AS Promedio_Edad FROM jugador GROUP BY idJugador
HAVING AVG(Edad)< 25;

SELECT idArbitro, SUM(partidosJugados) AS Promedio_partidos FROM arbitro GROUP BY idArbitro
HAVING SUM(partidosJugados) != 20;

-- CASE
SELECT idArbitro, Edad,
CASE
	WHEN Edad < 18 THEN "Menor de edad"
    WHEN Edad BETWEEN 18 AND 30 THEN "Joven"
    ELSE "Mayor de edad"
END AS Arbitros_edades FROM arbitro;

SELECT *,
CASE
	WHEN Ganadas < 3 THEN "Pocas ganadas"
    WHEN Ganadas BETWEEN 2 AND 8 THEN "Buenas ganadas"
    ELSE "Goat"
END AS ganadas_equipo FROM clasificacion;

SELECT *,
CASE
	WHEN Perdidas < 3 THEN "Pocas perdidas"
    WHEN Perdidas BETWEEN 3 AND 8 THEN "Varias perdidas"
    ELSE "Muchas perdidas"
END AS perdidas_equipo FROM equipo;

-- IFNULL
SELECT idJugador, IFNULL(rol, "No hay rol") FROM jugador;

SELECT idCategoria, IFNULL(Premio, 0) FROM categoria;

SELECT idPartido, IFNULL(Fecha, "No hay partido") FROM partido;