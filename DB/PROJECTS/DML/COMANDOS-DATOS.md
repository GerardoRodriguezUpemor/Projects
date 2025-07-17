# Comandos SQL: Estructura y Explicación

## 1. CREATE DATABASE

**Estructura:**
```sql
CREATE DATABASE nombre_base_de_datos;
```
**Explicación:**
Crea una nueva base de datos vacía en el sistema gestor. Permite organizar y almacenar tablas, vistas, procedimientos y otros objetos. Se puede especificar opciones adicionales como el juego de caracteres.

## 2. CREATE TABLE

**Estructura:**
```sql
CREATE TABLE nombre_tabla (columna1 tipo_dato, columna2 tipo_dato, ...);
```
**Explicación:**
Crea una nueva tabla dentro de una base de datos, definiendo sus columnas y tipos de datos. Se pueden agregar restricciones como PRIMARY KEY, UNIQUE, NOT NULL, etc.

## 3. ALTER TABLE

**Estructura:**
```sql
ALTER TABLE nombre_tabla ADD columna tipo_dato;
```
**Explicación:**
Modifica la estructura de una tabla existente. Permite agregar, eliminar o modificar columnas, así como cambiar restricciones.

## 4. DROP DATABASE

**Estructura:**
```sql
DROP DATABASE nombre_base_de_datos;
```
**Explicación:**
Elimina una base de datos completa y todos sus objetos. Es irreversible, por lo que debe usarse con precaución.

## 5. DROP TABLE

**Estructura:**
```sql
DROP TABLE nombre_tabla;
```
**Explicación:**
Elimina una tabla y todos sus datos de la base de datos. No se puede recuperar la información eliminada.

## 6. CREATE INDEX

**Estructura:**
```sql
CREATE INDEX nombre_indice ON nombre_tabla (columna);
```
**Explicación:**
Crea un índice para mejorar la velocidad de las consultas sobre una o varias columnas. No afecta los datos, solo la forma en que se accede a ellos.

## 7. DROP INDEX

**Estructura:**
```sql
DROP INDEX nombre_indice;
```
**Explicación:**
Elimina un índice previamente creado. Puede afectar el rendimiento de las consultas que usaban ese índice.

## 8. INSERT INTO

**Estructura:**
```sql
INSERT INTO nombre_tabla (columna1, columna2, ...) VALUES (valor1, valor2, ...);
```
**Explicación:**
Agrega nuevos registros a una tabla. Se pueden insertar varios registros a la vez o usar una consulta SELECT para insertar datos.

## 9. UPDATE

**Estructura:**
```sql
UPDATE nombre_tabla SET columna = valor WHERE condición;
```
**Explicación:**
Modifica los valores de una o varias columnas en los registros que cumplen una condición. Es importante usar WHERE para evitar cambios globales.

## 10. DELETE

**Estructura:**
```sql
DELETE FROM nombre_tabla WHERE condición;
```
**Explicación:**
Elimina registros de una tabla según una condición. Si no se usa WHERE, elimina todos los registros.

## 11. SELECT

**Estructura:**
```sql
SELECT columna1, columna2 FROM nombre_tabla WHERE condición;
```
**Explicación:**
Consulta y recupera datos de una o varias tablas. Permite filtrar, ordenar, agrupar y combinar información.

## 12. CREATE VIEW

**Estructura:**
```sql
CREATE VIEW nombre_vista AS SELECT columna1, columna2 FROM nombre_tabla WHERE condición;
```
**Explicación:**
Crea una vista, que es una consulta almacenada como un objeto de la base de datos. Facilita consultas complejas y mejora la seguridad.

## 13. DROP VIEW

**Estructura:**
```sql
DROP VIEW nombre_vista;
```
**Explicación:**
Elimina una vista de la base de datos. No afecta los datos originales.

## 14. CREATE PROCEDURE

**Estructura:**
```sql
CREATE PROCEDURE nombre_procedimiento() BEGIN ... END;
```
**Explicación:**
Crea un procedimiento almacenado, que es un conjunto de instrucciones SQL que se pueden ejecutar como una sola unidad. Permite automatizar tareas y operaciones repetitivas.

## 15. CALL PROCEDURE

**Estructura:**
```sql
CALL nombre_procedimiento();
```
**Explicación:**
Ejecuta un procedimiento almacenado previamente creado. Puede aceptar parámetros y devolver resultados.
