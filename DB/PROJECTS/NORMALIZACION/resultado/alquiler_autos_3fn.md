# Alquiler Autos - 3FN

## Proceso
- Se eliminan dependencias transitivas.
- Todos los atributos dependen únicamente de la clave primaria.
- El campo "total" se elimina, ya que puede calcularse como días * precio_diario.


## Tablas finales
### Alquileres
| id_alquiler | fecha_inicio | fecha_fin | id_cliente | id_empleado |
|-------------|-------------|-----------|------------|-------------|
| 1           |2025-07-10   |2025-07-15 | 101        | 301         |
| 2           |2025-07-12   |2025-07-14 | 102        | 302         |

### Detalle_Alquiler
| id_alquiler | id_auto |
|-------------|---------|
| 1           | 201     |
| 2           | 202     |

### Clientes
| id_cliente | nombre_cliente |
|------------|---------------|
| 101        | Juan Pérez    |
| 102        | Ana López     |

### Autos
| id_auto | modelo_auto | precio_diario |
|--------|-------------|--------------|
| 201    | Versa       | 500          |
| 202    | Sentra      | 600          |

### Empleados
| id_empleado | nombre_empleado |
|-------------|-----------------|
| 301         | Carlos Ruiz     |
| 302         | Laura Gómez     |

