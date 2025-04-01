-- Consultas
-- INNER JOIN
SELECT m.idMapa, m.Nombre, m.numNiveles, n.Nombre, n.Coleccionables
FROM mapas m
INNER JOIN nivel n ON m.idMapa = n.idMapa;

SELECT n.idNivel, n.Duracion, n.Coleccionables, nu.idUsuario
FROM nivel n
INNER JOIN nivel_usuario nu ON n.idNivel = nu.idNivel;

-- RIGHT JOIN
SELECT j.idJugador, j.Nombre, j.Habilidad, u.idUsuario, u.Nombre, u.nivelesCompletados
FROM jugadores j
RIGHT JOIN usuario u ON j.idJugador = u.idJugador;

SELECT p.idPuntos, up.idUsuario
FROM puntos p
RIGHT JOIN usuario_puntos up ON p.idPuntos = up.idPuntos;

-- LEFT JOIN
SELECT u.idUsuario, u.Nombre, u.nivelesCompletados, u.Correo, nu.idNivel
FROM usuario u
LEFT JOIN nivel_usuario nu ON u.idUsuario = nu.idUsuario;

SELECT u.idUsuario, u.Nombre, u.Edad ,u.nivelesCompletados, u.Contraseña, up.idPuntos
FROM usuario u
LEFT JOIN usuario_puntos up ON u.idUsuario = up.idUsuario;
