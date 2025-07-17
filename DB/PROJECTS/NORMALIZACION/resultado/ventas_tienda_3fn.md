# Ventas Tienda - 3FN

## Proceso
- Se eliminan dependencias transitivas.
- Todos los atributos dependen únicamente de la clave primaria.
- El campo "total" se elimina, ya que puede calcularse como cantidad * precio_unitario.


## Tablas finales
### Ventas
| id_venta | fecha | id_cliente | id_empleado |
|----------|-------|------------|-------------|
| 1        |2025-07-16| 101        | 301         |
| 2        |2025-07-16| 102        | 302         |

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

### Empleados
| id_empleado | nombre_empleado |
|-------------|-----------------|
| 301         | Carlos Ruiz     |
| 302         | Laura Gómez     |

### Asignación de Empleado
| id_producto | id_empleado |
|-------------|-------------|
| 201         | 301         |
| 202         | 302         |
