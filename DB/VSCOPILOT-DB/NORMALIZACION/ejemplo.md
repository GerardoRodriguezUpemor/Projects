# Ejemplo de Modelado de Base de Datos

## 1. Lista de entidades con sus atributos (entre llaves)

- **Campus** `{clave_campus, nombre_campus, direccion, nombre_director}`
- **Eventos** `{id_evento, nombre_evento, tipo_evento, area_temática, fecha_inicio, fecha_fin}`
- **Participantes** `{curp, nombre_completo, institucion, correo, tipo_participante}`
- **Ponencias** `{id_ponencia, titulo, area_tematica, resumen, fecha_presentacion, modalidad}`
- **Evaluaciones** `{id_evaluacion, fecha_evaluacion, criterio_calidad, criterio_relevancia, comentario}`
- **Certificados** `{codigo_certificado, fecha_emision, rol_reconocido, horas_acumuladas}`

## 2. Diagrama ER

Campus ---1------[organiza]---N------ Eventos

Participantes ---N------[participan]---M------ Eventos

Participantes ---1------[presentar]---N------ Ponencias

Ponencias ---N------[coautores]---M------ Participantes

Ponencias ---1------[tiene]---N------ Evaluaciones

Participantes ---1------[realizan]---N------ Evaluaciones

Participantes ---1------[reciben]---N------ Certificados

Eventos ---1------[generan]---N------ Certificados

## 4. Diccionario de datos

## 5. Códigos DDL

### 1. Campus Universitario

```sql
CREATE TABLE Campus (
  clave_campus CHAR(5) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(150),
  ciudad VARCHAR(50),
  director_general VARCHAR(100)
);
```

### 2. Evento Académico

```sql
CREATE TABLE Eventos (
  id_evento INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  tipo_evento ENUM('Congreso', 'Simposio', 'Foro', 'Taller') NOT NULL,
  area_tematica VARCHAR(100),
  fecha_inicio DATE,
  fecha_fin DATE,
  clave_campus CHAR(5),
  FOREIGN KEY (clave_campus) REFERENCES Campus(clave_campus)
);
```

### 3. Participantes

```sql
CREATE TABLE Participantes (
  curp CHAR(18) PRIMARY KEY,
  nombre_completo VARCHAR(100) NOT NULL,
  institucion VARCHAR(100),
  correo_electronico VARCHAR(100),
  tipo_participante ENUM('Estudiante', 'Docente', 'Investigador', 'Externo') NOT NULL
);
```

### 4. Registro de Participación en Eventos

```sql
CREATE TABLE Eventos_Participantes (
  curp CHAR(18),
  id_evento INT,
  PRIMARY KEY (curp, id_evento),
  FOREIGN KEY (curp) REFERENCES Participantes(curp),
  FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento)
);
```
