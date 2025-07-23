package org.upemor.vitrinadecarritos;

import java.math.BigDecimal;

public class Producto {
    // Cambia el tipo de double a BigDecimal para mayor precisión
    private BigDecimal price;

    // Constructor de la clase Producto
    public Producto() {
        // Inicializa el atributo price en cero usando la constante BigDecimal.ZERO
        // BigDecimal.ZERO es un valor constante definido en la clase BigDecimal de la librería estándar de Java
        // Así, cada vez que creas un nuevo Producto, su precio comienza en cero automáticamente
        this.price = BigDecimal.ZERO;
    }

    // Getter y setter usando BigDecimal
    // El getter permite leer el valor de price desde fuera de la clase
    public BigDecimal getPrice() {
        // Aquí podrías agregar lógica extra si lo necesitas
        return price;
    }

    // El setter permite modificar el valor de price desde fuera de la clase
    public void setPrice(BigDecimal valor) {
        // Aquí puedes validar el valor antes de asignarlo
        // Por ejemplo, podrías evitar precios negativos:
        // if (valor.compareTo(BigDecimal.ZERO) < 0) {
        //     throw new IllegalArgumentException("El precio no puede ser negativo");
        // }
        this.price = valor;
    }

    public static void main(String[] args) {
        // Creamos dos objetos Producto
        Producto p1 = new Producto();
        Producto p2 = new Producto();

        // Usamos el setter para asignar el precio a cada objeto
        p1.setPrice(new BigDecimal("99.99"));
        p2.setPrice(new BigDecimal("150.50"));

        // Mostramos los precios originales
        System.out.println("Precio original de p1: " + p1.getPrice());
        System.out.println("Precio original de p2: " + p2.getPrice());

        // Modificamos los precios usando el setter
        p1.setPrice(new BigDecimal("120.00"));
        p2.setPrice(new BigDecimal("175.75"));

        // Mostramos los precios modificados
        System.out.println("Precio modificado de p1: " + p1.getPrice());
        System.out.println("Precio modificado de p2: " + p2.getPrice());



        // PRUEBA DE MODIFICACION DE PRODUCTOPUBLICO SU ATRIBUTO PUBLICO DEFINIDO
        // -----------------------------
        // Ejemplo: modificar desde fuera de la clase Producto
        // Supón que este código está en otra clase llamada PruebaModificacion:
        //
        // Producto prod = new Producto();
        // prod.setPrice(new BigDecimal("250.00")); // Modificas el precio usando el setter
        // System.out.println("Precio modificado desde fuera: " + prod.getPrice());

        // No puedes hacer esto (no compila):
        // prod.price = new BigDecimal("300.00"); // Error: price es privado
        // -----------------------------
        ProductoPublico prod = new ProductoPublico();
        System.out.println("Precio inicial: " + prod.price);
        // Modificamos el atributo price directamente (esto SÍ compila porque es público)
        prod.price = new BigDecimal("999.99");
        System.out.println("Precio modificado directamente: " + prod.price);
    
    }
 
}
/*
Producto productoEjemplo = new Producto(); // Al crearlo, el precio es 0
System.out.println("Precio inicial: " + productoEjemplo.getPrice()); // Muestra 0

productoEjemplo.setPrice(new BigDecimal("500.00")); // Modificas el precio
System.out.println("Precio modificado: " + productoEjemplo.getPrice()); // Muestra 500.00
*/
    
