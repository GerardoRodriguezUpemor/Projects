# Comandos SQL para Tablas: Estructura y Explicación

## 1. CREATE TABLE

**Estructura:**
```sql
CREATE TABLE nombre_tabla (columna1 tipo_dato, columna2 tipo_dato, ...);
```
**Explicación:**
Crea una nueva tabla en la base de datos, definiendo sus columnas, tipos de datos y restricciones como PRIMARY KEY, UNIQUE, NOT NULL, etc. Es fundamental para organizar y almacenar datos de manera estructurada.

## 2. ALTER TABLE

**Estructura:**
```sql
ALTER TABLE nombre_tabla ADD columna tipo_dato;
```
**Explicación:**
Permite modificar la estructura de una tabla existente. Se puede agregar, eliminar o modificar columnas, así como cambiar restricciones y tipos de datos. Es útil para adaptar la tabla a nuevas necesidades.

## 3. DROP TABLE

**Estructura:**
```sql
DROP TABLE nombre_tabla;
```
**Explicación:**
Elimina una tabla y todos sus datos de la base de datos. Esta acción es irreversible, por lo que debe usarse con precaución.

## 4. CREATE INDEX

**Estructura:**
```sql
CREATE INDEX nombre_indice ON nombre_tabla (columna);
```
**Explicación:**
Crea un índice sobre una o varias columnas de una tabla para mejorar la velocidad de las consultas. No afecta los datos, solo la forma en que se accede a ellos.

## 5. DROP INDEX

**Estructura:**
```sql
DROP INDEX nombre_indice;
```
**Explicación:**
Elimina un índice previamente creado. Puede afectar el rendimiento de las consultas que dependían de ese índice.

## 6. CREATE VIEW

**Estructura:**
```sql
CREATE VIEW nombre_vista AS SELECT columna1, columna2 FROM nombre_tabla WHERE condición;
```
**Explicación:**
Crea una vista, que es una consulta almacenada como un objeto de la base de datos. Facilita consultas complejas, mejora la seguridad y puede simplificar el acceso a los datos.

## 7. DROP VIEW

**Estructura:**
```sql
DROP VIEW nombre_vista;
```
**Explicación:**
Elimina una vista de la base de datos. No afecta los datos originales, solo la consulta almacenada.
