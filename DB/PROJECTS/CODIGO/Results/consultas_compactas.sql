-- Consultas compactas para el modelo de base de datos
SELECT nombre FROM Estudiantes WHERE carrera='Ingenieria';
SELECT m.nombre_materia,i.calificacion FROM Estudiantes e JOIN Inscripciones i ON e.id_estudiante=i.id_estudiante JOIN Materias m ON i.id_materia=m.id_materia WHERE e.nombre='Ana Perez';
SELECT AVG(i.calificacion) FROM Estudiantes e JOIN Inscripciones i ON e.id_estudiante=i.id_estudiante WHERE e.nombre='Sofia Luna';
SELECT nombre,promedio FROM Estudiantes WHERE promedio>8 ORDER BY promedio DESC;
SELECT e.nombre,m.nombre_materia,i.calificacion FROM Estudiantes e JOIN Inscripciones i ON e.id_estudiante=i.id_estudiante JOIN Materias m ON i.id_materia=m.id_materia;
SELECT carrera,COUNT(*) FROM Estudiantes GROUP BY carrera;
SELECT nombre_materia FROM Materias WHERE carrera='Ingenieria' AND semestre=3;
