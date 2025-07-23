# Normalización de la tabla Inscripciones paso a paso

## Tabla original

| Matrícula | Nombre Alumno | Carrera | Clave Materia | Nombre Materia | Créditos | Nombre Profesor | Tel Profesor |
|-----------|---------------|---------|---------------|----------------|----------|-----------------|--------------|
| A001      | Juan Pérez    | TIC     | BD01          | Bases de Datos | 6        | Carlos Torres   | 777-888-9999 |
| A001      | Juan Pérez    | TIC     | PRO01         | Programación   | 8        | Ana Martínez    | 777-123-4567 |
| A002      | Laura Gómez   | IGE     | BD01          | Bases de Datos | 6        | Carlos Torres   | 777-888-9999 |

---

## 1FN: Análisis y comprobación
Aquí lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

**Comprobación:**
- Todos los campos contienen un solo valor (atómico), no hay listas ni conjuntos.
- La tabla cumple con 1FN.

---

## 2FN: Análisis y comprobación
Ya que tengo los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, Matrícula y Clave Materia). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del alumno va en la tabla de alumnos y el nombre de la materia en la de materias. Así evito que se repita información y todo queda más limpio.

**Claves y dependencias:**
- Clave primaria compuesta: Matrícula + Clave Materia
- "Nombre Alumno" y "Carrera" dependen solo de Matrícula
- "Nombre Materia", "Créditos", "Nombre Profesor", "Tel Profesor" dependen solo de Clave Materia

**Tablas después de 2FN:**

### Inscripciones
| Matrícula | Clave Materia |
|-----------|---------------|
| A001      | BD01          |
| A001      | PRO01         |
| A002      | BD01          |

### Alumnos
| Matrícula | Nombre Alumno | Carrera |
|-----------|---------------|---------|
| A001      | Juan Pérez    | TIC     |
| A002      | Laura Gómez   | IGE     |

### Materias
| Clave Materia | Nombre Materia | Créditos | Nombre Profesor | Tel Profesor |
|---------------|----------------|----------|-----------------|--------------|
| BD01          | Bases de Datos | 6        | Carlos Torres   | 777-888-9999 |
| PRO01         | Programación   | 8        | Ana Martínez    | 777-123-4567 |

---


## 3FN: Análisis y comprobación
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Así me aseguro de que todo esté bien normalizado y sin redundancias.

**Dependencias transitivas:**
- "Nombre Profesor" y "Tel Profesor" dependen de la entidad profesor, no directamente de la clave primaria de Materias.
- La relación entre alumno y carrera es independiente y debe representarse en una tabla aparte.

**Tablas después de 3FN (modelo robusto):**

### Inscripciones
| id_alumno | id_materia | periodo | calificación |
|-----------|------------|---------|--------------|
| 101       | 201        | 2025-1  | 9            |
| 102       | 202        | 2025-1  | 8            |

### Alumnos
| id_alumno | nombre_alumno |
|-----------|---------------|
| 101       | Juan Perez    |
| 102       | Ana Lopez     |

### Materias
| id_materia | nombre_materia | id_profesor |
|------------|---------------|-------------|
| 201        | Matematicas    | 301         |
| 202        | Historia       | 302         |

### Profesores
| id_profesor | nombre_profesor |
|-------------|-----------------|
| 301         | Carlos Ruiz     |
| 302         | Laura Gomez     |

### Carreras
| id_carrera | nombre_carrera |
|------------|----------------|
| 401        | Ingenieria     |
| 402        | Historia       |

### Alumnos_carrera
| id_alumno | id_carrera |
|-----------|------------|
| 101       | 401        |
| 102       | 402        |

---

**Conclusión:**
Con este proceso paso a paso, la tabla original queda completamente normalizada hasta 3FN, eliminando redundancias y asegurando integridad en los datos, siguiendo el modelo robusto mostrado en la imagen.
- Las relaciones entre entidades se manejan mediante claves foráneas.
- No hay redundancia de datos: los nombres y descripciones solo aparecen una vez en sus respectivas tablas.
- El modelo es flexible y preparado para escenarios complejos (por ejemplo, alumnos con varias carreras)
