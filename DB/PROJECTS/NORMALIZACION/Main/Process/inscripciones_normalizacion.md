# Preguntas y Respuestas para Normalización de Inscripciones Escolares

## Preguntas para analizar la tabla de inscripciones escolares

### 1FN
- ¿Algún campo de la inscripción almacena más de un valor por registro? (Ejemplo: varias materias, varios periodos, varios alumnos en una sola celda)
- Respuesta: No, cada campo almacena un solo valor por registro.


### 2FN
- ¿La clave primaria es compuesta? Si es así, ¿algún atributo depende solo de una parte de la clave?
- Respuesta: Sí, la clave puede ser compuesta (por ejemplo, id_alumno + id_materia + periodo). Se deben eliminar los atributos que dependan solo de una parte de la clave y ubicarlos en su tabla correspondiente.


### 3FN
- ¿Algún atributo depende de otro atributo que no sea clave primaria?
- Respuesta: No, todos los atributos dependen únicamente de la clave primaria. Si existieran atributos que dependan de otros atributos no clave, deben separarse en nuevas tablas.


## Ejemplo de tabla Inscripciones antes de normalizar
| id_inscripcion | id_alumno | nombre_alumno | id_materia | nombre_materia | periodo | calificacion |
|---------------|-----------|---------------|------------|---------------|---------|-------------|
| 1             | 101       | Juan Pérez    | 201        | Matemáticas   | 2025-1  | 9           |
| 2             | 102       | Ana López     | 202        | Historia      | 2025-1  | 8           |



## Proceso de normalización

### 1FN
Aquí lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

### 2FN
Ya que tengo los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, id_alumno, id_materia y periodo). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del alumno va en la tabla de alumnos y el nombre de la materia en la de materias. Así evito que se repita información y todo queda más limpio.

### 3FN
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Por ejemplo, si tuviera "departamento_materia" y depende de la materia, lo mando a la tabla de materias. Así me aseguro que todo esté bien normalizado y sin redundancias.



## Tablas resultantes (modelo final de 3FN)

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


---

Así se asegura la normalización hasta la 3FN.
