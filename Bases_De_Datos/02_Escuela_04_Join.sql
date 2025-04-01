-- Consultas
-- INNER JOIN
SELECT g.idGrupo, g.Grado, g.numEstudiantes, d.NumEncargados
FROM grupo g
INNER JOIN direccion d ON g.idGrupo = d.idGrupo;

SELECT g.idGrupo, g.Grado, g.numEstudiantes, m.idMaestro, m.Nombre
FROM grupo g
INNER JOIN maestro m ON g.idGrupo = m.idGrupo;

-- RIGHT JOIN
SELECT g.idGrupo, g.Grado, g.numEstudiantes, e.idEstudiante
FROM grupo g
RIGHT JOIN estudiante e ON g.idGrupo = e.idGrupo;

SELECT m.idMateria, m.Nombre, h.Dia, h.hora
FROM materia m
RIGHT JOIN horarios h ON m.idMateria = h.idMateria;

-- LEFT JOIN
SELECT m.idMaestro, m.Nombre, m.Edad ,h.Dia, h.hora
FROM maestro m
LEFT JOIN horarios h ON m.idMaestro = h.idMaestro;

SELECT g.idGrupo, g.Grado, h.Dia, h.hora
FROM grupo g
LEFT JOIN horarios h ON g.idGrupo = h.idGrupo;
