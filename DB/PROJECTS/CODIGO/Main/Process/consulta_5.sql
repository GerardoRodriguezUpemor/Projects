-- Consulta 5: Listar el nombre de cada estudiante junto con el nombre de las materias que cursa y su calificación
SELECT e.nombre AS estudiante, m.nombre_materia AS materia, i.calificacion
FROM Estudiantes e
JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN Materias m ON i.id_materia = m.id_materia;
