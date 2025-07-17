# DML en Bases de Datos

## ¿Qué es DML?

DML (Data Manipulation Language) es un subconjunto de SQL utilizado para gestionar los datos en una base de datos. Las operaciones DML incluyen la inserción, actualización, eliminación y consulta de registros.

## Comandos DML

- **SELECT**: Consulta los datos.
- **INSERT**: Inserta nuevos datos.
- **UPDATE**: Modifica datos existentes.
- **DELETE**: Elimina registros.

## Ejemplos de comandos DML

**SELECT:**
```sql
SELECT nombre, edad FROM empleados WHERE salario > 50000;
```

**INSERT:**
```sql
INSERT INTO empleados (nombre, edad, salario) VALUES ('Juan Pérez', 30, 60000);
```

**UPDATE:**
```sql
UPDATE empleados SET salario = 65000 WHERE nombre = 'Juan Pérez';
```

**DELETE:**
```sql
DELETE FROM empleados WHERE edad < 25;
```