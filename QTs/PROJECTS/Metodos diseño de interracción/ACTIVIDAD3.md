# Actividad 3: Diseñar tu propio modelo de navegación

## Conceptos fundamentales

Antes de diseñar un modelo de navegación, es importante conocer los siguientes conceptos:

- **Pantalla:** Cada vista o sección principal de la app (por ejemplo: Inicio, Perfil, Ajustes).
- **Modelo de navegación:** Esquema que muestra cómo se conectan las pantallas entre sí.
- **Tipos de navegación:**
    - **Jerárquica:** Hay una pantalla principal y desde ahí se accede a subpantallas (como un árbol).
    - **Lineal:** Se navega de una pantalla a la siguiente en secuencia (como un asistente paso a paso).
    - **En red/tabular:** Todas las pantallas principales están conectadas entre sí, normalmente mediante una barra de navegación o menú.


## Algoritmo para diseñar un modelo de navegación

1. **Define el objetivo de tu app inventada.**
2. **Lista al menos 5 pantallas principales** que necesita tu app.
3. **Dibuja (o describe) cómo se conectan las pantallas**:
    - ¿Desde qué pantalla puedes acceder a cada una?
    - ¿Hay accesos directos o solo se puede llegar siguiendo un orden?
4. **Clasifica el tipo de navegación** según los conceptos anteriores.
5. **Presenta el modelo de navegación** (puede ser un diagrama textual o visual).

## Ejemplo de aplicación del algoritmo

### 1. Objetivo de la app
App inventada: "FitLife" (app para rutinas de ejercicio y seguimiento de hábitos saludables).

### 2. Pantallas principales
- Inicio
- Rutinas
- Progreso
- Comunidad
- Perfil

### 3. Modelo de navegación (diagrama textual)
```
[Inicio]
  |---> [Rutinas]
  |---> [Progreso]
  |---> [Comunidad]
  |---> [Perfil]
```
Todas las pantallas principales están conectadas mediante una barra de navegación inferior.

### 4. Tipo de navegación
**En red/tabular**

### 5. Presentación
- El usuario puede ir de cualquier pantalla principal a otra usando la barra de navegación.
- Ejemplo visual:

```
[Inicio] <--> [Rutinas] <--> [Progreso] <--> [Comunidad] <--> [Perfil]
```

Así se cumple con los requisitos de la actividad.
