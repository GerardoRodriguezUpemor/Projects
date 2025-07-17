# Hospital - 2FN

## Proceso
- Se identifica la clave primaria compuesta: (id_consulta, id_paciente, id_medico).
- Se eliminan atributos que dependen solo de una parte de la clave.

## Tablas
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
| id_medico | nombre_medico |
|-----------|---------------|
| 201       | Dr. Ruiz      |
| 202       | Dra. Gómez    |
