-- Consulta 3: Obtener el promedio de calificaciones del estudiante Sofia Luna
SELECT AVG(i.calificacion) AS promedio_calificaciones
FROM Estudiantes e
JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
WHERE e.nombre = 'Sofia Luna';
