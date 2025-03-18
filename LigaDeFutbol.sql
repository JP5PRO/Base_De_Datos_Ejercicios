-- Tabla Equipo
INSERT INTO Equipo (Nombre, numIntegrantes, Ganadas, Perdidas, Empates, Puntos) VALUES
('Tigres', 12, 11, 2, 3, 33),
('Águilas', 11, 8, 5, 2, 26),
('Pumas', 12, 7, 6, 3, 24),
('Chivas', 11, 9, 4, 3, 30),
('Atlas', 13, 10, 3, 3, 33),
('Madrid', 12, 8, 6, 2, 26),
('Barcelona', 11, 7, 6, 3, 24),
('Liverpool', 12, 6, 7, 3, 21),
('Tlaxcala', 11, 5, 8, 3, 18),
('Necaxa', 12, 6, 7, 3, 21),
('Tigres', 12, 11, 2, 3, 33),
('Panteras', 13, 9, 4, 3, 30),
('America', 11, 5, 8, 3, 18),
('Cruz Azul', 12, 8, 4, 4, 28),
('Zorros', 12, 8, 3, 4, 27);

-- Tabla Arbitro
INSERT INTO Arbitro ( Nombre, Edad, partidosJugados) VALUES
('Pedro', 40, 50),
('Raúl', 42, 45),
('Daniel', 45, 60),
('Martín', 37, 52),
('Esteban', 39, 57),
('Adrián', 41, 50),
('Hugo', 43, 51),
('Gabriel', 40, 49),
('César', 46, 58),
('Óscar', 44, 59),
('Ramiro', 41, 55),
('Enrique', 43, 54),
('Andrés', 41, 54),
('Sergio', 42, 50),
('Eduardo', 40, 50);

-- Tabla Categoria
INSERT INTO Categoria ( Nombre, Premio, idEquipo) VALUES
('Juvenil', 'Trofeo', 1),
('Infantil', 'Medalla', 2),
('Femenil', 'Medalla', 3),
('Libre', 'Trofeo', 4),
('Senior', 'Trofeo', 5),
('Mixto', 'Medalla', 6),
('Sub-15', 'Trofeo', 7),
('Sub-17', 'Medalla', 8),
('Universitario', 'Trofeo', 9),
('Profesional', 'Medalla', 10),
('Juvenil', 'Trofeo', 11),
('Infantil', 'Medalla', 12),
('Libre', 'Trofeo', 13),
('Femenil', 'Medalla', 14),
('Senior', 'Trofeo', 15);

-- Tabla Jugador
INSERT INTO Jugador ( Nombre, idEquipo, Edad, Rol) VALUES
('Juan', 1, 21, 'Delantero'),
('Luis', 2, 23, 'Defensa'),
('Carlos', 3, 19, 'Portero'),
('Miguel', 4, 22, 'Mediocampista'),
('Jorge', 5, 20, 'Defensa'),
('Diego', 6, 24, 'Delantero'),
('Andrés', 7, 21, 'Mediocampista'),
('Sergio', 8, 23, 'Defensa'),
('Roberto', 9, 25, 'Portero'),
('Fernando', 10, 23, 'Defensa'),
('Ernesto', 11, 24, 'Mediocampista'),
('Samuel', 12, 21, 'Delantero'),
('David', 13, 24, 'Portero'),
('Emiliano', 14, 22, 'Defensa'),
('Hugo', 15, 23, 'Mediocampista');

-- Tabla Partido
INSERT INTO Partido (idEquipoGanador, idEquipoPerdedor, Fecha, idArbitro) VALUES
(1, 1, '2024-06-01', 1),
(2, 2, '2024-11-05', 2),
(3, 3, '2024-02-04', 3),
(4, 4, '2024-02-02', 4),
(5, 5, '2024-08-22', 5),
(6, 6, '2024-09-23', 6),
(7, 7, '2024-05-13', 7),
(8, 8, '2024-05-06', 8),
(9, 9, '2024-08-10', 9),
(10, 10, '2024-04-30', 10),
(11, 11, '2024-06-12', 11),
(12, 12, '2024-08-22', 12),
(13, 13, '2024-03-27', 13),
(14, 14, '2024-10-25', 14),
(15, 15, '2024-11-16', 15);

-- Tabla Clasificacion
INSERT INTO Clasificacion (idEquipo, Ganadas, Perdidas, Empates, Puntos) VALUES
(1, 10, 2, 3, 33),
(2, 7, 6, 3, 24),
(3, 8, 5, 2, 26),
(4, 9, 4, 3, 30),
(5, 10, 3, 3, 33),
(6, 8, 6, 2, 26),
(7, 7, 6, 3, 24),
(8, 6, 7, 3, 21),
(9, 5, 8, 3, 18),
(10, 6, 7, 3, 21),
(11, 7, 6, 3, 24),
(12, 9, 4, 3, 30),
(13, 5, 8, 3, 18),
(14, 8, 4, 4, 28),
(15, 8, 3, 4, 27);
