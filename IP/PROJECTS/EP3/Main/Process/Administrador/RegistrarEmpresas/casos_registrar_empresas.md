# Casos de Prueba: Registrar Empresas

A continuación se enlistan los casos de prueba recomendados para asegurar la calidad del método de registrar empresas:

## CP01: Registro exitoso de empresa
- Verifica que el sistema permite registrar una nueva empresa con todos los datos obligatorios correctamente llenados.

## CP02: Fallo por campos obligatorios vacíos
- Verifica que el sistema rechaza el registro si faltan datos obligatorios (nombre, RFC, dirección, etc.).

## CP03: Fallo por formato incorrecto de datos
- Verifica que el sistema rechaza el registro si los datos ingresados no cumplen con el formato requerido (RFC, correo, etc.).

## CP04: Fallo por empresa duplicada
- Verifica que el sistema rechaza el registro si la empresa ya existe en la base de datos.

## CP05: Edición de empresa registrada
- Verifica que el sistema permite editar los datos de una empresa previamente registrada.

## CP06: Eliminación de empresa registrada
- Verifica que el sistema permite eliminar una empresa del sistema.

## CP07: Visualización de empresas registradas
- Verifica que el administrador puede consultar la lista de empresas registradas y sus datos.

## CP08: Fallo por conexión perdida al registrar
- Verifica que el sistema muestra un mensaje de error si se pierde la conexión al intentar registrar una empresa.

## CP09: Verificación de mensajes de error claros
- Verifica que los mensajes de error sean comprensibles y útiles para el usuario.

## CP10: Registro de acciones en el sistema
- Verifica que el sistema registre correctamente las acciones de registro, edición y eliminación de empresas en el log de la aplicación.

Cada caso de prueba cubre un escenario esencial para asegurar la funcionalidad y robustez del proceso de registro de empresas.
