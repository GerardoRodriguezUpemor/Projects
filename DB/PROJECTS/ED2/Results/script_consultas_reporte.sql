-- 1. Nombre de los pacientes atendidos por el médico Carlos Ruiz
SELECT DISTINCT p.nombre_completo AS paciente
FROM Citas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Medicos m ON c.id_medico = m.id_medico
WHERE m.nombre_completo = 'Carlos Ruiz';

-- 2. Todas las citas registradas durante el mes de julio
SELECT * FROM Citas
WHERE MONTH(fecha) = 7;

-- 3. Tratamientos que ha recibido la paciente Ana Gomez Ramirez
SELECT t.nombre AS tratamiento
FROM Citas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Citas_Tratamientos ct ON c.id_cita = ct.id_cita
JOIN Tratamientos t ON ct.id_tratamiento = t.id_tratamiento
WHERE p.nombre_completo = 'Ana Gomez Ramirez';

-- 4. Médicos que pertenecen a la especialidad Dermatologia
SELECT m.*
FROM Medicos m
JOIN Especialidades e ON m.id_especialidad = e.id_especialidad
WHERE e.nombre = 'Dermatologia';

-- 5. Información completa de las citas con más de un tratamiento asignado
SELECT c.fecha, c.motivo_consulta, m.nombre_completo AS medico, p.nombre_completo AS paciente
FROM Citas c
JOIN Medicos m ON c.id_medico = m.id_medico
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Citas_Tratamientos ct ON c.id_cita = ct.id_cita
GROUP BY c.id_cita
HAVING COUNT(ct.id_tratamiento) > 1;
