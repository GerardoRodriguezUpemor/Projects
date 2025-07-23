# Normalización de la tabla Hospital

## Tabla original

| ID Atención | Fecha      | Nombre Paciente | CURP           | Doctor      | Especialidad  | Costo Consulta | Diagnóstico   |
|-------------|------------|-----------------|----------------|-------------|--------------|----------------|---------------|
| A001        | 2025-06-30 | María López     | LOPM850101MDF  | Dr. Ramírez | Cardiología  | 1000           | Hipertensión  |
| A002        | 2025-07-01 | Carlos Ruiz     | RUIC900505HDF  | Dr. Ramírez | Cardiología  | 1000           | Arritmia      |
| A003        | 2025-07-01 | Luisa García    | GAIL930203MDF  | Dra. Salas  | Dermatología | 800            | Dermatitis    |

---

## 1FN: Análisis y comprobación
Aquí lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

**Comprobación:**
- Todos los campos contienen un solo valor (atómico), no hay listas ni conjuntos.
- La tabla cumple con 1FN.

---

## 2FN: Análisis y comprobación
Ya que tengo los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, ID Atención + CURP). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del paciente va en la tabla de pacientes y la especialidad en la de especialidades. Así evito que se repita información y todo queda más limpio.

**Claves y dependencias:**
- Clave primaria: ID Atención
- "Nombre Paciente" y "CURP" dependen de Paciente
- "Doctor" y "Especialidad" dependen de la atención, pero "Especialidad" depende de Doctor
- "Diagnóstico" depende de la atención

**Tablas después de 2FN:**

### Atenciones
| ID Atención | Fecha      | CURP           | Doctor      | Costo Consulta | Diagnóstico   |
|-------------|------------|----------------|-------------|----------------|---------------|
| A001        | 2025-06-30 | LOPM850101MDF  | Dr. Ramírez | 1000           | Hipertensión  |
| A002        | 2025-07-01 | RUIC900505HDF  | Dr. Ramírez | 1000           | Arritmia      |
| A003        | 2025-07-01 | GAIL930203MDF  | Dra. Salas  | 800            | Dermatitis    |

### Pacientes
| CURP           | Nombre Paciente |
|----------------|-----------------|
| LOPM850101MDF  | María López     |
| RUIC900505HDF  | Carlos Ruiz     |
| GAIL930203MDF  | Luisa García    |

### Doctores
| Doctor      | Especialidad  |
|-------------|--------------|
| Dr. Ramírez | Cardiología  |
| Dra. Salas  | Dermatología |

---

## 3FN: Análisis y comprobación
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Así me aseguro de que todo esté bien normalizado y sin redundancias.

**Dependencias transitivas:**
- "Especialidad" depende de la entidad doctor, no directamente de la clave primaria de Atenciones.
- "Nombre Paciente" depende de la entidad paciente.

**Tablas después de 3FN (modelo robusto):**

### Atenciones
| id_atencion | fecha      | id_paciente | id_doctor | costo_consulta | diagnostico   |
|-------------|------------|-------------|-----------|---------------|---------------|
| 1           | 2025-06-30 | 1           | 1         | 1000          | Hipertensión  |
| 2           | 2025-07-01 | 2           | 1         | 1000          | Arritmia      |
| 3           | 2025-07-01 | 3           | 2         | 800           | Dermatitis    |

### Pacientes
| id_paciente | nombre_paciente | curp           |
|-------------|-----------------|----------------|
| 1           | María López     | LOPM850101MDF  |
| 2           | Carlos Ruiz     | RUIC900505HDF  |
| 3           | Luisa García    | GAIL930203MDF  |

### Doctores
| id_doctor | nombre_doctor | id_especialidad |
|-----------|---------------|-----------------|
| 1         | Dr. Ramírez   | 1               |
| 2         | Dra. Salas    | 2               |

### Especialidades
| id_especialidad | nombre_especialidad |
|-----------------|--------------------|
| 1               | Cardiología        |
| 2               | Dermatología       |

---

**Conclusión:**
Con este proceso paso a paso, la tabla original queda completamente normalizada hasta 3FN, eliminando redundancias y asegurando integridad en los datos, siguiendo el modelo robusto y relacional.
