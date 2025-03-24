-- DB Escuela
-- Tabla Grupo
INSERT INTO Grupo(Grado, numEstudiantes) VALUES
(1, 40), (1, 42), (1, 41), (2, 39), (2, 30), (2, 37), (3, 38), (3, 20), (4, 39), (5, 40),
(5, 40), (5, 47), (4, 45), (6, 38), (6, 35), (1, 39), (1, 41), (2, 36), (2, 33), (3, 40),
(3, 35), (4, 42), (4, 37), (5, 45), (5, 43), (6, 30), (6, 41), (1, 38), (2, 29), (3, 48),
(4, 31), (5, 50), (6, 34), (6, 36), (3, 39), (4, 43), (2, 32), (1, 37), (5, 47), (6, 42);

-- Tabla Materia
INSERT INTO materia(Nombre, Descripcion) VALUES
('Matematicas', 'Numeros y formulas'), ('Fisica', 'Formulas y operaciones'), ('Quimica', 'Formulas y reacciones'),
('Historia', 'Historia del mundo'), ('Geografia', 'Coordenadas del mundo'), ('Literatura', 'Escribir leer'),
('Arte', 'Arte y pintura'), ('Edu.Fisica', 'Activacion fisica'), ('Musica', 'Partituras instrumentos'),
('Biologia', 'Plantas y ecosistemas'), ('Filosofia', 'Preguntas de la vida'), ('Historia', 'Historia del mundo'),
('Progamacion', 'Codigos y problemas'), ('Ingles', 'Ingles idioma'),  ('Matematicas', 'Numeros y formulas'),
('Quimica', 'Formulas y reacciones'), ('Filosofia', 'Preguntas de la vida'), ('Matematicas', 'Numeros y formulas'),
('Fisica', 'Formulas y operaciones'),  ('Geografia', 'Coordenadas del mundo'), ('Literatura', 'Escribir leer'),
('Arte', 'Arte y pintura'), ('Edu.Fisica', 'Activacion fisica'), ('Musica', 'Partituras instrumentos'),
('Biologia', 'Plantas y ecosistemas'), ('Ingles', 'Ingles idioma'), ('Progamacion', 'Codigos y problemas'),
('Quimica Orgánica', 'Reacciones y compuestos'), ('Robótica', 'Construcción de robots'), ('Ciencias Sociales', 'Estudio de la sociedad'),
('Matematicas Avanzadas', 'Teoría de números y álgebra'), ('Geología', 'Rocas y minerales'), ('Astronomía', 'Cuerpo celestes y el universo'),
('Psicología', 'Estudio de la mente humana'), ('Ecología', 'Estudio del medio ambiente'), ('Estadística', 'Análisis de datos'),
('Historia del Arte', 'Desarrollo de las artes'), ('Teatro', 'Arte de la representación'), ('Cálculo', 'Estudio de límites y derivadas'),
('Física Cuántica', 'Estudio de partículas subatómicas');

-- Tabla Maestro
INSERT INTO maestro (Nombre, Edad, idGrupo) VALUES
('Andrea', 43, 1),  ('Jorge', 50, 2),  ('Luis', 39, 3),  ('Mariana', 55, 4), ('Sofía', 47, 5), ('Miguel', 43, 6), 
('Valeria', 41, 7), ('Camila', 33, 8), ('Daniel', 58, 9), ('Paola', 44, 10), ('Jorge', 50, 11), ('Ricardo', 29, 12),
('Luis', 39, 13), ('Fernanda', 45, 14), ('Carlos', 38, 15),('Lucía', 42, 16), ('Carlos', 50, 17), ('Eva', 38, 18), 
('Pedro', 45, 19),('Ricardo', 48, 20), ('Martín', 39, 21), ('Elena', 46, 22), ('José', 40, 23),('Antonio', 51, 24), 
('Claudia', 44, 25), ('Fernando', 52, 26), ('Raquel', 43, 27),('David', 37, 28), ('Mónica', 41, 29), ('Álvaro', 49, 30),
('Luz', 33, 31),('Juan', 46, 32),('Verónica', 40, 33),('Sofía', 44, 34),('Pablo', 50, 35),('Gabriela', 45, 36),('José Luis', 47, 37),
('Héctor', 38, 38),('Patricia', 51, 39),('Raul', 43, 40);

-- Tabla Estudiantes
INSERT INTO Estudiante (Nombre, numMaterias, direccion, correo, idGrupo) VALUES
('Carlos', 6, 'Calle 42', 'correo12@', 1), ('Andrea', 7, 'Calle 67', 'correo34@', 2),('Luis', 9, 'Calle 22', 'correo56@', 3), 
('Fernanda', 5, 'Calle 19', 'correo78@', 4),('Miguel', 6, 'Calle 59', 'correo23@', 5), ('Sofía', 7, 'Calle 53', 'correo45@', 6),
('Jorge', 7, 'Calle 31', 'correo67@', 7), ('Mariana', 9, 'Calle 10', 'correo89@', 8),('Ricardo', 10, 'Calle 12', 'correo11@', 9), 
('Valeria', 8, 'Calle 98', 'correo14@', 10),('Daniel', 7, 'Calle 44', 'correo78@', 11), ('Paola', 6, 'Calle 88', 'correo90@', 12),
('Héctor', 9, 'Calle 69', 'correo21@', 13), ('Miguel', 6, 'Calle 59', 'correo23@', 14),('Camila', 5, 'Calle 79', 'correo47@', 15),
('Oscar', 6, 'Calle 50', 'correo101@', 16),('Lucía', 7, 'Calle 82', 'correo102@', 17),('Pedro', 9, 'Calle 29', 'correo103@', 18),
('Gabriela', 5, 'Calle 55', 'correo104@', 19),('Ricardo', 6, 'Calle 77', 'correo105@', 20),('Verónica', 7, 'Calle 90', 'correo106@', 21),
('Fernando', 8, 'Calle 33', 'correo107@', 22),('David', 7, 'Calle 44', 'correo108@', 23),('Héctor', 10, 'Calle 21', 'correo109@', 24),
('Raquel', 8, 'Calle 65', 'correo110@', 25),('Antonio', 9, 'Calle 71', 'correo111@', 26),('Isabel', 6, 'Calle 43', 'correo112@', 27),
('Carlos', 8, 'Calle 22', 'correo113@', 28),('Martín', 7, 'Calle 50', 'correo114@', 29),('Laura', 9, 'Calle 12', 'correo115@', 30),
('Pablo', 7, 'Calle 34', 'correo116@', 31),('Carmen', 8, 'Calle 88', 'correo117@', 32),('Miguel', 6, 'Calle 63', 'correo118@', 33),
('Ana', 9, 'Calle 21', 'correo119@', 34),('Santiago', 10, 'Calle 77', 'correo120@', 35),('Raúl', 5, 'Calle 56', 'correo121@', 36),
('Claudia', 7, 'Calle 41', 'correo122@', 37),('José', 6, 'Calle 74', 'correo123@', 38), ('Fabiola', 8, 'Calle 65', 'correo124@', 39),
('Alejandro', 7, 'Calle 80', 'correo125@', 40);

-- Tabla Horarios
INSERT INTO Horarios (idGrupo, idMateria, idMaestro, Dia, hora) VALUES
(1, 1, 1, 1, '2025-02-19 08:20:00'), (2, 2, 2, 2, '2025-11-23 10:40:00'),(3, 3, 3, 3, '2025-02-28 11:30:00'), 
(4, 4, 4, 4, '2025-10-04 09:00:00'),(5, 5, 5, 5, '2025-02-09 13:40:00'), (6, 6, 6, 1, '2025-05-19 14:50:00'),
(7, 7, 3, 3, '2025-04-23 11:00:00'), (8, 8, 8, 3, '2025-02-19 16:30:00'),(9, 9, 9, 4, '2025-06-28 17:40:00'), 
(10, 10, 10, 5, '2025-02-24 18:00:00'),(11, 11, 11, 1, '2025-05-09 19:50:00'), (12, 12, 12, 2, '2025-03-04 20:00:00'),
(13, 13, 13, 3, '2025-04-03 21:10:00'),(14, 14, 14, 1, '2025-02-19 08:20:00'),(15, 15, 15, 4, '2025-02-04 09:00:00'),
(16, 1, 1, 1, '2025-02-22 09:20:00'),(17, 2, 2, 2, '2025-11-29 10:30:00'),(18, 3, 3, 3, '2025-05-10 11:50:00'),
(19, 4, 4, 4, '2025-06-15 09:40:00'),(20, 5, 5, 5, '2025-04-13 13:20:00'),(21, 6, 6, 1, '2025-05-18 14:30:00'),
(22, 7, 3, 3, '2025-07-04 12:00:00'),(23, 8, 8, 3, '2025-08-22 16:00:00'),(24, 9, 9, 4, '2025-09-17 17:00:00'),
(25, 10, 10, 5, '2025-05-01 18:00:00'),(26, 11, 11, 1, '2025-06-25 19:10:00'),(27, 12, 12, 2, '2025-07-19 20:20:00'),
(28, 13, 13, 3, '2025-08-12 21:30:00'),(29, 14, 14, 1, '2025-02-21 08:40:00'),(30, 15, 15, 4, '2025-05-05 09:10:00'),
(31, 16, 16, 2, '2025-03-10 10:00:00'),(32, 17, 17, 3, '2025-04-17 11:30:00'),(33, 18, 18, 1, '2025-06-02 12:40:00'),
(34, 19, 19, 4, '2025-09-09 13:30:00'),(35, 20, 20, 5, '2025-10-22 14:10:00'),(36, 21, 21, 1, '2025-02-15 15:00:00'),
(37, 22, 22, 2, '2025-07-30 16:00:00'),(38, 23, 23, 3, '2025-03-28 17:50:00'),(39, 24, 24, 4, '2025-04-01 18:40:00'),
(40, 25, 25, 5, '2025-05-12 19:20:00');

-- Tabla Maestro_Materia
INSERT INTO Maestro_Materia (idMateria, idMaestro) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11),  (13, 13), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24),  (26, 26), (27, 27),  (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40);

-- Tabla Direccion
INSERT INTO direccion (NumEncargados, idGrupo) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11),  (13, 13), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24),  (26, 26), (27, 27),  (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40);