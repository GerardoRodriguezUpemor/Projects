# FN1.CP01. Inicio de sesión exitoso para usuario estudiante

## DATOS GENERALES DE LA PRUEBA
- **Nombre del sistema/proyecto:** Upework
- **Requisito a probar:** FN1. Inicio de sesión de Estudiante
- **Autor del caso de prueba:** Gerardo Rodriguez
- **Fecha de creación:** 16/jul/2025
- **Ejecutor del caso de prueba:** n/a
- **Fecha de ejecución:** n/a

---

## DESARROLLO
**Objetivo:**
Probar el ingreso correcto al sistema mediante un usuario y password válido con perfil estudiante.

**Condiciones de ejecución:**
El usuario `<estudiante>` debe estar dado de alta en la tabla Empleado o Estudiante de la BD junto con su clave correspondiente.

**Entradas:**
Registro correspondiente al estudiante en la base de datos. (ver Anexo: Base de datos de pruebas).

---

## FLUJO DE PASOS DE LA PRUEBA
| No. | Acción | Resultado esperado | Resultado obtenido |
|-----|--------|-------------------|-------------------|
| 1 | Se hace clic en la opción iniciar sesión. | Aparece el formulario de inicio de sesión | Aparece el formulario de inicio de sesión |
| 2 | Se introduce “estudiante” en el campo usuario y “1234” en el campo contraseña y se pulsa el botón aceptar. | Aparece la interfaz principal correspondiente al usuario estudiante, proporcionando acceso a las operaciones permitidas para su perfil. | Aparece la interfaz principal correspondiente al usuario estudiante, proporcionando acceso a las operaciones permitidas para su perfil. |

---

**Comentarios de evaluación del caso de prueba:**
El sistema permite el acceso correctamente con credenciales válidas de estudiante.

**Decisión de aprobación del caso de prueba:**
Aprobó: ✓  Falló: _____

**Acciones correctivas:**
No aplica.

**Fecha de aprobación del caso de prueba:**
16/jul/2025
