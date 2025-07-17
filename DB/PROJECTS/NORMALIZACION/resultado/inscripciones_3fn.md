
# Inscripciones Escolares - 3FN

## Proceso
- Se eliminan dependencias transitivas.
- Todos los atributos dependen únicamente de la clave primaria.

## Tablas finales

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
| id_materia | nombre_materia | id_profesor |
|------------|---------------|-------------|
| 201        | Matemáticas    | 301         |
| 202        | Historia       | 302         |

### Profesores
| id_profesor | nombre_profesor |
|-------------|-----------------|
| 301         | Carlos Ruiz     |
| 302         | Laura Gómez     |

### Carreras
| id_carrera | nombre_carrera |
|------------|----------------|
| 401        | Ingeniería      |
| 402        | Historia        |

### Asignación de Carrera
| id_alumno | id_carrera |
|-----------|------------|
| 101       | 401        |
| 102       | 402        |
