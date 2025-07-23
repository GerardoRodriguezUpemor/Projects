# Normalización de la tabla Ventas en una tienda

## Tabla original

| Folio Venta | Fecha      | Nombre Cliente  | Teléfono  | Producto  | Precio Unitario | Cantidad | Vendedor | Sucursal |
|-------------|------------|-----------------|-----------|-----------|-----------------|----------|----------|----------|
| F001        | 2025-07-01 | Luis Hernández  | 555-1234  | Laptop    | 15000           | 1        | Marta    | Centro   |
| F001        | 2025-07-01 | Luis Hernández  | 555-1234  | Mouse     | 300             | 2        | Marta    | Centro   |
| F002        | 2025-07-01 | Ana Lira        | 555-6789  | Impresora | 2500            | 1        | David    | Norte    |

---

## 1FN: Análisis y comprobación
Aquí lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

**Comprobación:**
- Todos los campos contienen un solo valor (atómico), no hay listas ni conjuntos.
- La tabla cumple con 1FN.

---

## 2FN: Análisis y comprobación
Ya que tengo los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, Folio Venta + Producto). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del cliente va en la tabla de clientes y el nombre del producto en la de productos. Así evito que se repita información y todo queda más limpio.

**Claves y dependencias:**
- Clave primaria compuesta: Folio Venta + Producto
- "Nombre Cliente" y "Teléfono" dependen solo de Folio Venta
- "Producto" y "Precio Unitario" dependen solo de Producto
- "Vendedor" y "Sucursal" dependen solo de Folio Venta

**Tablas después de 2FN:**

### Ventas
| Folio Venta | Producto  | Cantidad |
|-------------|-----------|----------|
| F001        | Laptop    | 1        |
| F001        | Mouse     | 2        |
| F002        | Impresora | 1        |

### Clientes
| Folio Venta | Nombre Cliente  | Teléfono  |
|-------------|-----------------|-----------|
| F001        | Luis Hernández  | 555-1234  |
| F002        | Ana Lira        | 555-6789  |

### Productos
| Producto  | Precio Unitario |
|-----------|-----------------|
| Laptop    | 15000           |
| Mouse     | 300             |
| Impresora | 2500            |

### Vendedores
| Folio Venta | Vendedor | Sucursal |
|-------------|----------|----------|
| F001        | Marta    | Centro   |
| F002        | David    | Norte    |

---

## 3FN: Análisis y comprobación
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Así me aseguro de que todo esté bien normalizado y sin redundancias.

**Dependencias transitivas:**
- "Sucursal" depende de "Vendedor", no directamente de la clave primaria de Ventas.
- "Nombre Cliente" y "Teléfono" dependen de la entidad cliente, no directamente de la clave primaria de Ventas.
- "Precio Unitario" depende de "Producto".

**Tablas después de 3FN (modelo robusto):**

### Ventas
| folio_venta | fecha      | id_cliente | id_vendedor |
|-------------|------------|------------|-------------|
| F001        | 2025-07-01 | 1          | 1           |
| F002        | 2025-07-01 | 2          | 2           |

### Detalle_Venta
| folio_venta | id_producto | cantidad |
|-------------|-------------|----------|
| F001        | 1           | 1        |
| F001        | 2           | 2        |
| F002        | 3           | 1        |

### Clientes
| id_cliente | nombre_cliente  | telefono  |
|------------|-----------------|-----------|
| 1          | Luis Hernández  | 555-1234  |
| 2          | Ana Lira        | 555-6789  |

### Productos
| id_producto | producto  | precio_unitario |
|-------------|-----------|-----------------|
| 1           | Laptop    | 15000           |
| 2           | Mouse     | 300             |
| 3           | Impresora | 2500            |

### Vendedores
| id_vendedor | nombre_vendedor | id_sucursal |
|-------------|-----------------|-------------|
| 1           | Marta           | 1           |
| 2           | David           | 2           |

### Sucursales
| id_sucursal | nombre_sucursal |
|-------------|-----------------|
| 1           | Centro          |
| 2           | Norte           |

---

**Conclusión:**
Con este proceso paso a paso, la tabla original queda completamente normalizada hasta 3FN, eliminando redundancias y asegurando integridad en los datos, siguiendo el modelo robusto y relacional.
