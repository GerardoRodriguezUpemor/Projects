# Tercera Forma Normal (3FN)

## Regla
Una tabla está en **3FN** si cumple con lo siguiente:

- Está en **2FN**.
- No tiene dependencias transitivas (los atributos no clave dependen directamente de la clave primaria, no a través de otros atributos).

---

## Ejemplo de Violación de 3FN

![Antes de 3FN](./antes-3FN.png)

> Tabla antes de aplicar la Tercera Forma Normal (3FN).

Tercera Forma Normal (3FN)

Dependencia transitoria: Ciudad depende de Código Postal.

Después de 3FN (dividiendo en dos tablas):

- **Tabla 1:**

  ![Tabla 1](./despues-3FN-tabla1.png)

- **Tabla 2:**

  ![Tabla 2](./despues-3FN-tabla2.png)

> Tablas después de aplicar la Tercera Forma Normal (3FN).

---

## Explicación

- Se elimina la dependencia transitoria separando los datos en dos tablas.
- Ahora, el código postal depende únicamente de la ciudad y no del ID.
- La estructura facilita la integridad y el mantenimiento de los datos.