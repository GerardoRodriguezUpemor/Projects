# Casos de Prueba: Exportar Postulaciones de una Oferta en CSV

A continuación se enlistan los casos de prueba recomendados para asegurar la calidad del método de exportar postulaciones en formato CSV:

## CP01: Exportación exitosa de postulaciones
- Verifica que el sistema permite exportar correctamente todas las postulaciones de una oferta en un archivo CSV.

## CP02: Exportación con filtrado de postulaciones
- Verifica que el sistema permite exportar postulaciones filtradas por estado, fecha, estudiante, etc.

## CP03: Exportación con campos personalizados
- Verifica que el sistema permite seleccionar los campos a incluir en el archivo CSV.

## CP04: Fallo por ausencia de postulaciones
- Verifica que el sistema muestra un mensaje adecuado si no hay postulaciones para exportar.

## CP05: Fallo por formato incorrecto de archivo
- Verifica que el sistema genera el archivo CSV con el formato correcto (separadores, codificación, encabezados, etc.).

## CP06: Fallo por conexión perdida durante la exportación
- Verifica que el sistema muestra un mensaje de error si se pierde la conexión al intentar exportar.

## CP07: Verificación de mensajes de error claros
- Verifica que los mensajes de error sean comprensibles y útiles para el usuario.

## CP08: Registro de acciones en el sistema
- Verifica que el sistema registre correctamente la acción de exportación en el log de la aplicación.

Cada caso de prueba cubre un escenario esencial para asegurar la funcionalidad y robustez del proceso de exportación de postulaciones en formato CSV.
