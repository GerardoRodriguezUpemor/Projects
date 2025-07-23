SELECT DISTINCT p.nombre_completo FROM Citas c JOIN Pacientes p ON c.id_paciente = p.id_paciente JOIN Medicos m ON c.id_medico = m.id_medico WHERE m.nombre_completo = 'Carlos Ruiz';
SELECT * FROM Citas WHERE MONTH(fecha) = 7;
SELECT t.nombre FROM Citas c JOIN Pacientes p ON c.id_paciente = p.id_paciente JOIN Citas_Tratamientos ct ON c.id_cita = ct.id_cita JOIN Tratamientos t ON ct.id_tratamiento = t.id_tratamiento WHERE p.nombre_completo = 'Ana Gomez Ramirez';
SELECT m.* FROM Medicos m JOIN Especialidades e ON m.id_especialidad = e.id_especialidad WHERE e.nombre = 'Dermatologia';
SELECT c.fecha, c.motivo_consulta, m.nombre_completo, p.nombre_completo FROM Citas c JOIN Medicos m ON c.id_medico = m.id_medico JOIN Pacientes p ON c.id_paciente = p.id_paciente JOIN Citas_Tratamientos ct ON c.id_cita = ct.id_cita GROUP BY c.id_cita HAVING COUNT(ct.id_tratamiento) > 1;
