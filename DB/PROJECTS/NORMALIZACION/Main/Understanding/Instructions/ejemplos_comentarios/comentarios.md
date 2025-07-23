# COMENTARIOS

Este documento resume y analiza el estilo de comentarios implementado en los archivos `Figura.java` y `Cuadrilatero.java`, destacando las mejores prácticas y analogías matemáticas utilizadas para facilitar la comprensión de la programación orientada a objetos (POO).

---

## Estructura de los comentarios

1. **Summary personal al inicio del archivo**
   - Explica el propósito de la clase y el archivo usando analogías matemáticas.
   - Ejemplo: "La clase abstracta Figura sirve como el molde general para cualquier figura geométrica, como si fuera la fórmula base en matemáticas."

2. **Comentarios en atributos y métodos**
   - Cada atributo y método tiene un comentario que detalla:
     - Modificador, tipo y nombre.
     - Parámetros y valor de retorno.
     - Explicación funcional y técnica (por qué existe, cómo se usa, qué representa).
   - Ejemplo: `/* DECLARACION METODO = (<modificador> = public, [tipo] = double, {nombre} = calcularArea), (parametro) = (n/a), -return- = (área) [double] ... */`

3. **Analogías matemáticas**
   - Se relacionan conceptos de POO con funciones, ecuaciones y reglas matemáticas.
   - Ejemplo: "Los atributos base y altura son como las variables de una ecuación."

4. **Notas técnicas**
   - Se aclaran detalles importantes, como la abstracción y el uso de métodos en clases hijas.
   - Ejemplo: "Nota técnica: Como Figura es una clase abstracta, no se puede crear un objeto Figura directamente."

5. **Comentarios en línea en el código**
   - Se explica cada parte del return y el proceso de sobrescritura.
   - Ejemplo: `// base y altura heredados de Figura`

6. **Lenguaje claro y directo**
   - Frases sencillas, ejemplos y comparaciones que ayudan a visualizar el funcionamiento.

---

## Ventajas de este estilo
- Facilita la comprensión para estudiantes y personas nuevas en POO.
- Relaciona la programación con conceptos matemáticos familiares.
- Explica el propósito y funcionamiento de cada parte del código.
- Ayuda a mantener la documentación clara y útil para depuración y mantenimiento.

---

## Ejemplo de comentario recomendado
```java
/* DECLARACION METODO = (<modificador> = public, [tipo] = double, {nombre} = calcularArea), (parametro) = (n/a), -return- = (área) [double]
   Explicación: Calcula el área del cuadrilátero usando la fórmula base*altura. Hereda los valores de base y altura de Figura.
   Analogía matemática: Es como aplicar la fórmula específica para el área de un cuadrilátero, usando las variables heredadas.
   Nota técnica: Este método sobrescribe el método abstracto de Figura y será usado por las clases hijas concretas.
*/
```

---

## Recomendaciones para otros archivos
- Mantener la estructura de summary personal al inicio.
- Documentar atributos y métodos con el mismo nivel de detalle.
- Usar analogías matemáticas y notas técnicas donde sea relevante.
- Explicar el propósito y funcionamiento de cada parte del código.

---

> Este estilo de comentarios convierte el código en una guía didáctica, haciendo que la POO sea tan clara como resolver una ecuación matemática.
