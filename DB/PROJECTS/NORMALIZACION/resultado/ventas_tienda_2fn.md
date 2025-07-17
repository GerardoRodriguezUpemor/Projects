# Ventas Tienda - 2FN

## Proceso
- Se identifica la clave primaria compuesta: (id_venta, id_producto).
- Se eliminan atributos que dependen solo de una parte de la clave.

## Tablas
### Ventas
| id_venta | fecha | id_cliente |
|----------|-------|------------|
| 1        |2025-07-16| 101        |
| 2        |2025-07-16| 102        |

### Detalle_Venta
| id_venta | id_producto | cantidad |
|----------|-------------|----------|
| 1        | 201         | 2        |
| 2        | 202         | 1        |

### Clientes
| id_cliente | nombre_cliente |
|------------|---------------|
| 101        | Juan Pérez    |
| 102        | Ana López     |

### Productos
| id_producto | nombre_producto | precio_unitario |
|-------------|-----------------|-----------------|
| 201         | Pan             | 10              |
| 202         | Leche           | 15              |
