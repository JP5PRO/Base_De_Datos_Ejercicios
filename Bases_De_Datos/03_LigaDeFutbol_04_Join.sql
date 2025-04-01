-- Consultas
-- INNER JOIN
SELECT e.idEquipo, e.Nombre, e.numIntegrantes, c.idCategoria, c.Premio
FROM equipo e
INNER JOIN categoria c ON e.idEquipo = c.idEquipo;

SELECT e.idEquipo, j.idJugador, j.Nombre, j.Rol
FROM equipo e
INNER JOIN jugador j ON j.idEquipo = e.idEquipo;

-- RIGHT JOIN
SELECT e.idEquipo, e.Nombre , c.Puntos
FROM equipo e
RIGHT JOIN clasificacion c ON e.idEquipo = c.idEquipo;

SELECT e.idEquipo, e.Nombre, e.Ganadas, e.Perdidas, e.Empates, c.idCategoria, c.Premio
FROM equipo e
RIGHT JOIN categoria c ON e.idEquipo = c.idEquipo;

-- LEFT JOIN
SELECT a.idArbitro, a.Nombre, a.partidosJugados, p.Fecha
FROM arbitro a
LEFT JOIN partido p ON a.idArbitro = p.idArbitro;

SELECT e.idEquipo, e.Nombre ,c.Ganadas, c.Perdidas, c.Empates
FROM equipo e
LEFT JOIN clasificacion c ON e.idEquipo = c.idEquipo;
