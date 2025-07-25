# Análisis de Caso de Prueba: FN1.CP01

## Nombre del sistema/proyecto
Punto de venta Tiendita.com

## Requisito a probar
FN1. Inicio de sesión

## Datos generales
- **Autor del caso de prueba:** Juan Pérez
- **Ejecutor del caso de prueba:** Miguel Domínguez
- **Fecha de creación:** 05/feb/2021
- **Fecha de ejecución:** 08/feb/2021

## Objetivo
Probar el ingreso correcto al sistema mediante un usuario y password válido con perfil administrador.

## Condiciones de ejecución
El usuario <<administrador>> debe estar dado de alta en la tabla Empleado de la BD junto con su clave correspondiente.

## Entrada
Registro Num. 3 de la tabla Empleado. (ver Anexo: Base de datos de pruebas).

## Flujo de pasos de la prueba
| No. | Acción | Resultado esperado |
|-----|--------|--------------------|
| 1   | Se hace clic en la opción iniciar sesión. | Aparece el formulario de inicio de sesión. |
| 2   | Se introduce “María” en el campo usuario y “nike98A” en el campo contraseña y se pulsa el botón aceptar. | Aparece la interfaz principal correspondiente al usuario administrador, proporcionando acceso a todas las operaciones del sistema. |

## Comentarios de evaluación
- Se debe verificar que el acceso sea otorgado únicamente si las credenciales son válidas y el usuario tiene perfil de administrador.
- El resultado obtenido debe coincidir con el esperado para aprobar el caso de prueba.

## Decisión de aprobación
- Aprobó: ____  Falló: ____

## Acciones correctivas
- (En caso de fallo, documentar acciones tomadas para corregir el error)

## Fecha de aprobación del caso de prueba
- ___________________
