# Normalización de la tabla Alquiler de autos

## Tabla original

| ID Renta | Fecha      | Cliente       | RFC           | Auto  | Placas  | Marca  | Modelo | Precio por Día | Días Rentado |
|----------|------------|--------------|---------------|-------|---------|--------|--------|----------------|--------------|
| R001     | 2025-06-28 | Juan López   | LOPJ800101HG1 | Sedán | ABC123  | Toyota | Corolla| 600            | 3            |
| R002     | 2025-06-29 | Laura Torres | TORL860202MG3 | SUV   | XYZ789  | Honda  | CR-V   | 850            | 2            |
| R003     | 2025-06-29 | Juan López   | LOPJ800101HG1 | SUV   | XYZ789  | Honda  | CR-V   | 850            | 1            |

---

## 1FN: Análisis y comprobación
Aquí lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

**Comprobación:**
- Todos los campos contienen un solo valor (atómico), no hay listas ni conjuntos.
- La tabla cumple con 1FN.

---

## 2FN: Análisis y comprobación
Ya que tengo los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, ID Renta + Placas). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del cliente va en la tabla de clientes y los datos del auto en la de autos. Así evito que se repita información y todo queda más limpio.

**Claves y dependencias:**
- Clave primaria: ID Renta
- "Cliente" y "RFC" dependen de Cliente
- "Auto", "Placas", "Marca", "Modelo", "Precio por Día" dependen de Auto
- "Días Rentado" depende de la renta

**Tablas después de 2FN:**

### Rentas
| ID Renta | Fecha      | RFC           | Placas  | Días Rentado |
|----------|------------|---------------|---------|--------------|
| R001     | 2025-06-28 | LOPJ800101HG1 | ABC123  | 3            |
| R002     | 2025-06-29 | TORL860202MG3 | XYZ789  | 2            |
| R003     | 2025-06-29 | LOPJ800101HG1 | XYZ789  | 1            |

### Clientes
| RFC           | Cliente       |
|---------------|--------------|
| LOPJ800101HG1 | Juan López   |
| TORL860202MG3 | Laura Torres |

### Autos
| Placas  | Auto  | Marca  | Modelo | Precio por Día |
|---------|-------|--------|--------|----------------|
| ABC123  | Sedán | Toyota | Corolla| 600            |
| XYZ789  | SUV   | Honda  | CR-V   | 850            |

---

## 3FN: Análisis y comprobación
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Así me aseguro de que todo esté bien normalizado y sin redundancias.

**Dependencias transitivas:**
- "Cliente" depende de la entidad cliente.
- "Auto", "Marca", "Modelo", "Precio por Día" dependen de la entidad auto.

**Tablas después de 3FN (modelo robusto):**

### Rentas
| id_renta | fecha      | id_cliente | id_auto | dias_rentado |
|----------|------------|------------|---------|--------------|
| 1        | 2025-06-28 | 1          | 1       | 3            |
| 2        | 2025-06-29 | 2          | 2       | 2            |
| 3        | 2025-06-29 | 1          | 2       | 1            |

### Clientes
| id_cliente | nombre_cliente | rfc           |
|------------|---------------|---------------|
| 1          | Juan López    | LOPJ800101HG1 |
| 2          | Laura Torres  | TORL860202MG3 |

### Autos
| id_auto | tipo_auto | placas  | id_marca | id_modelo | precio_por_dia |
|---------|-----------|---------|----------|-----------|----------------|
| 1       | Sedán     | ABC123  | 1        | 1         | 600            |
| 2       | SUV       | XYZ789  | 2        | 2         | 850            |

### Marcas
| id_marca | nombre_marca |
|----------|--------------|
| 1        | Toyota       |
| 2        | Honda        |

### Modelos
| id_modelo | nombre_modelo |
|-----------|---------------|
| 1         | Corolla       |
| 2         | CR-V          |

---

**Conclusión:**
Con este proceso paso a paso, la tabla original queda completamente normalizada hasta 3FN, eliminando redundancias y asegurando integridad en los datos, siguiendo el modelo robusto y relacional.
