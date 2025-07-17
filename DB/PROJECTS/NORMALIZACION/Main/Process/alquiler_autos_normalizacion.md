# Preguntas y Respuestas para Normalización de Alquiler de Autos

## Preguntas para analizar la tabla de alquiler_autos

### 1FN
- ¿Algún campo del alquiler almacena más de un valor por registro? (Ejemplo: varios autos, varios clientes, varios periodos en una sola celda)
- Respuesta: No, cada campo almacena un solo valor por registro.

### 2FN
- ¿La clave primaria es compuesta? Si es así, ¿algún atributo depende solo de una parte de la clave?
- Respuesta: Sí, la clave puede ser compuesta (por ejemplo, id_alquiler + id_auto). Todos los atributos deben depender de toda la clave.

### 3FN
- ¿Algún atributo depende de otro atributo que no sea clave primaria?
- Respuesta: No, todos los atributos dependen únicamente de la clave primaria.

## Ejemplo de tabla alquiler_autos antes de normalizar
| id_alquiler | fecha_inicio | fecha_fin | id_cliente | nombre_cliente | id_auto | modelo_auto | precio_diario | total |
|-------------|-------------|-----------|------------|---------------|---------|-------------|--------------|-------|
| 1           |2025-07-10   |2025-07-15 | 101        | Juan Pérez    | 201     | Versa       | 500          | 2500  |
| 2           |2025-07-12   |2025-07-14 | 102        | Ana López     | 202     | Sentra      | 600          | 1200  |


## Proceso de normalización

### 1FN
Lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

### 2FN
Ya con los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, id_alquiler e id_auto). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del cliente va en la tabla de clientes y el modelo y precio del auto en la de autos. Así evito que se repita información y todo queda más limpio.

### 3FN
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Por ejemplo, el total se puede calcular con los días y el precio, así que no lo guardo en la tabla de alquileres. Así me aseguro que todo esté bien normalizado y sin redundancias.

## Tablas resultantes
- Alquileres: id_alquiler, fecha_inicio, fecha_fin, id_cliente
- Detalle_Alquiler: id_alquiler, id_auto
- Clientes: id_cliente, nombre_cliente
- Autos: id_auto, modelo_auto, precio_diario

---

Así se asegura la normalización hasta la 3FN.
