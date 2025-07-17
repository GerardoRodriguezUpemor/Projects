# Preguntas y Respuestas para Normalización de Ventas en Tienda

## Preguntas para analizar la tabla de ventas_tienda

### 1FN
- ¿Algún campo de la venta almacena más de un valor por registro? (Ejemplo: varios productos, varios métodos de pago, varios clientes en una sola celda)
- Respuesta: No, cada campo almacena un solo valor por registro.

### 2FN
- ¿La clave primaria es compuesta? Si es así, ¿algún atributo depende solo de una parte de la clave?
- Respuesta: Sí, la clave puede ser compuesta (por ejemplo, id_venta + id_producto). Todos los atributos deben depender de toda la clave.

### 3FN
- ¿Algún atributo depende de otro atributo que no sea clave primaria?
- Respuesta: No, todos los atributos dependen únicamente de la clave primaria.

## Ejemplo de tabla ventas_tienda antes de normalizar
| id_venta | fecha | id_cliente | nombre_cliente | id_producto | nombre_producto | cantidad | precio_unitario | total |
|----------|-------|------------|---------------|-------------|-----------------|----------|-----------------|-------|
| 1        |2025-07-16| 101        | Juan Pérez    | 201         | Pan             | 2        | 10              | 20    |
| 2        |2025-07-16| 102        | Ana López     | 202         | Leche           | 1        | 15              | 15    |


## Proceso de normalización

### 1FN
Lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

### 2FN
Ya con los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, id_venta e id_producto). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del cliente va en la tabla de clientes y el nombre y precio del producto en la de productos. Así evito que se repita información y todo queda más limpio.

### 3FN
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Por ejemplo, el total se puede calcular con la cantidad y el precio unitario, así que no lo guardo en la tabla de ventas. Así me aseguro que todo esté bien normalizado y sin redundancias.

## Tablas resultantes
- Ventas: id_venta, fecha, id_cliente
- Detalle_Venta: id_venta, id_producto, cantidad
- Clientes: id_cliente, nombre_cliente
- Productos: id_producto, nombre_producto, precio_unitario

---

Así se asegura la normalización hasta la 3FN.
