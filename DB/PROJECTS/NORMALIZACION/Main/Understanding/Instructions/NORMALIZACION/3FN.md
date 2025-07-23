# Tercera Forma Normal (3FN)

## Regla
Una tabla esta en 3FN si:

1. Esta en 2FN.
2. No tiene dependencias transitivas (es decir, los atributos no clave dependen directamente de la clave primaria, no a traves de otros atributos).

---

## Ejemplo

Antes de 3FN:

| ID | Nombre | Ciudad    | Codigo Postal |
|----|--------|-----------|--------------|
| 1  | Juan   | Madrid    | 28001        |
| 2  | Maria  | Barcelona | 08001        |

---

**Dependencia transitoria:** Ciudad depende de Codigo Postal.

---

## Despues de 3FN (dividiendo en dos tablas)

**Tabla 1:**

| ID | Nombre | Ciudad    |
|----|--------|-----------|
| 1  | Juan   | Madrid    |
| 2  | Maria  | Barcelona |

**Tabla 2:**

| Ciudad    | Codigo Postal |
|-----------|---------------|
| Madrid    | 28001         |
| Barcelona | 08001         |

---

**Observaciones:**
- Al dividir en dos tablas, eliminamos la dependencia transitoria.
- Ahora, cada atributo no clave depende solo de la clave primaria.
- Esto mejora la integridad y la estructura de la base de datos.
