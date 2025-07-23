-- Consulta 7: Listar todas las materias que pertenecen al tercer semestre de Ingenieria
SELECT nombre_materia
FROM Materias
WHERE carrera = 'Ingenieria' AND semestre = 3;
