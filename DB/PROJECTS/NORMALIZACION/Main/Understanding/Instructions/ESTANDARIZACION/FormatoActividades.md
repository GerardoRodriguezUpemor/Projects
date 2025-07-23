# “TITULO”

**Formato para la Entrega de Ejercicios de Base de Datos**

**Nombre del alumno:** Rodriguez Cabrera Gerardo Antonio

**Fecha de Entrega:** miércoles, 2 de julio de 2025

---

## A. Entidades y Relaciones (descripción en texto)

1.  Entidad{atributos_formato}

## B. Diagrama Entidad-Relación (ER)

1.  Entidad_Ejemplo1---N---<descripción>---M---Entidad_Ejemplo2

## C. Diagrama Relacional (modelo lógico)

```text
+--------------------------+           +--------------------------+           +--------------------------+
|         Libros           |           |         Prestamos        |           |       Estudiantes        |
+--------------------------+           +--------------------------+           +--------------------------+
| PK | id_libro            |           | PK | id_prestamo         |           | PK | id_estudiante       |
|    | nombre_completo     |-----------| FK | id_libro            |           |    | nombre_completo     |
|    | autor_nombre_completo|           | FK | id_estudiante       |-----------|    | carrera_en_curso    |
|    | fecha_publicacion   |           |    | fecha_prestamo      |           +--------------------------+
+--------------------------+           |    | estado_libro        |
                                       +--------------------------+
```

## D. Diccionario de Datos

1.  CONTINUA ME FALTA SUBIR INFORMACION ASI DEJALO…

## E. Instrucciones DDL (código SQL)

1.  CONTINUA ME FALTA SUBIR INFORMACION ASI DEJALO…

## F. Pruebas del sistema (capturas de pantalla)

1.  CONTINUA ME FALTA SUBIR INFORMACION ASI DEJALO…
