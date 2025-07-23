# Normalización de la tabla Biblioteca

## Tabla original

| No. Préstamo | Fecha      | Nombre Usuario | No. Control | Título Libro         | Autor                | Editorial     | Fecha Devolución |
|--------------|------------|----------------|-------------|----------------------|----------------------|---------------|------------------|
| P001         | 2025-07-10 | Carlos Méndez  | U001        | Cien Años de Soledad | G. García Márquez    | Sudamericana  | 2025-07-20       |
| P002         | 2025-07-11 | Carlos Méndez  | U001        | El Principito        | A. de Saint-Exupéry  | Salamandra    | 2025-07-21       |
| P003         | 2025-07-11 | Laura Díaz     | U002        | Cien Años de Soledad | G. García Márquez    | Sudamericana  | 2025-07-25       |

---

## 1FN: Análisis y comprobación
Aquí lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

**Comprobación:**
- Todos los campos contienen un solo valor (atómico), no hay listas ni conjuntos.
- La tabla cumple con 1FN.

---

## 2FN: Análisis y comprobación
Ya que tengo los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, No. Préstamo + No. Control + Título Libro). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del usuario va en la tabla de usuarios y los datos del libro en la de libros. Así evito que se repita información y todo queda más limpio.

**Claves y dependencias:**
- Clave primaria compuesta: No. Préstamo + No. Control + Título Libro
- "Nombre Usuario" depende solo de No. Control
- "Autor" y "Editorial" dependen solo de Título Libro

**Tablas después de 2FN:**

### Prestamos
| No. Préstamo | No. Control | Título Libro | Fecha      | Fecha Devolución |
|--------------|-------------|--------------|------------|------------------|
| P001         | U001        | Cien Años de Soledad | 2025-07-10 | 2025-07-20 |
| P002         | U001        | El Principito        | 2025-07-11 | 2025-07-21 |
| P003         | U002        | Cien Años de Soledad | 2025-07-11 | 2025-07-25 |

### Usuarios
| No. Control | Nombre Usuario |
|-------------|----------------|
| U001        | Carlos Méndez  |
| U002        | Laura Díaz     |

### Libros
| Título Libro         | Autor               | Editorial    |
|----------------------|---------------------|--------------|
| Cien Años de Soledad | G. García Márquez   | Sudamericana |
| El Principito        | A. de Saint-Exupéry | Salamandra   |

---

## 3FN: Análisis y comprobación
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Así me aseguro de que todo esté bien normalizado y sin redundancias.

**Dependencias transitivas:**
- "Autor" y "Editorial" dependen de la entidad libro, no directamente de la clave primaria de Préstamos.
- "Nombre Usuario" depende de la entidad usuario.

**Tablas después de 3FN (modelo robusto):**

### Prestamos
| id_prestamo | fecha      | id_usuario | id_libro | fecha_devolucion |
|-------------|------------|------------|----------|------------------|
| 1           | 2025-07-10 | 1          | 1        | 2025-07-20       |
| 2           | 2025-07-11 | 1          | 2        | 2025-07-21       |
| 3           | 2025-07-11 | 2          | 1        | 2025-07-25       |

### Usuarios
| id_usuario | nombre_usuario | no_control |
|------------|----------------|------------|
| 1          | Carlos Méndez  | U001       |
| 2          | Laura Díaz     | U002       |

### Libros
| id_libro | titulo_libro         | id_autor | id_editorial |
|----------|----------------------|----------|--------------|
| 1        | Cien Años de Soledad | 1        | 1            |
| 2        | El Principito        | 2        | 2            |

### Autores
| id_autor | nombre_autor         |
|----------|----------------------|
| 1        | G. García Márquez    |
| 2        | A. de Saint-Exupéry  |

### Editoriales
| id_editorial | nombre_editorial |
|--------------|------------------|
| 1            | Sudamericana     |
| 2            | Salamandra       |

---

**Conclusión:**
Con este proceso paso a paso, la tabla original queda completamente normalizada hasta 3FN, eliminando redundancias y asegurando integridad en los datos, siguiendo el modelo robusto y relacional.
