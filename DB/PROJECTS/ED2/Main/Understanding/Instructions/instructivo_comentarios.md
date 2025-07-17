# Instructivo Único: Comentarios Automáticos en Código Java (Versión 4, Formato Directo y Breve, EXACTAMENTE como los ejemplos)

## ¿Qué hace este instructivo?
Organiza y documenta tu código Java siguiendo el formato directo, breve y con etiquetas claras, exactamente como los ejemplos que diste (DemoEstadistica.java). Solo tienes que decir "documenta" y se aplican todos los pasos. El estilo incluye bloques técnicos, explicaciones funcionales y pedagógicas separadas, y (opcional) analogías matemáticas si lo solicitas.

## Estructura final de los comentarios

1. **Summary personal al inicio del archivo**
   - Bloque breve explicando el propósito de la clase y nota pedagógica para estudiantes.
   - (Opcional) Analogía matemática si el usuario lo solicita.

2. **Comentarios en atributos**
   - Antes de cada atributo, escribe:
     // -------------------------------------------------------------------------
     // Variable de instancia: <nombre>
     // Breve descripción funcional del atributo.
     // -------------------------------------------------------------------------
     // Funcional: Explicación funcional.
     <declaración del atributo>
     // Técnica: Explicación técnica.
     // -------------------------------------------------------------------------

3. **Comentarios en constructores**
   - Antes de cada constructor, escribe:
     // -------------------------------------------------------------------------
     // Constructor <nombre>
     // Breve descripción funcional del constructor.
     // -------------------------------------------------------------------------
     public <nombre>(...) {
     // Funcional: Explicación funcional.
     ...código...
     // Técnica: Explicación técnica.
     }
     // -------------------------------------------------------------------------

4. **Comentarios en métodos (getters, setters y otros)**
   - Antes de cada método, escribe:
     // -------------------------------------------------------------------------
     // Método <nombre>
     // Breve descripción funcional del método.
     // -------------------------------------------------------------------------
     public <tipo> <nombre>(...) {
     // Funcional: Explicación funcional.
     ...código...
     // Técnica: Explicación técnica.
     }
     // -------------------------------------------------------------------------

5. **Comentarios en línea en el código**
   - Dentro de los métodos, agrega comentarios breves explicando la función de cada línea clave (por ejemplo, impresión, cálculo, retorno).
   - Puedes agregar bloques explicativos al final del método si lo consideras necesario.

6. **Lenguaje claro y directo**
   - Usa frases sencillas y etiquetas claras para facilitar la comprensión.

## Ejemplo EXACTO de formato

```java
// -----------------------------------------------------------------------------
// Clase DemoEstadistica
// Esta clase permite realizar cálculos estadísticos básicos sobre un conjunto de datos numéricos.
// Proporciona métodos para calcular el promedio y la varianza de los datos almacenados.
// -----------------------------------------------------------------------------
// Declaración:
package com.upemor;

public class DemoEstadistica {
    // -------------------------------------------------------------------------
    // Variable de instancia: datos
    // Almacena el conjunto de datos numéricos sobre el cual se realizarán los cálculos estadísticos.
    // -------------------------------------------------------------------------
    // Funcional: Permite que los métodos accedan y modifiquen los datos.
    private double[] datos;
    // Técnica: Es un arreglo de tipo double, lo que permite almacenar valores decimales.
    // -------------------------------------------------------------------------

    // -------------------------------------------------------------------------
    // Constructor DemoEstadistica
    // Inicializa la clase con un conjunto de datos numéricos.
    // -------------------------------------------------------------------------
    public DemoEstadistica(double[] datos) {
    // Funcional: Permite crear una instancia con los datos a analizar.
        this.datos = datos; // Asigna los datos recibidos a la variable de instancia
    // Técnica: Recibe un arreglo de double y lo asigna a la variable de instancia.
    }
    // -------------------------------------------------------------------------

    // -------------------------------------------------------------------------
    // Método calcularPromedio
    // Calcula el promedio (media aritmética) de los datos almacenados.
    // -------------------------------------------------------------------------
    public double calcularPromedio() {
    // Funcional: Suma todos los valores y los divide entre la cantidad de elementos.
        double suma = 0; // Acumulador para la suma de los valores
        for (double valor : datos) {
            suma += valor; // Suma cada valor al acumulador
        }
        // Si hay datos, retorna el promedio; si no, retorna 0 para evitar error
        return datos.length > 0 ? suma / datos.length : 0;
    //Técnica: Utiliza un ciclo for-each para recorrer el arreglo y una condición para evitar división por cero.
    }
    // -------------------------------------------------------------------------

    // -------------------------------------------------------------------------
    // Método calcularVarianza
    // Calcula la varianza de los datos almacenados.
    // -------------------------------------------------------------------------
    public double calcularVarianza() {
    // Funcional: Mide la dispersión de los datos respecto al promedio.
        double promedio = calcularPromedio(); // Calcula el promedio de los datos
        double sumaCuadrados = 0; // Acumulador para la suma de los cuadrados de las diferencias
        for (double valor : datos) {
            sumaCuadrados += Math.pow(valor - promedio, 2); // Suma el cuadrado de la diferencia de cada valor respecto al promedio
        }
        // Si hay datos, retorna la varianza; si no, retorna 0 para evitar error
        return datos.length > 0 ? sumaCuadrados / datos.length : 0;
    // Técnica: Calcula la suma de los cuadrados de las diferencias y la divide entre la cantidad de elementos.
        /*
         * datos.length: Indica la cantidad de elementos en el arreglo de datos.Es el denominador para calcular el promedio de las diferencias cuadráticas.
         * sumaCuadrados / datos.length: Realiza la división de la suma de los cuadrados de las diferencias entre la cantidad de datos, obteniendo así la varianza.
         * El operador ternario (condición ? valor_si_verdadero : valor_si_falso) verifica si hay al menos un dato para evitar división por cero; si no hay datos, retorna 0.
         */
    }
    // -------------------------------------------------------------------------

    // -------------------------------------------------------------------------
    // Método getDatos
    // Permite acceder al conjunto de datos almacenados en la clase.
    // -------------------------------------------------------------------------
    // Funcional: Devuelve el arreglo de datos para su consulta externa.
    public double[] getDatos() {
        return datos; // Retorna el arreglo de datos
    // Técnica: Retorna la referencia al arreglo de tipo double.
    }
    // -------------------------------------------------------------------------

    // -------------------------------------------------------------------------
    // Método setDatos
    // Permite modificar el conjunto de datos almacenados en la clase.
    // -------------------------------------------------------------------------
    public void setDatos(double[] nuevosDatos) {
    // Funcional: Actualiza el arreglo de datos con nuevos valores.
        datos = nuevosDatos; // Actualiza la variable de instancia con los nuevos datos
    // Técnica: Asigna la referencia del nuevo arreglo a la variable de instancia.    
    }
    // -------------------------------------------------------------------------
    // Fin de la clase DemoEstadistica
    // -------------------------------------------------------------------------
}
```

## ¿Qué tienes que hacer?
Solo di: **"documenta"** y el código se documenta automáticamente siguiendo este instructivo y el formato EXACTO mostrado en tu ejemplo, respondiendo el nombre en cada bloque.
