# Casos de Prueba: Inicio de Sesión Estudiante

A continuación se enlistan los casos de prueba realizados para el método de inicio de sesión de estudiante:

## FN1.CP01: Inicio de sesión válido para usuario estudiante
- Verifica el acceso correcto con credenciales válidas.

## FN1.CP02: Fallo por usuario incorrecto estudiante
- Verifica que el sistema rechaza el acceso si el usuario no existe.

## FN1.CP03: Fallo por contraseña incorrecta estudiante
- Verifica que el sistema rechaza el acceso si la contraseña es incorrecta.

## FN1.CP04: Fallo por campos vacíos
- Verifica que el sistema rechaza el acceso si los campos usuario y contraseña están vacíos.

## FN1.CP05: Fallo por formato incorrecto de usuario
- Verifica que el sistema rechaza el acceso si el usuario contiene caracteres no permitidos (por ejemplo, símbolos especiales).

## FN1.CP06: Fallo por formato incorrecto de contraseña
- Verifica que el sistema rechaza el acceso si la contraseña contiene caracteres no permitidos.

## FN1.CP07: Fallo por usuario bloqueado
- Verifica que el sistema rechaza el acceso si el usuario ha sido bloqueado por múltiples intentos fallidos.

## FN1.CP08: Fallo por sesión duplicada
- Verifica que el sistema no permite iniciar una nueva sesión si el usuario ya tiene una sesión activa en la aplicación.

## FN1.CP09: Fallo por expiración de sesión
- Verifica que el sistema solicita reautenticación si la sesión ha expirado por inactividad.

## FN1.CP10: Recuperación de contraseña
- Verifica que el sistema permite iniciar el flujo de recuperación de contraseña y que el usuario puede restablecerla correctamente.

## FN1.CP11: Redireccionamiento correcto tras inicio de sesión
- Verifica que, tras iniciar sesión, el usuario es dirigido a la pantalla principal adecuada según su perfil.

## FN1.CP12: Fallo por pérdida de conexión a base de datos
- Verifica que el sistema muestra un mensaje de error claro si no puede conectarse a la base de datos durante el inicio de sesión.

## FN1.CP13: Verificación de mensajes de error claros
- Verifica que todos los mensajes de error sean comprensibles y accesibles para el usuario.

## FN1.CP14: Registro de intentos de acceso
- Verifica que el sistema registre correctamente los intentos de inicio de sesión (exitosos y fallidos) en el log de la aplicación.
