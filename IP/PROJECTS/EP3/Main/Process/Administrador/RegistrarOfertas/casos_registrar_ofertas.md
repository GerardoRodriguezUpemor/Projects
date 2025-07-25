# Casos de Prueba: Registrar Ofertas

A continuación se enlistan los casos de prueba recomendados para asegurar la calidad del método de registrar ofertas:

## CP01: Registro exitoso de oferta
- Verifica que el sistema permite registrar una nueva oferta con todos los datos obligatorios correctamente llenados.

## CP02: Fallo por campos obligatorios vacíos
- Verifica que el sistema rechaza el registro si faltan datos obligatorios (título, descripción, requisitos, empresa, etc.).

## CP03: Fallo por formato incorrecto de datos
- Verifica que el sistema rechaza el registro si los datos ingresados no cumplen con el formato requerido (fechas, salario, etc.).

## CP04: Fallo por oferta duplicada
- Verifica que el sistema rechaza el registro si la oferta ya existe en la base de datos.

## CP05: Edición de oferta registrada
- Verifica que el sistema permite editar los datos de una oferta previamente registrada.

## CP06: Eliminación de oferta registrada
- Verifica que el sistema permite eliminar una oferta del sistema.

## CP07: Visualización de ofertas registradas
- Verifica que el administrador puede consultar la lista de ofertas registradas y sus datos.

## CP08: Fallo por conexión perdida al registrar
- Verifica que el sistema muestra un mensaje de error si se pierde la conexión al intentar registrar una oferta.

## CP09: Verificación de mensajes de error claros
- Verifica que los mensajes de error sean comprensibles y útiles para el usuario.

## CP10: Registro de acciones en el sistema
- Verifica que el sistema registre correctamente las acciones de registro, edición y eliminación de ofertas en el log de la aplicación.

Cada caso de prueba cubre un escenario esencial para asegurar la funcionalidad y robustez del proceso de registro de ofertas.
