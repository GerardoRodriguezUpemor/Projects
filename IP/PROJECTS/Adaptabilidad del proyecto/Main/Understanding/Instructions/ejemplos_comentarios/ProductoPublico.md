package org.upemor.vitrinadecarritos;

import java.math.BigDecimal;

/**
 * La clase {@code ProductoPublico} representa un producto con un precio accesible públicamente.

 * Nota: Exponer campos como públicos no es una buena práctica recomendada en Java,
 * ya que puede comprometer el encapsulamiento y la integridad de los datos.

 *

 * El campo {@code price} almacena el precio del producto como un {@link java.math.BigDecimal}.
 * Por defecto, el precio se inicializa en cero.
 
 */
public class ProductoPublico {
    // price es público, NO recomendado en buenas prácticas
    public BigDecimal price;

    public ProductoPublico() {
        this.price = BigDecimal.ZERO;
    }
}
