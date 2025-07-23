# Análisis del Sistema de Tienda Comercial

A continuación se desglosa el ejercicio para facilitar la identificación de entidades, relaciones y la creación de la base de datos.

---

## 1. Identificación de Entidades Principales

Las entidades son los "sustantivos" principales del sistema. Basado en la descripción, podemos identificar las siguientes:

-   **Productos:** Los artículos que la tienda vende.
-   **Categorias:** La clasificación de los productos.
-   **Proveedores:** Quienes suministran los productos a la tienda.
-   **Clientes:** Las personas que compran los productos.
-   **Pedidos:** Las órdenes de compra que realizan los clientes.
-   **Empleados:** El personal que trabaja en la tienda.
-   **Sucursales:** Las ubicaciones físicas de la tienda.

---

## 2. Análisis de Relaciones y Cardinalidad

Aquí determinamos cómo se conectan las entidades entre sí.

### Relaciones Uno a Muchos (1:N)

-   `Una` **Categoria** puede tener `muchos` **Productos**.
    -   (Llave foránea: `id_categoria` en la tabla `Productos`).
-   `Un` **Cliente** puede realizar `muchos` **Pedidos**.
    -   (Llave foránea: `id_cliente` en la tabla `Pedidos`).
-   `Una` **Sucursal** puede tener `muchos` **Empleados**.
    -   (Llave foránea: `id_sucursal` en la tabla `Empleados`).
-   `Un` **Empleado** puede procesar `muchos` **Pedidos**.
    -   (Llave foránea: `id_empleado` en la tabla `Pedidos`).

### Relaciones Muchos a Muchos (N:M)

Estas relaciones requieren una **tabla intermedia** para poder implementarse en la base de datos.

-   `Muchos` **Productos** pueden ser surtidos por `muchos` **Proveedores**.
    -   **Solución:** Crear una tabla intermedia `Productos_Proveedores`.
-   `Muchos` **Pedidos** pueden contener `muchos` **Productos**.
    -   **Solución:** Crear una tabla intermedia `Pedidos_Productos` (comúnmente llamada `Detalle_Pedido`).

---

## 3. Propuesta de Tablas y Atributos

Basado en el análisis anterior, aquí tienes una estructura sugerida para tus tablas, aplicando las normas de nomenclatura (`PascalCase` para tablas, `snake_case` para columnas).

**Tablas Principales:**

-   **`Categorias`**
    -   `id_categoria` (PK, INT, Auto-incremental)
    -   `nombre` (VARCHAR)
    -   `descripcion` (TEXT)

-   **`Productos`**
    -   `id_producto` (PK, INT, Auto-incremental)
    -   `nombre` (VARCHAR)
    -   `precio` (DECIMAL)
    -   `stock` (INT)
    -   `id_categoria` (FK -> `Categorias`)

-   **`Proveedores`**
    -   `id_proveedor` (PK, INT, Auto-incremental)
    -   `nombre_empresa` (VARCHAR)
    -   `contacto_email` (VARCHAR)

-   **`Clientes`**
    -   `id_cliente` (PK, INT, Auto-incremental)
    -   `nombre` (VARCHAR)
    -   `apellido` (VARCHAR)
    -   `email` (VARCHAR, UNIQUE)

-   **`Sucursales`**
    -   `id_sucursal` (PK, INT, Auto-incremental)
    -   `nombre` (VARCHAR)
    -   `direccion` (VARCHAR)

-   **`Empleados`**
    -   `id_empleado` (PK, INT, Auto-incremental)
    -   `nombre` (VARCHAR)
    -   `apellido` (VARCHAR)
    -   `puesto` (VARCHAR)
    -   `id_sucursal` (FK -> `Sucursales`)

-   **`Pedidos`**
    -   `id_pedido` (PK, INT, Auto-incremental)
    -   `fecha_pedido` (DATETIME)
    -   `id_cliente` (FK -> `Clientes`)
    -   `id_empleado` (FK -> `Empleados`)

**Tablas Intermedias (para relaciones N:M):**

-   **`Productos_Proveedores`**
    -   `id_producto` (FK -> `Productos`)
    -   `id_proveedor` (FK -> `Proveedores`)

-   **`Pedidos_Productos`**
    -   `id_pedido` (FK -> `Pedidos`)
    -   `id_producto` (FK -> `Productos`)
    -   `cantidad` (INT)
    -   `precio_unitario` (DECIMAL)

---

### **Siguientes Pasos:**

1.  **Crear la Base de Datos:** `CREATE DATABASE TiendaComercial;`
2.  **Usar la Base de Datos:** `USE TiendaComercial;`
3.  **Crear las Tablas:** Usa `CREATE TABLE` para cada una de las tablas definidas arriba, comenzando por las que no tienen llaves foráneas (ej. `Categorias`, `Clientes`, `Proveedores`, `Sucursales`).
4.  **Insertar Datos:** Usa `INSERT INTO` para poblar tus tablas con datos de ejemplo.