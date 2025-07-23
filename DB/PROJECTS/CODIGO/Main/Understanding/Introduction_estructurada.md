# Ejercicio de Bases de Datos: Consultas SQL

## Instrucciones
A partir del siguiente modelo de base de datos, responde las preguntas escribiendo la consulta SQL correspondiente.

---

## Tablas disponibles

### 1. Estudiantes

| id_estudiante | nombre      | carrera     | semestre | promedio |
|:-------------:|:-----------:|:-----------:|:--------:|:--------:|
| 1             | Ana Pérez   | Ingeniería  | 3        | 8.5      |
| 2             | Luis Gómez  | Derecho     | 2        | 7.2      |
| 3             | Sofía Luna  | Ingeniería  | 4        | 9.0      |

### 2. Materias

| id_materia | nombre_materia   | carrera     | semestre |
|:----------:|:----------------:|:-----------:|:--------:|
| 1          | Matemáticas I    | Ingeniería  | 1        |
| 2          | Derecho Civil    | Derecho     | 2        |
| 3          | Programación I   | Ingeniería  | 3        |

### 3. Inscripciones

| id_inscripcion | id_estudiante | id_materia | calificacion |
|:--------------:|:-------------:|:----------:|:------------:|
| 1              | 1             | 1          | 9            |
| 2              | 1             | 3          | 8            |
| 3              | 2             | 2          | 7            |
| 4              | 3             | 1          | 9            |
| 5              | 3             | 3          | 10           |

---

## Consultas a realizar

1. **Mostrar el nombre de todos los estudiantes de la carrera de Ingeniería.**
2. **Listar las materias que cursa Ana Pérez, con sus calificaciones.**
3. **Obtener el promedio de calificaciones del estudiante Sofía Luna.**
4. **Mostrar los estudiantes con promedio mayor a 8, ordenados de mayor a menor.**
5. **Listar el nombre de cada estudiante junto con el nombre de las materias que cursa y su calificación.**
6. **Mostrar el número total de estudiantes por carrera.**
7. **Listar todas las materias que pertenecen al tercer semestre de Ingeniería.**
