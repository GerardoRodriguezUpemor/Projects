# Segunda Forma Normal (2FN)

## Regla
Una tabla está en **2FN** si cumple con lo siguiente:

- Está en **1FN**.
- Todos los atributos no clave dependen completamente de la clave primaria (sin dependencias parciales).

---

## Ejemplo de Violación de 2FN

![Antes de 2FN](./antes-2FN.png)

> Tabla antes de aplicar la Segunda Forma Normal (2FN).

Segunda Forma Normal (2FN)

Dependencia parcial: Producto depende de la clave parcial ID, ya que el precio no depende del
ID, sino del producto.

Después de 2FN (dividiendo en dos tablas):

- **Tabla 1:**

  ![Tabla 1](./despues-2FN-tabla1.png)

- **Tabla 2:**

  ![Tabla 2](./despues-2FN-tabla2.png)

> Tablas después de aplicar la Segunda Forma Normal (2FN).

---

## Explicación

- Se elimina la dependencia parcial separando los datos en dos tablas.
- Ahora, el precio depende únicamente del producto y no del ID.
- La estructura facilita la integridad y el mantenimiento de los datos.