# Preguntas y Respuestas para Normalización de Préstamos de Biblioteca

## Preguntas para analizar la tabla de biblioteca

### 1FN
- ¿Algún campo del préstamo almacena más de un valor por registro? (Ejemplo: varios libros, varios usuarios, varias fechas en una sola celda)
- Respuesta: No, cada campo almacena un solo valor por registro.

### 2FN
- ¿La clave primaria es compuesta? Si es así, ¿algún atributo depende solo de una parte de la clave?
- Respuesta: Sí, la clave puede ser compuesta (por ejemplo, id_prestamo + id_libro). Todos los atributos deben depender de toda la clave.

### 3FN
- ¿Algún atributo depende de otro atributo que no sea clave primaria?
- Respuesta: No, todos los atributos dependen únicamente de la clave primaria.

## Ejemplo de tabla biblioteca antes de normalizar
| id_prestamo | fecha_prestamo | fecha_devolucion | id_usuario | nombre_usuario | id_libro | titulo_libro | autor | categoria |
|-------------|---------------|------------------|------------|---------------|---------|-------------|-------|----------|
| 1           |2025-07-01     |2025-07-10        | 101        | Juan Pérez    | 201     | Cien Años de Soledad | García Márquez | Novela |
| 2           |2025-07-02     |2025-07-12        | 102        | Ana López     | 202     | El Principito         | Saint-Exupéry  | Infantil|


## Proceso de normalización

### 1FN
Lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

### 2FN
Ya con los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, id_prestamo e id_libro). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del usuario va en la tabla de usuarios y el título, autor y categoría del libro en la de libros. Así evito que se repita información y todo queda más limpio.

### 3FN
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Por ejemplo, si tuviera "editorial" y depende del libro, lo mando a la tabla de libros. Así me aseguro que todo esté bien normalizado y sin redundancias.

## Tablas resultantes
- Prestamos: id_prestamo, fecha_prestamo, fecha_devolucion, id_usuario
- Detalle_Prestamo: id_prestamo, id_libro
- Usuarios: id_usuario, nombre_usuario
- Libros: id_libro, titulo_libro, autor, categoria

---

Así se asegura la normalización hasta la 3FN.
