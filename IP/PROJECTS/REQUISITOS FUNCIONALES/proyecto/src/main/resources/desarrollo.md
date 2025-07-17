# Desarrollo

El funcionamiento inicial del proyecto se resume en **4 tipos de usuarios**:
- Estudiantes
- Profesores
- Empresas
- Administradores

## Funcionalidades principales

Según el Diagrama de Casos de Uso, se definieron las siguientes funcionalidades para cada tipo de usuario:

- **Registro e inicio de sesión** para los 4 tipos de usuario.
- **Empresas**: Publicar ofertas laborales y consultar la lista de postulantes a sus ofertas.
- **Administradores**: Dar seguimiento a postulaciones y verificar perfiles de empresas.
- **Alumnos**: Visualizar ofertas (con filtro por carrera), buscar ofertas y postularse.
- **Profesores**: Visualizar perfiles de empresas y estudiantes, y recomendar estudiantes.

---

> Tras analizar los requerimientos y roles, se decidió eliminar el perfil de Docentes del software, ya que su participación es mínima (solo puede recomendar estudiantes). Esta funcionalidad se puede omitir.

> También se decidió que los perfiles de empresas sean gestionados por los administradores. Ahora, los administradores serán responsables de dar de alta empresas y publicar ofertas. Las empresas que deseen registrarse en la plataforma deberán tener acuerdos previos con la institución.

---

Al existir estos cambios, se modificarán los requerimientos para adaptarlos a las necesidades reales del proyecto.

## Diagrama de Casos de Uso UML

A continuación se presentan dos diagramas UML que ilustran la evolución del modelo de casos de uso para el proyecto:

### Primer modelo (Imagen 1)

![Diagrama de caso de uso UML - Primer modelo](./picture1.png)

El primer diagrama muestra la idea inicial del sistema, donde los administradores gestionan empresas y ofertas, y los estudiantes pueden agregar CV, proyectos, buscar ofertas y postularse. Sin embargo, este modelo presentaba limitaciones en la definición de roles y funcionalidades, especialmente en la participación de los docentes y la gestión de empresas.

### Modelo redefinido (Imagen 2)

![Diagrama de caso de uso UML - Modelo redefinido](./picture2.png)

En el segundo diagrama, se realiza una reestructuración de los roles y funcionalidades:
- Se eliminan funciones poco relevantes, como la recomendación de alumnos por parte de los docentes.
- Se clarifica la gestión de empresas y ofertas, asignando la responsabilidad a los administradores.
- Se definen de manera más precisa las interacciones entre estudiantes, empresas y administrativos.

Este modelo redefinido sirve como guía principal para el desarrollo del sistema, ya que se adapta mejor a las necesidades reales del proyecto y optimiza el flujo de trabajo entre los diferentes tipos de usuario.

---

## Priorización de Requisitos del Proyecto

Es fundamental identificar y clasificar los requisitos del proyecto para definir sobre qué se basará el desarrollo y cómo se implementarán las funcionalidades. La correcta priorización permite enfocar los esfuerzos en las actividades y características que más impacto tienen en el software, dedicando mayor atención a las funcionalidades esenciales.

Para lograr esto, se utiliza la técnica de clasificación **MoSCoW**:

- **Imprescindibles (Must have):** Requerimientos sin los cuales el sistema no funcionará.
- **Importantes (Should have):** Importantes, pero no críticos.
- **Deseables (Could have):** Deseables, pero no esenciales.
- **No necesarios (Won’t have):** No necesarios en esta versión.

Al realizar la priorización, se observa que todos los requisitos del sistema son relevantes, ya que se han refinado cuidadosamente. Por ello, todos deben estar incluidos, pero se desarrollarán siguiendo la jerarquía establecida para abordar cada uno de manera ordenada y eficiente.

---

## Requisitos Funcionales Actualizados

**Estudiante:**
- Registrarse e iniciar sesión.
- Agregar proyectos y CV a su perfil.
- Buscar y visualizar ofertas laborales/estadías.
- Postularse a ofertas.

**Administrador:**
- Registrarse e iniciar sesión.
- Registrar empresas.
- Registrar ofertas.
- Visualizar postulaciones de estudiantes.
- Dar seguimiento a postulaciones/estadías.
- Exportar postulaciones de una oferta en formato CSV.
- Visualizar información de estudiantes.

## Requisitos No Funcionales Actualizados

- Software optimizado y fácil de usar.
- Seguridad de usuarios.
- El sistema debe validar los registros de estudiantes.

