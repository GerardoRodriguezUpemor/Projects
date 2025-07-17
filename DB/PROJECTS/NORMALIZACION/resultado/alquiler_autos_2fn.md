# Alquiler Autos - 2FN

## Proceso
- Se identifica la clave primaria compuesta: (id_alquiler, id_auto).
- Se eliminan atributos que dependen solo de una parte de la clave.

## Tablas
### Alquileres
| id_alquiler | fecha_inicio | fecha_fin | id_cliente |
|-------------|-------------|-----------|------------|
| 1           |2025-07-10   |2025-07-15 | 101        |
| 2           |2025-07-12   |2025-07-14 | 102        |

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
