# Casos de Prueba: Registrarse e Iniciar Sesión (Administrador)

A continuación se enlistan los casos de prueba recomendados para asegurar la calidad del método de registro e inicio de sesión para el perfil de administrador:

## CP01: Registro exitoso de administrador
- Verifica que el sistema permite registrar un nuevo administrador con todos los datos obligatorios correctamente llenados.

## CP02: Fallo por campos obligatorios vacíos en registro
- Verifica que el sistema rechaza el registro si faltan datos obligatorios.

## CP03: Fallo por formato incorrecto de datos en registro
- Verifica que el sistema rechaza el registro si los datos ingresados no cumplen con el formato requerido (correo, contraseña, etc.).

## CP04: Fallo por usuario administrador duplicado
- Verifica que el sistema rechaza el registro si el usuario administrador ya existe.

## CP05: Inicio de sesión exitoso
- Verifica que el sistema permite iniciar sesión correctamente con credenciales válidas de administrador.

## CP06: Fallo por usuario incorrecto
- Verifica que el sistema rechaza el inicio de sesión si el usuario no existe.

## CP07: Fallo por contraseña incorrecta
- Verifica que el sistema rechaza el inicio de sesión si la contraseña es incorrecta.

## CP08: Fallo por campos vacíos en inicio de sesión
- Verifica que el sistema rechaza el inicio de sesión si los campos usuario y contraseña están vacíos.

## CP09: Fallo por usuario bloqueado
- Verifica que el sistema rechaza el inicio de sesión si el usuario ha sido bloqueado por múltiples intentos fallidos.

## CP10: Recuperación de contraseña
- Verifica que el sistema permite iniciar el flujo de recuperación de contraseña y que el administrador puede restablecerla correctamente.

## CP11: Redireccionamiento correcto tras inicio de sesión
- Verifica que, tras iniciar sesión, el administrador es dirigido a la pantalla principal de gestión.

## CP12: Fallo por pérdida de conexión a base de datos
- Verifica que el sistema muestra un mensaje de error claro si no puede conectarse a la base de datos durante el registro o inicio de sesión.

## CP13: Verificación de mensajes de error claros
- Verifica que todos los mensajes de error sean comprensibles y accesibles para el usuario.

## CP14: Registro de intentos de acceso
- Verifica que el sistema registre correctamente los intentos de registro e inicio de sesión (exitosos y fallidos) en el log de la aplicación.

Cada caso de prueba cubre un escenario esencial para asegurar la funcionalidad y robustez del proceso de registro e inicio de sesión para administradores.
