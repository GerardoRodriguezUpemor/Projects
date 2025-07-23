/* **Summary personal**

   En este archivo, la clase abstracta Figura sirve como el molde general para cualquier figura geométrica, como si fuera la fórmula base en matemáticas. 
   Los atributos base y altura son como las variables de una ecuación, y los métodos get/set permiten acceder y modificar esos valores de forma controlada, 
   siguiendo el principio de encapsulamiento (como si solo pudieras cambiar los valores de una variable con reglas claras).

   Los métodos abstractos calcularArea y calcularPerimetro son como dejar la fórmula incompleta para que cada figura concreta (cuadrado, triángulo, etc.) 
   la termine a su manera, igual que en matemáticas cuando defines una función general y luego la especializas.

   El método toString es como pedirle a la figura que se describa a sí misma, mostrando sus datos y resultados, útil para depuración y para entender 
   rápidamente el estado del objeto. Y como Figura es abstracta, no se puede crear un objeto Figura directamente, solo se puede usar como base para otras figuras.

   Así, este diseño permite organizar y reutilizar código, y entender la programación orientada a objetos como si fuera armar ecuaciones y funciones 
   en matemáticas, donde cada parte tiene su rol y sus reglas.
*/
package org.upemor.herencia;

/** @author cerimice **/

public abstract class Figura{

    protected double base; /* DECLARACION VARIABLE = (<modificador> = protected, [tipo] = double, {nombre} = base) */
    public double getBase(){return base;} /*
        DECLARACION METODO GET = (<modificador> = public, [tipo] = double, {nombre} = getBase), (parametro) = (n/a), -return- = (base) [double]
        Explicación: Este método no recibe parámetros porque su única función es devolver el valor actual del atributo base. Retorna base para 
        permitir el acceso seguro y controlado al atributo desde otras partes del programa, siguiendo el principio de encapsulamiento.
    */
    public void setBase(double valor){base = valor;} /*
        DECLARACION METODO SET = (<modificador> = public, [tipo] = void, {nombre} = setBase), (parametro) = (valor) [double], -return- = (void)
        Explicación: Este método recibe un parámetro llamado valor de tipo double, que se asigna al atributo base. 
        Permite modificar el valor de base de forma controlada desde fuera de la clase, manteniendo el principio de encapsulamiento.
    */

    /* * La altura es un atributo que puede ser utilizado por
     * varias figuras, como el rectángulo, el triángulo, etc.
     * Por lo tanto, se define aquí como un atributo común.
     */

    protected double altura; /* DECLARACION VARIABLE = (<modificador> = protected, [tipo] = double, {nombre} = altura) */
    public double getAltura(){return altura;} /*
        DECLARACION METODO GET = (<modificador> = public, [tipo] = double, {nombre} = (getAltura), (parametro) = (n/a), -return- = (altura) [double]
        Explicación: Este método no recibe parámetros porque su única función es devolver el valor actual del atributo altura. 
        Retorna altura para permitir el acceso seguro y controlado al atributo desde otras partes del programa, siguiendo el principio de encapsulamiento.
    */
    public void setAltura(double valor){altura = valor;} /*
        DECLARACION METODO SET = (<modificador> = public, [tipo] = void, {nombre} = setAltura), (parametro) = (valor) [double], -return- = (void)
        Explicación: Este método recibe un parámetro llamado valor de tipo double, que se asigna al atributo altura. 
        Permite modificar el valor de altura de forma controlada desde fuera de la clase, manteniendo el principio de encapsulamiento.
    */
    
    public abstract double calcularArea(); /*
        DECLARACION METODO ABSTRACTO = (<modificador> = public abstract, [tipo] = double, {nombre} = calcularArea), (parametro) = (n/a), -return- = (área) [double]
        Explicación: Método abstracto que obliga a las clases hijas a implementar el cálculo del área según la figura específica. 
        No recibe parámetros y retorna el área calculada como double.
    */
    public abstract double calcularPerimetro(); /*
        DECLARACION METODO ABSTRACTO = (<modificador> = public abstract, [tipo] = double, {nombre} = calcularPerimetro), (parametro) = (n/a), -return- = (perímetro) [double]
        Explicación: Método abstracto que obliga a las clases hijas a implementar el cálculo del perímetro según la figura específica. 
        No recibe parámetros y retorna el perímetro calculado como double.
    */
    
    @Override
    public String toString(){ /*
        DECLARACION METODO = (<modificador> = public, [tipo] = String, {nombre} = toString), (parametro) = (n/a), -return- = (String)
        Explicación: Este método sobrescribe el método toString de la clase Object para devolver una representación textual de la figura.
        Mostrará el nombre de la clase concreta (por ejemplo, Cuadrado, Triangulo), los valores de base y altura, y los resultados de los métodos calcularArea y calcularPerimetro.
        Es útil para depuración y visualización rápida del estado del objeto.
        Nota técnica: Como Figura es una clase abstracta, no se puede crear un objeto Figura directamente. Este método será utilizado por las clases hijas que extiendan Figura.
    */
        // El return define la nueva representación textual del objeto, realizando la sobrescritura del método toString de Object.
        // Cuando se imprime el objeto, se ejecuta este código y se muestra la información personalizada.
        
        // El return construye y devuelve una cadena de texto que representa el estado actual del objeto Figura.
        return getClass().getName() // Obtiene el nombre de la clase concreta (por ejemplo, Cuadrado, Triangulo)
            + "[b = " + base + ",a = " + altura + "] " // Muestra los valores actuales de los atributos base y altura
            + "=> (A = " + calcularArea() // Muestra el área calculada usando el método correspondiente
            + ",P = " + calcularPerimetro() + ")"; // Muestra el perímetro calculado usando el método correspondiente
        /*Cuando se imprime el objeto (por ejemplo, System.out.println(objeto)), se ejecuta este return y se muestra la información personalizada.
        y se declara el objeto como objeto.toString()*/
    }
}
