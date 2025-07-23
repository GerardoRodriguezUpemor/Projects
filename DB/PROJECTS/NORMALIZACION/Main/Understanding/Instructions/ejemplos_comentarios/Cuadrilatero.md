/* **Summary personal**

   En este archivo, la clase abstracta Cuadrilatero es una especialización de Figura, como si tomaras la fórmula 
   base y la adaptaras para cuadriláteros. Hereda los atributos base y altura, que son como las variables de una ecuación, 
   y aquí ya se definen las fórmulas concretas para calcular el área y el perímetro, igual que en matemáticas cuando 
   tomas una función general y la aplicas a un caso específico.

   Los métodos calcularArea y calcularPerimetro usan directamente las fórmulas clásicas, aprovechando la herencia 
   para no repetir código y mantener todo organizado. Así, la programación orientada a objetos se parece a armar 
   ecuaciones y funciones: partes de lo general y lo adaptas a lo concreto, usando reglas claras y reutilizables.
*/
package org.upemor.herencia;

/** @author cerimice **/

public abstract class Cuadrilatero extends Figura{
    
    @Override
    public double calcularArea(){ /*
        DECLARACION METODO = (<modificador> = public, [tipo] = double, {nombre} = (calcularArea), (parametro) = (n/a), -return- = (área) [double]
        Explicación: Calcula el área del cuadrilátero usando la fórmula base*altura. Hereda los valores de base y altura de Figura.
        Analogía matemática: Es como aplicar la fórmula específica para el área de un cuadrilátero, usando las variables heredadas.
        Nota técnica: Este método sobrescribe el método abstracto de Figura y será usado por las clases hijas concretas.
    */
        return base*altura; // base y altura heredados de Figura
    }
    
    @Override
    public double calcularPerimetro(){ /*
        DECLARACION METODO = (<modificador> = public, [tipo] = double, {nombre} = calcularPerimetro), (parametro) = (n/a), -return- = (perímetro) [double]
        Explicación: Calcula el perímetro del cuadrilátero usando la fórmula 2*(base+altura). Hereda los valores de base y altura de Figura.
        Analogía matemática: Es como aplicar la fórmula específica para el perímetro de un cuadrilátero, usando las variables heredadas.
        Nota técnica: Este método sobrescribe el método abstracto de Figura y será usado por las clases hijas concretas.
    */
        return 2*(base+altura); // base y altura heredados de Figura
    }
}
