# Biblioteca - 2FN

## Proceso
- Se identifica la clave primaria compuesta: (id_prestamo, id_libro).
- Se eliminan atributos que dependen solo de una parte de la clave.

## Tablas
### Prestamos
| id_prestamo | fecha_prestamo | fecha_devolucion | id_usuario |
|-------------|---------------|------------------|------------|
| 1           |2025-07-01     |2025-07-10        | 101        |
| 2           |2025-07-02     |2025-07-12        | 102        |

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
