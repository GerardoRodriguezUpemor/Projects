# Análisis de Casos de Prueba: Inicio de Sesión Estudiante

Este documento resume y analiza los casos de prueba realizados para la funcionalidad de inicio de sesión de estudiantes en el sistema Upwork.

## Casos de Prueba Analizados

### FN1.CP01: Inicio de sesión válido para usuario estudiante
- **Objetivo:** Verificar que el sistema permite el acceso con credenciales válidas de estudiante.
- **Condición:** El usuario existe en la base de datos y la contraseña es correcta.
- **Resultado esperado:** Acceso exitoso y visualización de la interfaz principal del estudiante.
- **Comentario:** El sistema permite el acceso correctamente.

### FN1.CP02: Fallo por usuario incorrecto estudiante
- **Objetivo:** Verificar que el sistema rechaza el acceso si el usuario no existe.
- **Condición:** El usuario no existe en la base de datos.
- **Resultado esperado:** El sistema muestra mensaje de error y no permite el acceso.
- **Comentario:** El sistema rechaza el acceso con usuario inexistente.

### FN1.CP03: Fallo por contraseña incorrecta estudiante
- **Objetivo:** Verificar que el sistema rechaza el acceso si la contraseña es incorrecta.
- **Condición:** El usuario existe pero la contraseña es incorrecta.
- **Resultado esperado:** El sistema muestra mensaje de error y no permite el acceso.
- **Comentario:** El sistema rechaza el acceso con contraseña incorrecta.

### FN1.CP04: Fallo por campos vacíos
- **Objetivo:** Verificar que el sistema rechaza el acceso si los campos usuario y contraseña están vacíos.
- **Condición:** No se ingresan datos en los campos.
- **Resultado esperado:** El sistema muestra mensaje de error y no permite el acceso.
- **Comentario:** El sistema rechaza el acceso si los campos están vacíos.

## Conclusiones
- Se cubren los escenarios principales de inicio de sesión: acceso válido, usuario inexistente, contraseña incorrecta y campos vacíos.
- El sistema responde correctamente en cada caso, mostrando mensajes claros y restringiendo el acceso cuando corresponde.
- Estos casos de prueba aseguran la robustez y seguridad básica del proceso de autenticación para estudiantes.

## Recomendaciones
- Continuar con casos de prueba para otros perfiles (administrador, empresa).
- Probar variantes como bloqueo por múltiples intentos fallidos y recuperación de contraseña.
