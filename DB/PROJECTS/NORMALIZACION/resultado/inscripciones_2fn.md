    # Inscripciones Escolares - 2FN

## Proceso
- Se identifica la clave primaria compuesta: (id_alumno, id_materia, periodo).
- Se eliminan atributos que dependen solo de una parte de la clave.

## Tablas
### Inscripciones
| id_alumno | id_materia | periodo | calificacion |
|-----------|------------|---------|-------------|
| 101       | 201        | 2025-1  | 9           |
| 102       | 202        | 2025-1  | 8           |

### Alumnos
| id_alumno | nombre_alumno |
|-----------|---------------|
| 101       | Juan Pérez    |
| 102       | Ana López     |

### Materias
| id_materia | nombre_materia |
|------------|---------------|
| 201        | Matemáticas    |
| 202        | Historia       |
