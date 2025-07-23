-- Consulta 2: Listar las materias que cursa Ana Perez, con sus calificaciones
SELECT m.nombre_materia, i.calificacion
FROM Estudiantes e
JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN Materias m ON i.id_materia = m.id_materia
WHERE e.nombre = 'Ana Perez';
