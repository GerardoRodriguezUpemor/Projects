# Casos de Prueba: Dar Seguimiento a Postulaciones/Estadías

A continuación se enlistan los casos de prueba recomendados para asegurar la calidad del método de seguimiento a postulaciones y estadías:

## CP01: Actualización exitosa de estado de postulación/estadía
- Verifica que el sistema permite al administrador actualizar el estado de una postulación o estadía (en revisión, aceptada, rechazada, finalizada, etc.).

## CP02: Visualización de historial de cambios de estado
- Verifica que el sistema permite consultar el historial de cambios de estado de cada postulación/estadía.

## CP03: Notificación al estudiante por cambio de estado
- Verifica que el sistema notifica al estudiante cuando su postulación/estadía cambia de estado.

## CP04: Fallo por campos obligatorios vacíos en actualización
- Verifica que el sistema rechaza la actualización si faltan datos obligatorios (motivo de rechazo, fecha de finalización, etc.).

## CP05: Fallo por conexión perdida al actualizar
- Verifica que el sistema muestra un mensaje de error si se pierde la conexión al intentar actualizar el estado.

## CP06: Verificación de mensajes de error claros
- Verifica que los mensajes de error sean comprensibles y útiles para el usuario.

## CP07: Registro de acciones en el sistema
- Verifica que el sistema registre correctamente las acciones de actualización y seguimiento en el log de la aplicación.

## CP08: Visualización de postulaciones/estadías sin seguimiento
- Verifica que el sistema muestra un mensaje adecuado cuando no hay acciones de seguimiento registradas.

Cada caso de prueba cubre un escenario esencial para asegurar la funcionalidad y robustez del proceso de seguimiento a postulaciones y estadías.
