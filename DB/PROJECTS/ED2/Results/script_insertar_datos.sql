USE vitalcare;

-- Pacientes
INSERT INTO Pacientes (nombre, fecha_nacimiento, sexo, telefono, correo) VALUES
('Ana Gomez Ramirez', '1998-04-21', 'F', '7771234567', 'ana@gmail.com'),
('Luis Fernandez Soto', '1992-08-15', 'M', '7777654321', 'luisf@correo.com'),
('Karen Lopez Perez', '1989-01-10', 'F', '7778889999', 'karen@outlook.com'),
('Jose Rivas Torres', '1975-07-02', 'M', '7773331122', 'jrivas@correo.com'),
('Maria Chavez Diaz', '2001-09-05', 'F', '7771112223', 'mchavez@gmail.com');

-- Especialidades
INSERT INTO Especialidades (nombre, descripcion) VALUES
('Pediatria', 'Atencion medica infantil'),
('Dermatologia', 'Tratamiento de piel'),
('Ginecologia', 'Atencion femenina'),
('Medicina General', 'Consultas generales'),
('Cardiologia', 'Sistema cardiovascular');

-- Medicos
INSERT INTO Medicos (nombre, cedula, telefono, correo, id_especialidad) VALUES
('Laura Mendoza', '1234567', '7774441111', 'lmendoza@medic.com', 1),
('Carlos Ruiz', '2345678', '7775553333', 'cruiz@medic.com', 3),
('Ernesto Pena', '3456789', '7772221111', 'epena@medic.com', 4),
('Paula Velazquez', '4567890', '7779998888', 'pvelazquez@medic.com', 2),
('Miguel Soto', '5678901', '7777776666', 'msoto@medic.com', 5);

-- Tratamientos
INSERT INTO Tratamientos (nombre, descripcion, duracion_dias) VALUES
('Ibuprofeno', 'Antiinflamatorio', 5),
('Paracetamol', 'Fiebre y dolor', 3),
('Antibiotico Z', 'Infeccion bacteriana', 7),
('Estudio de sangre', 'Analisis general', 1),
('Reposo absoluto', 'Indicado por 48 horas', 2);

-- Citas
INSERT INTO Citas (id_paciente, id_medico, fecha, hora, motivo) VALUES
(1, 1, '2025-07-10', '09:00:00', 'Consulta general'),
(2, 2, '2025-07-11', '10:00:00', 'Revision anual'),
(3, 3, '2025-07-12', '11:00:00', 'Dolor de cabeza'),
(4, 4, '2025-07-13', '12:00:00', 'Revision de piel'),
(5, 5, '2025-07-14', '13:00:00', 'Chequeo cardiaco');

-- DetalleTratamiento
INSERT INTO DetalleTratamiento (id_cita, id_tratamiento, indicaciones) VALUES
(1, 1, 'Tomar cada 8 horas'),
(1, 4, 'No tomar con alimentos'),
(2, 2, 'Tomar cada 12 horas'),
(3, 3, 'Completar el tratamiento'),
(3, 5, 'Reposo absoluto por 2 dias'),
(4, 4, 'Ayuno previo de 8 horas'),
(5, 5, 'Evitar esfuerzos fisicos');
