Drop Database Videojuegos;
Create Database Videojuegos;
Use Videojuegos;
-- Tabla Jugadores
Create Table Jugadores(
idJugador int primary key auto_increment,
Nombre VARCHAR(50) not null,
Habilidad VARCHAR(50) not null,
Descripcion text not null
);
-- Tabla Mapas
Create Table Mapas(
idMapa int primary key auto_increment,
Nombre VARCHAR(50) not null,
numNiveles int(20) not null,
Coleccionables int(50) not null
);
-- Tabla Usuario
Create Table Usuario(
idUsuario int primary key auto_increment,
Nombre VARCHAR(50),
Edad int(20) not null,
Contraseña VARCHAR(10) not null,
nivelesCompletados int(100) null,
Correo VARCHAR(20) not null,
idJugador int not null,
foreign key (idJugador) references Jugadores(idJugador)
);
-- Tabla Nivel
Create Table Nivel(
idNivel int primary key auto_increment,
idMapa int not null,
foreign key (idMapa) references Mapas(idMapa),
Nombre VARCHAR(50) not null,
Duracion VARCHAR(10) not null,
Coleccionables int (30) not null
);
-- Tabla Nivel_Usuario
Create Table Nivel_Usuario(
idNivel int not null,
foreign key (idNivel) references Nivel(idNivel),
idUsuario int not null,
foreign key (idUsuario) references Usuario(idUsuario)
);
-- Tabla Puntos
Create Table Puntos(
idPuntos int primary key auto_increment
);
-- Tabla Usuario_Puntos
Create Table Usuario_Puntos(
idUsuario int not null,
foreign key (idUsuario) references Usuario(idUsuario),
idPuntos int not null,
foreign key (idPuntos) references Puntos(idPuntos)
);

-- DB Videojuegos
-- Tabla Jugadores
INSERT INTO Jugadores (Nombre, Habilidad, Descripcion) VALUES
('Luis', 'Volar', 'Logra volar'),('Alex', 'Sigilo', 'Se oculta'),('Mario', 'Fuerza', 'Gran fuerza'),
('Luigi', 'Salto', 'Super salto'),('Maria', 'Resistencia', 'Buena resistencia'),('Axel', 'Escudo', 'Proteccion'),
('Juan', 'Explocion', 'Bombas'),('Pablo', 'Inteligencia', 'Estrategias'),('Sonic', 'Velocidad', 'Super velocidad'),
('Toad', 'Agilidad', 'Escape'),('Rayman', 'Agilidad', 'Movimientos rapidos'),('Riu', 'Fuerza', 'Golpes'),
('Falcon', 'Rapidez', 'Puede manejar a gran rapidez'),('Mario', 'Fuerza', 'Gran fuerza'),('Dave', 'Teletransportacion', 'Usa portales'),
('Carlos', 'Invisibilidad', 'Se vuelve invisible'),('Elena', 'Curación', 'Puede regenerar su salud'),
('Victor', 'Escalada', 'Sube paredes con facilidad'),('Diana', 'Hipnosis', 'Controla la mente de otros'),
('Andrés', 'Electricidad', 'Genera descargas eléctricas'),('Samantha', 'Super salto', 'Salta grandes distancias'),
('Fernando', 'Invocación', 'Llama criaturas aliadas'),('Gabriel', 'Cambio de forma', 'Adopta distintas apariencias'),
('Raúl', 'Viento', 'Controla ráfagas de aire'),('Isabel', 'Camuflaje', 'Se mimetiza con el entorno'),
('Oscar', 'Telequinesis', 'Mueve objetos con la mente'),('Nadia', 'Duplicación', 'Crea clones de sí misma'),
('Erick', 'Explosiones', 'Genera explosiones'),('Tatiana', 'Resistencia extrema', 'Tolera daños sin problemas'),
('Bruno', 'Super velocidad', 'Se mueve a la velocidad del rayo'),('Sofía', 'Visión nocturna', 'Puede ver en la oscuridad'),
('Javier', 'Magnetismo', 'Controla objetos metálicos'),('Lucía', 'Tiempo', 'Puede ralentizar el tiempo'),
('Pedro', 'Regeneración', 'Se cura rápidamente'),('Hugo', 'Transformación', 'Cambia de tamaño a voluntad'),
('Silvia', 'Reflejos', 'Reacciona antes que los demás'),('Leonardo', 'Sigilo absoluto', 'No deja rastro ni sonido'),
('Camila', 'Canto hipnótico', 'Duerme a sus enemigos'),('Rodrigo', 'Rastreo', 'Puede seguir huellas imperceptibles'),
('Martina', 'Campo de fuerza', 'Genera escudos de energía');

-- Tabla Mapas
INSERT INTO Mapas (Nombre, numNiveles, Coleccionables) VALUES
('Pradera', 18, 30),('Jardin', 20, 34),('Cueva', 9, 20),('Cueva Nocturna', 18, 30),('Montaña', 15, 22),
('Helado', 22, 43),('La parte mas fria de la montaña', 13, 23),('Desierto', 22, 32),('Mares', 21, 25),('Cueva', 9, 20),  
('Volcan', 30, 30),('Lava', 8, 5),('Final', 10, 30),('Estrella', 8, 24),('Especial', 30, 90),('Templo', 12, 18),
('Ciudad antigua', 25, 40),('Pantano', 17, 26),('Selva', 20, 32),('Ruinas', 22, 38),('Islas flotantes', 19, 27),
('Fortaleza', 23, 35),('Catedral olvidada', 16, 28),('Bosque encantado', 21, 36),('Dimensión oculta', 14, 22), 
('Laberinto', 18, 29),('Mina abandonada', 15, 20),('Torre infinita', 30, 45),('Nebulosa', 9, 18),('Cripta', 13, 24),
('Cañón del trueno', 27, 39),('Castillo de sombras', 20, 30),('Abismo helado', 17, 23),('Santuario místico', 11, 19),
('Mar profundo', 24, 34),('Puente colgante', 10, 15),('Dimensión espejo', 26, 41),('Palacio de cristal', 22, 37),
('Valle de los susurros', 16, 25),('Mundo invertido', 30, 50);


-- Tabla Nivel
INSERT INTO Nivel (Nombre, Duracion, Coleccionables, idMapa) VALUES
('Ardillas volantes', '4min', 3, 1),('Flores amarillas', '8min', 6, 2),('Inicio de la cueva', '2min', 1, 3),
('Murcielagos', '5min', 2, 4),('Escalada', '3min', 3, 5),('Friolandia', '6min', 3, 6),('Hielos', '3min', 2, 7),
('Calor', '9min', 3, 8),('Barcos', '2min', 1, 9),('Lado mas oscuro de la cueva', '2min', 3, 10),
('Inicio del volcan ardiente', '5min', 4, 11),('Lugar mas caliente del volcal', '1min', 3, 12),('Finales', '6min', 2, 13),
('Finales de finales', '4min', 3, 14),('Finales de finales de finales', '3min', 1, 15),('Caminos ocultos', '7min', 4, 1),
('Bosque encantado', '5min', 3, 2),('Cristales azules', '6min', 5, 3),('Zona prohibida', '4min', 2, 4),
('Laderas resbalosas', '3min', 3, 5),('Niebla densa', '8min', 6, 6),('Río peligroso', '2min', 2, 7),('Pasadizo secreto', '4min', 3, 8),
('Tormenta eléctrica', '5min', 4, 9),('Magma ardiente', '6min', 5, 10),('Ruinas antiguas', '3min', 2, 11),
('Caminos de lava', '7min', 3, 12),('Picos helados', '4min', 3, 13),('Dimensión alterna', '6min', 4, 14),('Zona cero', '5min', 2, 15),
('Caverna oscura', '3min', 3, 1),('Palacio de hielo', '7min', 5, 2),('Torres gemelas', '6min', 4, 3),('Área desértica', '5min', 3, 4),
('La gran grieta', '4min', 2, 5),('Tormenta de arena', '8min', 6, 6),('Mina subterránea', '7min', 4, 7),('Santuario sagrado', '6min', 5, 8),
('Trampa mortal', '5min', 3, 9),('Barrera dimensional', '7min', 4, 10);

-- Tabla Usuario
INSERT INTO Usuario (Nombre, Edad, Contraseña, nivelesCompletados, Correo, idJugador) VALUES
('Juan Lopez', 18, 'Jplgood', 10, 'jp@gmail', 1),('Maria Martina', 22, 'mm283', 100, 'MM@gmail', 2),
('Rodrigo Marin', 14, 'ehdb', 14, 'RodrixRaton@gmail', 3),('Carolina Calvillo', 17, 'ei34', 70, 'CarCal@gmail', 4),
('Cristina Peralta', 16, 'jhe35', 40, 'Cprpro@gmail', 5),('Ivan Martines', 13, 'jdck65', 14, 'Ivam@gmail', 6),
('Rafael Sandoval', 12, 'lfng76', 46, 'Rafaelvistek@gmail', 7),('Mario Orea', 11, 'ue78', 74, 'kuee6@gmail', 8),
('Claudia Franco', 10, 'oer8♦0', 39, 'CCpro@gmail', 9),('Ana Esparza', 15, 'kjer984', 34, 'Anita@gmail', 10),
('Adriana Puentes', 13, '84djd', 38, 'Adpp@gmail', 11),('Mia Campos', 22, '39ndie', 28, 'MMC@gmail', 12),
('Teresa Gutierrez', 21, 'ber934', 89, 'Tere@gmail', 13),('Carlos Santana', 30, 'cls44', 200, 'CS@gmail', 14),
('Pablo Perez', 25, 'Pppp34', 48, 'PP@gmail', 15),('Fernando Ruiz', 19, 'fer2023', 20, 'fer@gmail.com', 16),
('Camila Herrera', 21, 'camila321', 50, 'camila@gmail.com', 17),('Diego Salinas', 15, 'diego777', 34, 'diegos@gmail.com', 18),
('Natalia Mendez', 18, 'nat21', 42, 'natm@gmail.com', 19),('Oscar Gutierrez', 22, 'oscar444', 60, 'oscar.g@gmail.com', 20),
('Elisa Rojas', 20, 'elisar12', 30, 'elisar@gmail.com', 21),('Victor Andrade', 16, 'vic444', 25, 'victor@gmail.com', 22),
('Gabriela Pérez', 14, 'gaby1990', 18, 'gaby@gmail.com', 23),('Andres Castro', 25, 'andresx', 100, 'andres@gmail.com', 24),
('Lucia Sánchez', 17, 'lucias11', 37, 'lucia@gmail.com', 25),('Bruno Jiménez', 19, 'bruno987', 90, 'bruno@gmail.com', 26),
('Valeria López', 16, 'valeria333', 44, 'valeria@gmail.com', 27),('Sebastian Flores', 23, 'sebas42', 200, 'sebas@gmail.com', 28),
('Emilia Vega', 24, 'emi44', 78, 'emi@gmail.com', 29),('Hugo Mendoza', 21, 'hugo001', 59, 'hugo@gmail.com', 30),
('Mariana Robles', 15, 'marianax', 23, 'mariana@gmail.com', 31),('Raul Espinoza', 18, 'raul321', 88, 'raul@gmail.com', 32),
('Isabella Fuentes', 20, 'isabella222', 66, 'isabella@gmail.com', 33),('Eduardo Rivera', 19, 'edu98', 92, 'edu@gmail.com', 34),
('Samantha Díaz', 22, 'sammy123', 120, 'samantha@gmail.com', 35),('Ricardo Torres', 17, 'ricky777', 54, 'ricardo@gmail.com', 36),
('Diana Vargas', 14, 'diana55', 15, 'diana@gmail.com', 37),('Alejandro Silva', 25, 'alex23', 150, 'alex@gmail.com', 38),
('Patricia Reyes', 21, 'paty888', 82, 'patricia@gmail.com', 39),('Mateo Ortiz', 16, 'mateo333', 41, 'mateo@gmail.com', 40);

-- Tablas Puntos
INSERT INTO Puntos (idPuntos) VALUES
(5004), (6044), (708), (7533), (803), (890), (870), (9067), (938), (333), (1056), (1105), (856), (239), 
(293),(1012), (2045), (3567), (4870), (5698), (6023), (6789), (7456), (8120), (9054), (9781), (10333), 
(11245), (12456), (13579), (14500), (15678), (16789), (17890), (18901), (19456), (20345), (21456), 
(22567), (23678);

-- Tabla Usuario_Puntos
INSERT INTO Usuario_Puntos (idUsuario, idPuntos) VALUES
(1, 5004), (2, 6044), (3, 708), (4, 7533), (5, 803), (6, 890), (7, 870), (8, 9067), (9, 938), (10, 333), (11, 1056), 
(12, 1105), (13, 856), (14, 239), (15, 293),(16, 1012), (17, 2045), (18, 3567), (19, 4870), (20, 5698), (21, 6023), 
(22, 6789), (23, 7456), (24, 8120), (25, 9054), (26, 9781), (27, 10333), (28, 11245), (29, 12456), (30, 13579), 
(31, 14500), (32, 15678), (33, 16789), (34, 17890), (35, 18901), (36, 19456), (37, 20345), (38, 21456), (39, 22567), 
(40, 23678);

-- Tabla Nivel_Usuario
INSERT INTO Nivel_Usuario (idNivel, idUsuario) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11),  (13, 13), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24),  (26, 26), (27, 27),  (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40);

-- Consultas
-- Distinct
SELECT DISTINCT Coleccionables FROM nivel;

SELECT DISTINCT Edad FROM usuario LIMIT 4;

SELECT DISTINCT Habilidad FROM jugadores ORDER BY Nombre asc;

-- Limit
SELECT * FROM puntos LIMIT 8;

SELECT idMapa, numNiveles, Nombre FROM mapas LIMIT 11;

SELECT * FROM jugadores LIMIT 27;

-- Order by
SELECT Nombre, Edad, Contraseña FROM usuario ORDER BY Edad asc LIMIT 7;

SELECT * FROM puntos ORDER BY idPuntos desc;

SELECT idNivel, Duracion, Coleccionables FROM nivel ORDER BY Duracion desc LIMIT 20;

-- Operadores de comparación(3, los que sean)
SELECT * FROM nivel WHERE coleccionables = 3;

SELECT * FROM usuario WHERE Edad > 20;

SELECT Nombre, idMapa, numNiveles FROM mapas WHERE numNiveles < 20;

-- LIKE
SELECT * FROM usuario WHERE Nombre LIKE "R%" LIMIT 6;

SELECT idMapa, Nombre FROM mapas WHERE Nombre LIKE "%F%";

SELECT * FROM jugadores WHERE Descripcion LIKE"%A";

-- BETWEEN
SELECT idMapa, Nombre, numNiveles FROM mapas WHERE numNiveles BETWEEN 20 AND 25;

SELECT idNivel, Nombre, Coleccionables FROM nivel WHERE Coleccionables > 3;

SELECT * FROM puntos WHERE idPuntos BETWEEN 100 AND 300;

-- AND 
SELECT * FROM nivel WHERE idMapa > 10 AND Coleccionables < 2;

SELECT * FROM jugadores WHERE Habilidad LIKE"%R%" AND Descripcion LIKE"%A%";

SELECT * FROM usuario WHERE Nombre LIKE"%T%" AND Edad > 30;

-- OR
SELECT * FROM puntos WHERE idPuntos BETWEEN 100 AND 300 OR idPuntos BETWEEN 6500 AND 7000;

SELECT idMapa, idNivel FROM nivel WHERE Nombre LIKE "%S%" OR Coleccionables BETWEEN 2 AND 3;

SELECT * FROM jugadores WHERE Habilidad LIKE "A%" OR idJugador < 32;

-- NOT
SELECT idNivel FROM nivel_usuario WHERE NOT idUsuario BETWEEN 11 AND 40;

SELECT * FROM usuario WHERE NOT Nombre LIKE "%R%";

SELECT idMapa, Nombre FROM mapas WHERE NOT Coleccionables IN(1,2,3) LIMIT 5;

-- IN
SELECT * FROM mapas WHERE numNiveles IN(30, 32, 33, 40);

SELECT * FROM nivel WHERE Coleccionables IN(1, 2, 3, 5);

SELECT * FROM usuario WHERE Edad IN(20, 25);

-- Operaciones matemáticas(las que sean, 3)
SELECT idUsuario, Nombre, nivelesCompletados + 2 AS nivelesCompletados_Act FROM usuario;

SELECT idPuntos+ 400 AS Puntos_Act FROM puntos;

SELECT idMapa, Nombre, Coleccionables + 3 AS New_act FROM mapas WHERE idMapa = 3;

-- MIN
SELECT MIN(Edad) FROM Usuario;  

SELECT MIN(numNiveles) FROM Mapas;  

SELECT MIN(Coleccionables) FROM Nivel;  

-- MAX
SELECT MAX(nivelesCompletados) FROM Usuario;  

SELECT MAX(Coleccionables) FROM Mapas;  

SELECT MAX(idJugador) FROM Jugadores;  

-- COUNT
SELECT COUNT(Nombre) FROM Usuario;  

SELECT COUNT(Habilidad) FROM Jugadores; 
 
SELECT COUNT(idMapa) FROM Nivel;  

-- SUM
SELECT SUM(nivelesCompletados) FROM Usuario; 
 
SELECT SUM(numNiveles) FROM Mapas;  

SELECT SUM(Coleccionables) FROM Nivel;  

-- AVG
SELECT AVG(Edad) FROM Usuario;  

SELECT AVG(numNiveles) FROM Mapas;  

SELECT AVG(Coleccionables) FROM Nivel;  

-- CONCAT
SELECT CONCAT(Nombre, " - ", Habilidad) FROM Jugadores;  

SELECT CONCAT(Nombre, " tiene ", numNiveles, " niveles") FROM Mapas;
  
SELECT CONCAT(Nombre, " dura ", Duracion) FROM Nivel;  

-- UPPER
SELECT UPPER(Nombre) FROM Usuario;  

SELECT UPPER(Habilidad) FROM Jugadores;  

SELECT UPPER(Nombre) FROM Mapas;  

-- LOWER
SELECT LOWER(Descripcion) FROM Jugadores;  

SELECT LOWER(Nombre) FROM Nivel;  

SELECT LOWER(Correo) FROM Usuario;  

-- OFFSET
SELECT * FROM jugadores ORDER BY Habilidad LIMIT 3 OFFSET 37;

SELECT * FROM usuario ORDER BY nivelesCompletados LIMIT 35 OFFSET 5;

SELECT idMapa, Nombre FROM mapas ORDER BY Nombre LIMIT 4 OFFSET 22;

-- GROUP BY
SELECT Nombre, idUsuario, SUM(nivelesCompletados) AS Suma_nivCom FROM usuario GROUP BY idUsuario LIMIT 5;

SELECT idMapa, AVG(numNiveles) AS Prom_niv FROM mapas GROUP BY idMapa;

SELECT idUsuario, AVG(Edad) AS Promedio_edades FROM usuario GROUP BY idUsuario;

-- HAVING
SELECT idNivel, SUM(Coleccionables) AS Sum_col FROM nivel GROUP BY idNivel
HAVING SUM(Coleccionables) > 3;

SELECT idUsuario, AVG(nivelesCompletados) FROM usuario GROUP BY idUsuario
HAVING AVG(nivelesCompletados) > 50;

SELECT COUNT(idPuntos) AS Conteo_Puntos FROM puntos GROUP BY idPuntos
HAVING COUNT(idPuntos) BETWEEN 3000 AND 5000;

-- CASE
SELECT *,
CASE
	WHEN Coleccionables < 30 THEN "Pocos"
    WHEN Coleccionables BETWEEN 30 AND 40 THEN "Normales"
    ELSE "Muchos"
END AS Clasif_Coleccionables FROM nivel;

SELECT *,
CASE
	WHEN idPuntos < 1000 THEN "Pocos"
    WHEN idPuntos BETWEEN 1000 AND 2000 THEN "Regulares"
    ELSE "Muchos"
END AS Clasif_puntos FROM puntos;

SELECT *,
CASE
	WHEN Edad < 18 THEN "Menor"
    WHEN Edad BETWEEN 18 AND 60 THEN "Adulto"
    ELSE "Mayor"
END AS Clasif_edades FROM usuario;

-- IFNULL
SELECT idJugador, IFNULL(habilidad, "No tiene") FROM jugadores;

SELECT idPuntos, IFNULL(idPuntos, 0) FROM puntos;

SELECT idMapa, IFNULL(Coleccionables, "Inexistentes") FROM mapas;