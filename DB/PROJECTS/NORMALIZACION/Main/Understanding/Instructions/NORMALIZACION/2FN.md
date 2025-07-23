# Segunda Forma Normal (2FN)

## Regla
Una tabla esta en 2FN si:

1. Esta en 1FN.
2. Todos los atributos no clave dependen completamente de la clave primaria (sin dependencias parciales).

---

## Ejemplo

Antes de 2FN:

| ID | Producto   | Cantidad | Precio |
|----|------------|----------|--------|
| 1  | Producto1  | 10       | 20     |
| 2  | Producto2  | 5        | 30     |

---

**Dependencia parcial:** Producto depende de la clave parcial ID, ya que el precio no depende del ID, sino del producto.

---

## Despues de 2FN (dividiendo en dos tablas)

**Tabla 1:**

| ID | Producto   | Cantidad |
|----|------------|----------|
| 1  | Producto1  | 10       |
| 2  | Producto2  | 5        |

**Tabla 2:**

| Producto   | Precio |
|------------|--------|
| Producto1  | 20     |
| Producto2  | 30     |

---

**Observaciones:**
- Al dividir en dos tablas, eliminamos la dependencia parcial.
- Ahora, el precio depende solo del producto y no de la clave compuesta.
- Esto mejora la integridad y el mantenimiento de los datos.
