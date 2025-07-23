-- Script SQL compacto para crear y poblar la base de datos
CREATE DATABASE IF NOT EXISTS escuela; USE escuela;
CREATE TABLE Estudiantes (id_estudiante INT PRIMARY KEY, nombre VARCHAR(50), carrera VARCHAR(30), semestre INT, promedio DECIMAL(3,1));
INSERT INTO Estudiantes VALUES (1,'Ana Perez','Ingenieria',3,8.5),(2,'Luis Gomez','Derecho',2,7.2),(3,'Sofia Luna','Ingenieria',4,9.0);
CREATE TABLE Materias (id_materia INT PRIMARY KEY, nombre_materia VARCHAR(50), carrera VARCHAR(30), semestre INT);
INSERT INTO Materias VALUES (1,'Matematicas I','Ingenieria',1),(2,'Derecho Civil','Derecho',2),(3,'Programacion I','Ingenieria',3);
CREATE TABLE Inscripciones (id_inscripcion INT PRIMARY KEY, id_estudiante INT, id_materia INT, calificacion INT, FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante), FOREIGN KEY (id_materia) REFERENCES Materias(id_materia));
INSERT INTO Inscripciones VALUES (1,1,1,9),(2,1,3,8),(3,2,2,7),(4,3,1,9),(5,3,3,10);
