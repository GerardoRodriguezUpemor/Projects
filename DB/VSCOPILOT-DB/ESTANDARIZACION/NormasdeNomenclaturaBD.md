# Normas de Nomenclatura para Bases de Datos

A partir de este momento, para todos los ejercicios futuros, se aplicarán las siguientes convenciones:

## 1. Nombres de Tablas
- **Formato:** PascalCase (la primera letra de cada palabra en mayúscula).
- **Pluralización:** Siempre en plural.
- **Ejemplos:** `Estudiantes`, `Platillos`, `OrdenesDeCompra`.

## 2. Nombres de Campos (Columnas)
- **Formato:** snake_case (palabras en minúscula separadas por guiones bajos).
- **Ejemplos:** `nombre_completo`, `codigo_platillo`, `id_consumo`.

---

# Guía de Tipos de Datos y Usos Comunes

## Tipos Numéricos

### `INT` / `INTEGER` (Entero)
Ideal para números enteros sin decimales.
- **Usos comunes:**
    - Identificadores únicos / Claves primarias (`id_usuario`).
    - Contadores (`cantidad_productos`).
    - Edad.
    - Número de control.

### `DOUBLE` / `FLOAT` / `DECIMAL` (Decimal)
Para números que requieren precisión decimal.
- **Usos comunes:**
    - Precios (`precio_unitario`).
    - Medidas (`peso_kg`, `altura_mts`).
    - Porcentajes (`descuento_aplicado`).
    - Calificaciones.

## Tipos de Cadena de Caracteres

### `VARCHAR(n)`
Para cadenas de texto de longitud variable. `(n)` es el número máximo de caracteres.
- **Usos comunes:**
    - Nombres, apellidos.
    - Correos electrónicos.
    - Direcciones.
    - Títulos y descripciones.

### `CHAR(n)`
Para cadenas de texto de longitud fija. `(n)` es el número exacto de caracteres.
- **Usos comunes:**
    - Códigos postales.
    - Abreviaciones de países o estados (`MX`, `USA`).
    - Claves de longitud fija (CURP, RFC en México).
    - Sexo (`M`, `F`, `O`).

## Tipos de Fecha y Hora

### `DATE`
Almacena solo la fecha (año, mes, día).
- **Usos comunes:**
    - Fechas de nacimiento.
    - Fechas de registro.
    - Fechas de eventos específicos (sin la hora).

### `DATETIME` / `TIMESTAMP`
Almacena fecha y hora. `TIMESTAMP` es útil para registros de auditoría.
- **Usos comunes:**
    - Registro de actividad (`fecha_creacion`, `ultima_modificacion`).
    - Hora de entrada y salida.
    - Agendamiento de citas o eventos.

## Tipos Lógicos

### `BOOLEAN` (o `TINYINT(1)`)
Representa valores de verdadero o falso (true/false, 1/0).
- **Usos comunes:**
    - Estatus (`es_activo`, `esta_eliminado`).
    - Verificaciones (`aprobado`, `verificado`).
    - Preferencias de usuario (`recibir_notificaciones`).