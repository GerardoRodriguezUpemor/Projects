-- Consulta 4: Mostrar los estudiantes con promedio mayor a 8, ordenados de mayor a menor
SELECT nombre, promedio
FROM Estudiantes
WHERE promedio > 8
ORDER BY promedio DESC;
