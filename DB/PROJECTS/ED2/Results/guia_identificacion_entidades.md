# Guía para Identificar Entidades y Crear un Modelo de Base de Datos

## 1. ¿Cómo identificar entidades y atributos?

- **Entidades**: Son objetos o conceptos principales sobre los que se almacena información (por ejemplo: Campus, Evento, Participante).
- **Atributos**: Son las características o datos que describen a cada entidad (por ejemplo: nombre, fecha, tipo).

### Ejemplo:

- **Campus** `{clave_campus, nombre_campus, direccion, nombre_director}`
- **Eventos** `{id_evento, nombre_evento, tipo_evento, area_temática, fecha_inicio, fecha_fin}`
- **Participantes** `{curp, nombre_completo, institucion, correo, tipo_participante}`

## 2. Diagrama ER (Relaciones entre entidades)

Campus ---1------[organiza]---N------ Eventos

Participantes ---N------[participan]---M------ Eventos

Participantes ---1------[presentar]---N------ Ponencias

## 3. Diccionario de datos

Describe cada atributo y su tipo de dato.

## 4. Ejemplo de código DDL

```sql
CREATE TABLE Campus (
  clave_campus CHAR(5) PRIMARY KEY,
  nombre_campus VARCHAR(100) NOT NULL,
  direccion VARCHAR(150),
  nombre_director VARCHAR(100)
);

CREATE TABLE Eventos (
  id_evento INT PRIMARY KEY,
  nombre_evento VARCHAR(100) NOT NULL,
  tipo_evento VARCHAR(50),
  area_temática VARCHAR(100),
  fecha_inicio DATE,
  fecha_fin DATE,
  clave_campus CHAR(5),
  FOREIGN KEY (clave_campus) REFERENCES Campus(clave_campus)
);

CREATE TABLE Participantes (
  curp CHAR(18) PRIMARY KEY,
  nombre_completo VARCHAR(100) NOT NULL,
  institucion VARCHAR(100),
  correo VARCHAR(100),
  tipo_participante VARCHAR(50)
);
```

## 5. Recomendaciones

- Lee el enunciado y subraya los objetos principales (entidades).
- Enumera los atributos de cada entidad.
- Dibuja el diagrama ER para visualizar las relaciones.
- Escribe el diccionario de datos y los scripts DDL para crear las tablas.

---

Este ejemplo sigue el formato del archivo `ejemplo.md` de NORMALIZACION. Puedes adaptarlo para cualquier caso práctico de modelado de base de datos.
