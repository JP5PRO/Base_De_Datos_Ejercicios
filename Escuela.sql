-- Tabla Grupo
INSERT INTO Grupo(Grado, numEstudiantes) VALUES
(1, 40),
(1, 42),
(1, 41),
(2, 39),
(2, 30),
(2, 37),
(3, 38),
(3, 20),
(4, 39),
(5, 40),
(5, 40),
(5, 47),
(4, 45),
(6, 38),
(6, 35);

-- Tabla Materia
INSERT INTO materia(Nombre, Descripcion) VALUES
('Matematicas', 'Numeros y formulas'),
('Fisica', 'Formulas y operaciones'),
('Quimica', 'Formulas y reacciones'),
('Historia', 'Historia del mundo'),
('Geografia', 'Coordenadas del mundo'),
('Literatura', 'Escribir leer'),
('Arte', 'Arte y pintura'),
('Edu.Fisica', 'Activacion fisica'),
('Musica', 'Partituras instrumentos'),
('Biologia', 'Plantas y ecosistemas'),
('Filosofia', 'Preguntas de la vida'),
('Historia', 'Historia del mundo'),
('Progamacion', 'Codigos y problemas'),
('Ingles', 'Ingles idioma'),
('Matematicas', 'Numeros y formulas');

-- Tabla Maestro
INSERT INTO maestro(Nombre, Edad, idGrupo) VALUES
('Andrea', 43, 1), 
('Jorge', 50, 2), 
('Luis', 39, 3), 
('Mariana', 55, 4),
('Sofía', 47, 5), 
('Miguel', 43, 6), 
('Valeria', 41, 7), 
('Camila', 33, 8),
('Daniel', 58, 9), 
('Paola', 44, 10), 
('Jorge', 50, 11), 
('Ricardo', 29, 12),
('Luis', 39, 13), 
('Fernanda', 45, 14), 
('Carlos', 38, 15);

-- Tabla Estudiantes
INSERT INTO Estudiante (Nombre, numMaterias, direccion, correo, idGrupo) VALUES
('Carlos', 6, 'Calle 42', 'correo12@', 1), 
('Andrea', 7, 'Calle 67', 'correo34@', 2),
('Luis', 9, 'Calle 22', 'correo56@', 3), 
('Fernanda', 5, 'Calle 19', 'correo78@', 4),
('Miguel', 6, 'Calle 59', 'correo23@', 5), 
('Sofía', 7, 'Calle 53', 'correo45@', 6),
('Jorge', 7, 'Calle 31', 'correo67@', 7), 
('Mariana', 9, 'Calle 10', 'correo89@', 8),
('Ricardo', 10, 'Calle 12', 'correo11@', 9), 
('Valeria', 8, 'Calle 98', 'correo14@', 10),
('Daniel', 7, 'Calle 44', 'correo78@', 11), 
('Paola', 6, 'Calle 88', 'correo90@', 12),
('Héctor', 9, 'Calle 69', 'correo21@', 13), 
('Miguel', 6, 'Calle 59', 'correo23@', 14),
('Camila', 5, 'Calle 79', 'correo47@', 15);

-- Tabla Horarios
INSERT INTO Horarios (idGrupo, idMateria, idMaestro, Dia, hora) VALUES
(1, 1, 1, 1, '2025-02-19 08:20:00'), 
(2, 2, 2, 2, '2025-11-23 10:40:00'),
(3, 3, 3, 3, '2025-02-28 11:30:00'), 
(4, 4, 4, 4, '2025-10-04 09:00:00'),
(5, 5, 5, 5, '2025-02-09 13:40:00'), 
(6, 6, 6, 1, '2025-05-19 14:50:00'),
(7, 7, 3, 3, '2025-04-23 11:00:00'), 
(8, 8, 8, 3, '2025-02-19 16:30:00'),
(9, 9, 9, 4, '2025-06-28 17:40:00'), 
(10, 10, 10, 5, '2025-02-24 18:00:00'),
(11, 11, 11, 1, '2025-05-09 19:50:00'), 
(12, 12, 12, 2, '2025-03-04 20:00:00'),
(13, 13, 13, 3, '2025-04-03 21:10:00'),
(14, 14, 14, 1, '2025-02-19 08:20:00'),
(15, 15, 15, 4, '2025-02-04 09:00:00');

-- Tabla Maestro_Materia
INSERT INTO Maestro_Materia (idMateria, idMaestro) VALUES
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
(14, 12), 
(13, 13), 
(14, 14),
(15, 15);

-- Tabla Direccion
INSERT INTO direccion (NumEncargados, idGrupo) VALUES
(4, 1),
(7, 2),
(1, 3),
(2, 4),
(1, 5),
(6, 6),
(4, 7),
(5, 8),
(2, 9),
(2, 10),
(2, 11),
(5, 12),
(4, 13),
(1, 14),
(2, 15);