# Primera Forma Normal (1FN)

## Regla
Una tabla está en **1FN** si cumple con lo siguiente:

- Todos los atributos contienen sólo valores **atómicos** (no se permiten listas ni conjuntos de valores).
- Cada valor en una columna debe ser **único** (no puede haber filas duplicadas).

---

## Ejemplo de Violación de 1FN

![Antes de aplicar 1FN](./antes-1FN.png)

> Tabla antes de aplicar la Primera Forma Normal (1FN).

Problema:

La columna Teléfonos tiene múltiples valores por fila, lo cual no cumple con la regla de
valores atómicos.

Después de aplicar 1FN (separa los valores múltiples en filas diferentes):

![Después de 1FN](./despues-1FN.png)

> Tabla después de aplicar la Primera Forma Normal (1FN).

## Explicación

- Ahora, la tabla cumple con **1FN** porque cada celda contiene un solo valor atómico.
- Los valores duplicados en la columna **ID** son coherentes con la estructura de la base de datos, ya que Juan y María tienen dos números de teléfono cada uno.
- Se elimina la ambigüedad y se facilita la consulta y el mantenimiento de los datos.