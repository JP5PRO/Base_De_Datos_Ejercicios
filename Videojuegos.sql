-- Tabla Jugadores
INSERT INTO Jugadores (Nombre, Habilidad, Descripcion) VALUES
('Luis', 'Volar', 'Logra volar'),
('Alex', 'Sigilo', 'Se oculta'),
('Mario', 'Fuerza', 'Gran fuerza'),
('Luigi', 'Salto', 'Super salto'),
('Maria', 'Resistencia', 'Buena resistencia'),
('Axel', 'Escudo', 'Proteccion'),
('Juan', 'Explocion', 'Bombas'),
('Pablo', 'Inteligencia', 'Estrategias'),
('Sonic', 'Velocidad', 'Super velocidad'),
('Toad', 'Agilidad', 'Escape'),
('Rayman', 'Agilidad', 'Movimientos rapidos'),
('Riu', 'Fuerza', 'Golpes'),
('Falcon', 'Rapidez', 'Puede manejar a gran rapidez'),
('Mario', 'Fuerza', 'Gran fuerza'),
('Dave', 'Teletransportacion', 'Usa portales');

-- Tabla Mapas
INSERT INTO Mapas (Nombre, numNiveles, Coleccionables) VALUES
('Pradera', 18, 30),
('Jardin', 20, 34),
('Cueva', 9, 20),
('Cueva Nocturna', 18, 30),
('Montaña', 15, 22),
('Helado', 22, 43),
('La parte mas fria de la montaña', 13, 23),
('Desierto', 22, 32),
('Mares', 21, 25),
('Cueva', 9, 20),  -- Parte 2
('Volcan', 30, 30),
('Lava', 8, 5),
('Final', 10, 30),
('Estrella', 8, 24),
('Especial', 30, 90);

-- Tabla Nivel
INSERT INTO Nivel (Nombre, Duracion, Coleccionables, idMapa) VALUES
('Ardillas volantes', '4min', 3, 1),
('Flores amarillas', '8min', 6, 2),
('Inicio de la cueva', '2min', 1, 3),
('Murcielagos', '5min', 2, 4),
('Escalada', '3min', 3, 5),
('Friolandia', '6min', 3, 6),
('Hielos', '3min', 2, 7),
('Calor', '9min', 3, 8),
('Barcos', '2min', 1, 9),
('Lado mas oscuro de la cueva', '2min', 3, 10),
('Inicio del volcan ardiente', '5min', 4, 11),
('Lugar mas caliente del volcal', '1min', 3, 12),
('Finales', '6min', 2, 13),
('Finales de finales', '4min', 3, 14),
('Finales de finales de finales', '3min', 1, 15);

-- Tabla Usuario
INSERT INTO Usuario (Nombre, Edad, Contraseña, nivelesCompletados, Correo, idJugador) VALUES
('Juan Lopez', 18, 'Jplgood', 10, 'jp@gmail', 1),
('Maria Martina', 22, 'mm283', 100, 'MM@gmail', 2),
('Rodrigo Marin', 14, 'ehdb', 14, 'RodrixRaton@gmail', 3),
('Carolina Calvillo', 17, 'ei34', 70, 'CarCal@gmail', 4),
('Cristina Peralta', 16, 'jhe35', 40, 'Cprpro@gmail', 5),
('Ivan Martines', 13, 'jdck65', 14, 'Ivam@gmail', 6),
('Rafael Sandoval', 12, 'lfng76', 46, 'Rafaelvistek@gmail', 7),
('Mario Orea', 11, 'ue78', 74, 'kuee6@gmail', 8),
('Claudia Franco', 10, 'oer8♦0', 39, 'CCpro@gmail', 9),
('Ana Esparza', 15, 'kjer984', 34, 'Anita@gmail', 10),
('Adriana Puentes', 13, '84djd', 38, 'Adpp@gmail', 11),
('Mia Campos', 22, '39ndie', 28, 'MMC@gmail', 12),
('Teresa Gutierrez', 21, 'ber934', 89, 'Tere@gmail', 13),
('Carlos Santana', 30, 'cls44', 200, 'CS@gmail', 14),
('Pablo Perez', 25, 'Pppp34', 48, 'PP@gmail', 15);

-- Tablas Puntos
INSERT INTO Puntos (idPuntos) VALUES
(5004), 
(6044), 
(708), 
(7533), 
(803), 
(890), 
(870), 
(9067), 
(938), 
(333), 
(1056), 
(1105), 
(856), 
(239), 
(293);

-- Tabla Usuario_Puntos
INSERT INTO Usuario_Puntos (idUsuario, idPuntos) VALUES
(1, 5004), 
(2, 6044), 
(3, 708), 
(4, 7533), 
(5, 803), 
(6, 890), 
(7, 870), 
(8, 9067), 
(9, 938), 
(10, 333), 
(11, 1056), 
(12, 1105), 
(13, 856), 
(14, 239), 
(15, 293);

-- Tabla Nivel_Usuario
INSERT INTO Nivel_Usuario (idNivel, idUsuario) VALUES
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
