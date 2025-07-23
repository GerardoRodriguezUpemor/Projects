# Primera Forma Normal (1FN)

## Regla
Una tabla esta en 1FN si:

1. Todos los atributos contienen solo valores atomicos (es decir, no se permiten listas ni conjuntos de valores).
2. Cada valor en una columna debe ser unico (no puede haber filas duplicadas).

---


## Ejemplo de violacion de 1FN

Antes de aplicar 1FN:

| ID | Nombre | Telefonos    |
|----|--------|--------------|
| 1  | Juan   | 1234, 5678   |
| 2  | Maria  | 9876, 5432   |

---

**Problema:**
- La columna Telefonos tiene multiples valores por fila, lo cual no cumple con la regla de valores atomicos.

---

## Despues de aplicar 1FN (separa los valores multiples en filas diferentes)

| ID | Nombre | Telefono |
|----|--------|----------|
| 1  | Juan   | 1234     |
| 1  | Juan   | 5678     |
| 2  | Maria  | 9876     |
| 2  | Maria  | 5432     |

---

**Observaciones:**
- Ahora cada celda contiene un solo valor atomico.
- Se eliminaron las listas en la columna Telefonos y cada telefono esta en una fila distinta.

## Explicacion

- Ahora, la tabla cumple con 1FN porque cada celda contiene un solo valor atomico.

- Los valores duplicados en la columna ID son ahora coherentes con la estructura de la base de datos, ya que Juan y Maria tienen dos numeros de telefono, y esto esta reflejado con dos filas separadas pero con el mismo ID.