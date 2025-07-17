# Biblioteca - 3FN

## Proceso
- Se eliminan dependencias transitivas.
- Todos los atributos dependen únicamente de la clave primaria.


## Tablas finales
### Prestamos
| id_prestamo | fecha_prestamo | fecha_devolucion | id_usuario | id_empleado |
|-------------|---------------|------------------|------------|-------------|
| 1           |2025-07-01     |2025-07-10        | 101        | 301         |
| 2           |2025-07-02     |2025-07-12        | 102        | 302         |

### Detalle_Prestamo
| id_prestamo | id_libro |
|-------------|----------|
| 1           | 201      |
| 2           | 202      |

### Usuarios
| id_usuario | nombre_usuario |
|------------|---------------|
| 101        | Juan Pérez    |
| 102        | Ana López     |

### Libros
| id_libro | titulo_libro | autor | categoria |
|---------|--------------|-------|-----------|
| 201     | Cien Años de Soledad | García Márquez | Novela |
| 202     | El Principito         | Saint-Exupéry  | Infantil|

### Empleados
| id_empleado | nombre_empleado |
|-------------|-----------------|
| 301         | Carlos Ruiz     |
| 302         | Laura Gómez     |

### Asignación de Empleado
| id_libro | id_empleado |
|----------|-------------|
| 201      | 301         |
| 202      | 302         |
