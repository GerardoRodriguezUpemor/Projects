# FN1.CP03. Fallo por contraseña incorrecta (estudiante)

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
Verificar que el sistema no permita el acceso con una contraseña incorrecta para usuario estudiante.

**Condiciones de ejecución:**
El usuario existe pero la contraseña es incorrecta.

**Entradas:**
Usuario: `estudiante`, Contraseña: `contraseña_erronea`

---

## FLUJO DE PASOS DE LA PRUEBA
| No. | Acción | Resultado esperado | Resultado obtenido |
|-----|--------|-------------------|-------------------|
| 1 | Se hace clic en la opción iniciar sesión. | Aparece el formulario de inicio de sesión | Aparece el formulario de inicio de sesión |
| 2 | Se introduce “estudiante” en el campo usuario y “contraseña_erronea” en el campo contraseña y se pulsa el botón aceptar. | El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso. | El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso. |

---

**Comentarios de evaluación del caso de prueba:**
El sistema rechaza el acceso con contraseña incorrecta.

**Decisión de aprobación del caso de prueba:**
Aprobó: ✓  Falló: _____

**Acciones correctivas:**
No aplica.

**Fecha de aprobación del caso de prueba:**
16/jul/2025
