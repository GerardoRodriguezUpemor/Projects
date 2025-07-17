## A. Entidades y Relaciones (descripción en texto)

1. **Autor**: Representa a los escritores de los libros.
   Atributos: {id_autor, nombre}

2. **Libro**: Representa los libros disponibles en la biblioteca.
   Atributos: {id_libro, titulo, año}

3. **LibroAutor**: Relaciona libros y autores (muchos a muchos).
   Atributos: {id_libro, id_autor}

4. **Socio**: Personas registradas que pueden solicitar préstamos.
   Atributos: {id_socio, nombre, email}

5. **Préstamo**: Registra los préstamos realizados por los socios.
   Atributos: {id_prestamo, id_socio, id_libro, fecha, devuelto}


**Relaciones:**
- Un libro puede tener uno o varios autores (N:M, mediante LibroAutor).
- Un autor puede haber escrito varios libros (N:M, mediante LibroAutor).
- Un socio puede tomar prestados varios libros (1:N, mediante Préstamo).
- Cada préstamo queda registrado con su fecha y si fue devuelto o no.

---

## B. Diagrama Entidad-Relación (ER)

1. **Autor**---N---+Escribe+---M---**Libro**
2. **Socio**---1---+Realiza+---N---**Préstamo**
3. **Libro**---1---+EsPrestadoEn+---N---**Préstamo**

> Nota: Solo se muestran las entidades fuertes (Autor, Libro, Socio, Préstamo). Las relaciones y la tabla intermedia (LibroAutor) se representan en el diagrama como conexiones entre entidades fuertes.


---



## Extras: Comandos para iniciar sesión y crear la base de datos

```sql
-- Iniciar sesión en MySQL (en consola o terminal):
mysql -u root -p

-- Crear la base de datos:
CREATE DATABASE Biblioteca;
USE Biblioteca;
```


## D. Diccionario de Datos y Comandos de Creación

### 1. Comandos para crear la base de datos y las tablas

A continuación se documentan los comandos SQL utilizados para crear cada tabla del modelo, especificando los campos, tipos de datos, claves primarias y foráneas:

### 1. Tabla Autor
```sql
CREATE TABLE Autor (
  id_autor INT PRIMARY KEY,
  nombre VARCHAR(100)
);
```

### 2. Tabla Libro
```sql
CREATE TABLE Libro (
  id_libro INT PRIMARY KEY,
  titulo VARCHAR(150),
  año INT
);
```

### 3. Tabla Socio
```sql
CREATE TABLE Socio (
  id_socio INT PRIMARY KEY,
  nombre VARCHAR(100),
  email VARCHAR(100)
);
```

### 4. Tabla Préstamo
```sql
CREATE TABLE Prestamo (
  id_prestamo INT PRIMARY KEY,
  id_socio INT,
  id_libro INT,
  fecha DATE,
  devuelto BOOL,
  FOREIGN KEY (id_socio) REFERENCES Socio(id_socio),
  FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
);
```

### 5. Tabla LibroAutor (relación N:M)
```sql
CREATE TABLE LibroAutor (
  id_libro INT,
  id_autor INT,
  PRIMARY KEY (id_libro, id_autor),
  FOREIGN KEY (id_libro) REFERENCES Libro(id_libro),
  FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);
```


---

### 2. Comandos para agregar datos de ejemplo

```sql
-- Insertar autores
INSERT INTO Autor (id_autor, nombre) VALUES
  (1, 'Samaria Cervantes'),
  (2, 'Ayon Gomez Gerardo'),
  (3, 'Martinez Jacobo');

-- Insertar libros
INSERT INTO Libro (id_libro, titulo, año) VALUES
  (1, 'Base datos', 2006);
  (2, 'Projecto integrador', 2006);
  (3, 'Harry Potter y la piedra filosofal', 2005);

-- Insertar socios
INSERT INTO Socio (id_socio, nombre, email) VALUES
  (1, 'Gerardo Rodriguez','carlos.mendez@email.com');

-- Insertar préstamos
INSERT INTO Prestamo (id_prestamo, id_socio, id_libro, fecha, devuelto) VALUES
  (1, 1, 1, '2025-07-01', TRUE),
  (2, 1, 3, '2025-07-05', FALSE),
  (3, 1, 2, '2025-07-09', FALSE);

-- Insertar relaciones libro-autor
INSERT INTO LibroAutor (id_libro, id_autor) VALUES
  (1, 1),
  (2, 2),
  (3, 3);
```

---

Este diccionario de datos describe la estructura de cada tabla y los comandos SQL necesarios para crearlas, así como los comandos para insertar datos de ejemplo, incluyendo las claves primarias y foráneas que aseguran la integridad referencial del sistema de biblioteca.
