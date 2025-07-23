-- Consulta 6: Mostrar el numero total de estudiantes por carrera
SELECT carrera, COUNT(*) AS total_estudiantes
FROM Estudiantes
GROUP BY carrera;
