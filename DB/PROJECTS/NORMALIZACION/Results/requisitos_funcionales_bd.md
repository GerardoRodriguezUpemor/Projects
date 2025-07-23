# Requisitos Funcionales (RF) en Modelado de Base de Datos

Los Requisitos Funcionales (RF) describen las acciones, procesos y reglas que debe cumplir el sistema de base de datos. Son fundamentales para definir qué información se debe almacenar y cómo se debe gestionar.

## Ejemplo de RF para el modelo presentado

1. **Registrar campus universitarios**
   - El sistema debe permitir almacenar información de cada campus: clave, nombre, dirección y nombre del director.

2. **Gestionar eventos académicos**
   - Se debe poder crear, modificar y consultar eventos con sus datos: id, nombre, tipo, área temática, fechas y campus organizador.

3. **Registrar participantes**
   - El sistema debe permitir registrar participantes con sus datos personales, institución, correo y tipo.

4. **Registrar ponencias y coautores**
   - Se debe poder asociar ponencias a participantes y eventos, incluyendo coautores y detalles de la ponencia.

5. **Evaluar ponencias**
   - El sistema debe permitir registrar evaluaciones de ponencias, con criterios, comentarios y fechas.

6. **Emitir certificados**
   - Se debe poder generar certificados para participantes, indicando rol, horas acumuladas y evento relacionado.

7. **Consultar relaciones entre entidades**
   - El sistema debe permitir consultar qué participantes asistieron a qué eventos, qué ponencias presentaron y qué certificados recibieron.

---

## ¿Cómo se relacionan los RF con el modelo?

Cada RF se traduce en entidades, atributos y relaciones en el modelo de base de datos. Por ejemplo:
- "Registrar campus" → Entidad Campus
- "Gestionar eventos" → Entidad Eventos y relación con Campus
- "Registrar participantes" → Entidad Participantes
- "Evaluar ponencias" → Entidad Evaluaciones y relación con Ponencias y Participantes

---

## Recomendaciones

- Antes de modelar, enumera todos los RF del sistema.
- Asegúrate de que cada RF esté representado en el modelo (entidad, atributo o relación).
- Usa los RF como guía para crear el diccionario de datos y los scripts DDL.

---

Este archivo te ayuda a comprender cómo los requisitos funcionales se reflejan en el diseño de tu base de datos.
