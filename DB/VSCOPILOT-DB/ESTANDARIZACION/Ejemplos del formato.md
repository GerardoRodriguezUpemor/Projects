## A. Entidades y Relaciones (descripción en texto)

1. **Productos**: Representa los bienes disponibles para la venta.
   Atributos {id_producto, nombre_producto, precio_producto, stock}
3. **Categorías**: Clasifica los productos en grupos.
   Atributos {id_categoria, nombre_categoria}
5. **Proveedores**: Empresas o personas que suministran productos.
   Atributos {id_proveedor, nombre_proveedor, email_proveedor, telefono_proveedor}
6. **Clientes**: Personas que realizan pedidos.
   Atributos {id_cliente}
8. **Pedidos**: Registra las compras realizadas por los clientes.
   Atributos: {id_pedido}
9. **Empleados** Personas encargadas de procesar pedidos.
    Atributos: {id_empleado}
11. **Sucursal** Lugar físico donde laboran los empleados.

**Relaciones:**
- Un producto pertenece a una categoría (N:1).
- Un producto puede ser gestionado por varios proveedores (N:M).
- Un cliente puede hacer varios pedidos (1:N).
- Un pedido puede contener varios productos y un producto puede estar en varios pedidos (N:M).
- Un empleado está asignado a una sucursal (N:1).
- Un pedido es procesado por un empleado (N:1).

---

## B. Diagrama Entidad-Relación (ER)

1. **Productos**---N---+Pertenece+---1---**Categorías**
2. **Productos**---N---+Gestionan+---M---**Proveedores**
3. **Clientes**---1---+Hace+---N---**Pedidos**
4. **Pedidos**---N---+Contiene+---M---**Productos**
5. **Empleados**---N---+Asignados+---1---**Sucursal**
6. **Pedidos**---N---+Procesa+---1---**Empleados**

---

![image1](image1)