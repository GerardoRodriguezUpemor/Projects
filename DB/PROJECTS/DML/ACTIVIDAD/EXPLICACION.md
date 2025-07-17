# Ejercicio Completo de Base de Datos: Sistema de Biblioteca

## 1. Enunciado del Problema

Una biblioteca desea llevar el control de:
- Los libros disponibles.
- Los autores de los libros.
- Los socios registrados que pueden solicitar préstamos.
- Los préstamos realizados.

**Relaciones:**
- Cada libro puede tener uno o varios autores.
- Cada autor puede haber escrito varios libros.
- Los socios pueden tomar prestados varios libros.
- Cada préstamo queda registrado con su fecha y si fue devuelto o no.

**Tarea:**
Diseñar una base de datos que modele esta situación, crear las tablas necesarias y cargarla con datos de ejemplo.

---

## 2. Modelo de Datos (Tablas)

### Tabla: Autor
| Campo     | Tipo    | Descripción              |
|-----------|---------|--------------------------|
| id_autor  | INT     | Identificador del autor  |
| nombre    | VARCHAR | Nombre del autor         |

### Tabla: Libro
| Campo     | Tipo    | Descripción              |
|-----------|---------|--------------------------|
| id_libro  | INT     | Identificador del libro  |
| titulo    | VARCHAR | Título del libro         |
| año       | INT     | Año de publicación       |

### Tabla: LibroAutor
| Campo     | Tipo    | Descripción              |
|-----------|---------|--------------------------|
| id_libro  | INT     | Referencia al libro      |
| id_autor  | INT     | Referencia al autor      |

Esta tabla es necesaria porque un libro puede tener varios autores y un autor puede haber escrito varios libros (relación muchos a muchos).

### Tabla: Socio
| Campo     | Tipo    | Descripción                  |
|-----------|---------|------------------------------|
| id_socio  | INT     | Identificador del socio      |
| nombre    | VARCHAR | Nombre completo del socio    |
| email     | VARCHAR | Correo electrónico del socio |

### Tabla: Préstamo
| Campo       | Tipo    | Descripción                        |
|-------------|---------|------------------------------------|
| id_prestamo | INT     | Identificador del préstamo         |
| id_socio    | INT     | Referencia al socio                |
| id_libro    | INT     | Referencia al libro prestado       |
| fecha       | DATE    | Fecha del préstamo                 |
| devuelto    | BOOL    | Si el libro fue devuelto (Sí/No)   |

---

## 3. Tuplas (Datos de Ejemplo)

### Tabla: Autor
| id_autor | nombre                  |
|----------|-------------------------|
| 1        | Gabriel García Márquez  |
| 2        | Isabel Allende          |
| 3        | J.K. Rowling            |

### Tabla: Libro
| id_libro | titulo                                   | año |
|----------|------------------------------------------|-----|
| 1        | Cien años de soledad                     | 1967|
| 2        | La casa de los espíritus                 | 1982|
| 3        | Harry Potter y la piedra filosofal        | 1997|

### Tabla: LibroAutor
| id_libro | id_autor |
|----------|----------|
| 1        | 1        |
| 2        | 2        |
| 3        | 3        |

### Tabla: Socio
| id_socio | nombre         | email                      |
|----------|---------------|----------------------------|
| 1        | Ana Torres     | ana.torres@email.com       |
| 2        | Carlos Méndez  | carlos.mendez@email.com    |

### Tabla: Préstamo
| id_prestamo | id_socio | id_libro | fecha       | devuelto |
|-------------|----------|----------|-------------|----------|
| 1           | 1        | 1        | 2025-07-01  | Sí       |
| 2           | 1        | 3        | 2025-07-05  | No       |
| 3           | 2        | 2        | 2025-07-03  | No       |