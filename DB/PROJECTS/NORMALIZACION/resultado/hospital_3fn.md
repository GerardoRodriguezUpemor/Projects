# Hospital - 3FN

## Proceso
- Se eliminan dependencias transitivas.
- Todos los atributos dependen únicamente de la clave primaria.


## Tablas finales
### Consultas
| id_consulta | id_paciente | id_medico | fecha | diagnostico | tratamiento |
|------------|-------------|-----------|-------|-------------|-------------|
| 1          | 101         | 201       |2025-07-16| Gripe       | Paracetamol |
| 2          | 102         | 202       |2025-07-17| Fractura    | Yeso        |

### Pacientes
| id_paciente | nombre_paciente |
|-------------|-----------------|
| 101         | Juan Pérez      |
| 102         | Ana López       |

### Medicos
| id_medico | nombre_medico | id_especialidad |
|-----------|---------------|-----------------|
| 201       | Dr. Ruiz      | 301             |
| 202       | Dra. Gómez    | 302             |

### Especialidades
| id_especialidad | nombre_especialidad |
|-----------------|--------------------|
| 301             | Medicina General   |
| 302             | Traumatología      |

### Habitaciones
| id_habitacion | tipo_habitacion |
|---------------|----------------|
| 401           | Individual      |
| 402           | Compartida      |

### Asignación de Habitación
| id_paciente | id_habitacion |
|-------------|---------------|
| 101         | 401           |
| 102         | 402           |
