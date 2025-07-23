CREATE DATABASE IF NOT EXISTS vitalcare; USE vitalcare;
CREATE TABLE Especialidades (id_especialidad INT PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(50) NOT NULL, descripcion VARCHAR(200));
CREATE TABLE Pacientes (id_paciente INT PRIMARY KEY AUTO_INCREMENT, nombre_completo VARCHAR(100) NOT NULL, fecha_nacimiento DATE NOT NULL, sexo ENUM('M','F') NOT NULL, telefono VARCHAR(20), correo VARCHAR(100));
CREATE TABLE Medicos (id_medico INT PRIMARY KEY AUTO_INCREMENT, nombre_completo VARCHAR(100) NOT NULL, cedula_profesional VARCHAR(20) NOT NULL, telefono VARCHAR(20), correo VARCHAR(100), id_especialidad INT, FOREIGN KEY (id_especialidad) REFERENCES Especialidades(id_especialidad));
CREATE TABLE Tratamientos (id_tratamiento INT PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(100) NOT NULL, descripcion VARCHAR(200), duracion VARCHAR(50));
CREATE TABLE Citas (id_cita INT PRIMARY KEY AUTO_INCREMENT, fecha DATE NOT NULL, hora TIME NOT NULL, motivo_consulta VARCHAR(200), id_paciente INT, id_medico INT, FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente), FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico));
CREATE TABLE Citas_Tratamientos (id_cita INT, id_tratamiento INT, indicaciones VARCHAR(200), PRIMARY KEY (id_cita, id_tratamiento), FOREIGN KEY (id_cita) REFERENCES Citas(id_cita), FOREIGN KEY (id_tratamiento) REFERENCES Tratamientos(id_tratamiento));
