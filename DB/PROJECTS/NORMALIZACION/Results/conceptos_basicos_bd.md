# ¿Qué es una Entidad en Base de Datos?

Una entidad es cualquier objeto, persona, lugar o concepto sobre el que se necesita almacenar información en una base de datos. Ejemplos: Campus, Evento, Participante.

## ¿Qué es un Atributo?

Un atributo es una característica o propiedad de una entidad. Ejemplo: nombre, fecha, tipo.

---

# ¿Qué es un Diagrama ER?

El Diagrama Entidad-Relación (ER) es una representación gráfica de las entidades y sus relaciones. Ayuda a visualizar cómo se conectan los datos.

Ejemplo:

Campus ---1------[organiza]---N------ Eventos
Participantes ---N------[participan]---M------ Eventos

---

# ¿Qué es un Diccionario de Datos?

Es una tabla o documento donde se describe cada atributo, su tipo de dato y su propósito. Ejemplo:

| Entidad        | Atributo         | Tipo de dato   | Descripción                |
|---------------|------------------|----------------|----------------------------|
| Campus        | clave_campus     | CHAR(5)        | Clave única del campus     |
| Campus        | nombre_campus    | VARCHAR(100)   | Nombre del campus          |
| Eventos       | id_evento        | INT            | Identificador del evento   |
| Participantes | curp             | CHAR(18)       | Clave única del participante|

---

# ¿Qué es DDL?

DDL (Data Definition Language) es el conjunto de comandos SQL para definir y modificar la estructura de la base de datos (CREATE, ALTER, DROP).

Ejemplo:

```sql
CREATE TABLE Campus (
  clave_campus CHAR(5) PRIMARY KEY,
  nombre_campus VARCHAR(100) NOT NULL
);
```

---

# ¿Cómo aplicar estos conceptos?

1. Identifica las entidades y sus atributos.
2. Dibuja el diagrama ER.
3. Haz el diccionario de datos.
4. Escribe los scripts DDL para crear las tablas.

---

Este archivo te ayuda a comprender los conceptos básicos para modelar una base de datos relacional.
