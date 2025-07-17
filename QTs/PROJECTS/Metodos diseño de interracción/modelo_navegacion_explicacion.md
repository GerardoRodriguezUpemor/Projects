# Modelo de navegación: Explicación y conexiones

## ¿Cómo se conecta cada pantalla?

- **Inicio de sesión** → Si el usuario accede correctamente, pasa a la pantalla de **Opciones**.
- **Opciones** → Desde aquí el usuario puede ir a:
    - **Descargar**
    - **Subir**
    - **Compartir**
    - También puede cerrar sesión y volver a Inicio de sesión.
- **Descargar**, **Subir** y **Compartir** → Cada una tiene un botón para regresar a **Opciones**.

### Diagrama textual de navegación

```
[Inicio de sesión]
   |
   v
[Opciones] <-----> [Descargar]
     |             [Subir]
     |             [Compartir]
     +-----> [Cerrar sesión → Inicio de sesión]
```

## Tipo de navegación usado

El modelo es **jerárquico** con menú principal:
- Hay una pantalla central (**Opciones**) desde la que se accede a las funciones principales (Descargar, Subir, Compartir).
- Cada función es una pantalla secundaria y siempre se puede volver al menú principal.
- El flujo es claro y controlado, típico de apps con menú principal.

**Ventajas:**
- Facilita la orientación del usuario.
- Reduce errores y confusiones.
- Es fácil de escalar si se agregan más funciones.
