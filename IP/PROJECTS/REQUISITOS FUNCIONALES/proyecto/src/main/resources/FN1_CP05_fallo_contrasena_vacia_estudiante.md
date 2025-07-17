# FN1.CP05. Fallo por contraseña vacía (estudiante)

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
Verificar que el sistema no permita el acceso si el campo contraseña está vacío.

**Condiciones de ejecución:**
El usuario existe pero no se ingresa contraseña.

**Entradas:**
Usuario: `estudiante`, Contraseña: ""

---

## FLUJO DE PASOS DE LA PRUEBA
| No. | Acción | Resultado esperado | Resultado obtenido |
|-----|--------|-------------------|-------------------|
| 1 | Se hace clic en la opción iniciar sesión. | Aparece el formulario de inicio de sesión | Aparece el formulario de inicio de sesión |
| 2 | Se introduce “estudiante” en el campo usuario y se deja el campo contraseña vacío, luego se pulsa el botón aceptar. | El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso. | El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso. |

---

**Comentarios de evaluación del caso de prueba:**
El sistema rechaza el acceso si la contraseña está vacía.

**Decisión de aprobación del caso de prueba:**
Aprobó: ✓  Falló: _____

**Acciones correctivas:**
No aplica.

**Fecha de aprobación del caso de prueba:**
16/jul/2025
