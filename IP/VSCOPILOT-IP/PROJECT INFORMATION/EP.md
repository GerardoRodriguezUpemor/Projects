# Proyecto: Directorio Exclusivo de Talento Validado UPEMOR

---

## Introducción

El presente trabajo tiene como objetivo plantear de forma organizada y detallada la primera fase de un proyecto dirigido a la comunidad estudiantil de la Universidad Politécnica del Estado de Morelos (UPEMOR).

Actualmente, los estudiantes enfrentan el desafío de adquirir experiencia profesional antes de graduarse. Para abordar esto, se propone la creación de un **Directorio Exclusivo de Talento Validado**. Este software será la base para, en futuras fases, facilitar la conexión entre estudiantes y oportunidades laborales, fortaleciendo el vínculo universidad-empresa.

Este documento explica las razones, objetivos, funcionalidades, limitaciones, alcances, definición de roles y cronograma para esta primera etapa fundamental.

---

## Análisis del Entorno

### Descripción General
UPEMOR es una institución pública de educación superior, sede del proyecto. Destaca por la calidad de sus docentes, el compromiso con la comunidad estudiantil y la empleabilidad de sus egresados.

### Razón de la Elección
La adquisición de experiencia laboral es una necesidad. Mejorar la vinculación de estudiantes con empresas de manera segura garantiza a las empresas que el personal contratado es miembro verificado de la comunidad Lobos Rojos.

---

## Detección del Problema

### Definición del Problema
Los estudiantes de UPEMOR no cuentan con una herramienta centralizada y segura que valide su perfil académico y profesional, dificultando que las empresas identifiquen talento verificado y limitando el desarrollo profesional de los alumnos.

**Solución:** Crear un directorio de talento validado como primera fase. Este sistema gestionará los perfiles de alumnos, profesores y empresas, asegurando la autenticidad de la información. En una segunda fase, se implementará un portal de oportunidades laborales.

### Criterio SEAES
- **Seguridad:** Verificación de empresas y estudiantes.
- **Empleabilidad:** Experiencia laboral temprana para los estudiantes.
- **Garantía:** Certeza para las empresas sobre las habilidades de los candidatos.

---

## Antecedentes

UPEMOR es una universidad tecnológica dedicada a la formación integral, innovación e investigación científica y tecnológica, con el objetivo de contribuir al desarrollo económico y social.

- **Misión:** Formación integral, innovación e investigación para atender necesidades del sector productivo y la sociedad.
- **Visión:** Liderazgo en educación tecnológica, innovación y prosperidad regional y nacional.

---

## Descripción del Problema

La ausencia de una herramienta tecnológica efectiva afecta a los estudiantes, quienes necesitan experiencia profesional relevante antes de egresar. Esto limita su desarrollo profesional y la percepción de calidad institucional.

---

## Justificación

La creación de un directorio de talento validado es el primer paso estratégico para profesionalizar la vinculación en UPEMOR.

- **Estudiantes:** Mayor visibilidad ante oportunidades.
- **UPEMOR:** Imagen innovadora y gestión segura de la comunidad.
- **Empresas:** Acceso a talento validado y simplificación de procesos de reclutamiento.

---

## Objetivos del Proyecto

### Objetivo General
Desarrollar e implementar un directorio de software funcional y seguro que construya una base de datos validada de estudiantes, empresas y profesores de UPEMOR, sentando las bases para una futura plataforma de vinculación estratégica (Fase 2).

### Objetivos Específicos
- Establecer un proceso de registro y validación seguro.
- Implementar un sistema de portafolios para alumnos.
- Desarrollar un mecanismo de referencias con consentimiento.
- Gestionar y verificar perfiles de manera centralizada.
- Fortalecer la confianza universidad-empresa.
- Cumplir con los plazos definidos (3er periodo cuatrimestral, 25 Julio 2025).

---

## Alcances y Limitaciones del Proyecto

### Fase 1: Construcción del Directorio Exclusivo de Talento Validado (MVP)

**Objetivo:** Crear una base de datos segura y exclusiva de Alumnos, Profesores y Empresas, validada por la institución.

**Funciones Clave:**
1. **Gestión de Usuarios con Jerarquía:** Roles `SuperAdministrador` y `AdministradorBasico`.
2. **Registro y Perfil Detallado:** Formularios y perfiles para Alumnos, Profesores y Empresas.
3. **Validación Institucional:** Panel de validación para el `AdministradorBasico`.
4. **Portafolio de Proyectos del Alumno:** Añadir y describir proyectos en el perfil.
5. **Sistema de Referencias con Consentimiento:** Referencias de profesores visibles solo con consentimiento del alumno.

**Limitaciones:**
- No hay interacción directa empresa-alumno.
- No hay búsqueda de perfiles por empresas.
- No existe mecanismo de "muestra de interés".

### Fase 2: Activación de la Plataforma de Vinculación Inteligente

**Objetivo:** Activar la conexión segura y controlada entre empresas y talento validado, con el alumno en control de su información.

**Funciones Clave:**
1. **Directorio Anónimo para Empresas:** Perfiles anónimos filtrables.
2. **Protocolo de "Muestra de Interés":** Empresas pueden enviar interés por perfiles anónimos.
3. **Panel de Control del Alumno:** Visualización y gestión de intereses recibidos.
4. **Desbloqueo de Perfil con Consentimiento:** Solo si el alumno acepta, la empresa ve el perfil completo.
5. **Módulo de Disponibilidad:** El alumno actualiza su estatus para búsquedas.

---

## Plan del Proyecto

### Solución Propuesta
Desarrollar un software de escritorio como sistema de registro centralizado para crear un directorio confiable de la comunidad UPEMOR (alumnos, profesores, empresas asociadas). El software permitirá registrar, validar y gestionar perfiles, sentando una base de datos segura y verificada. En la fase inicial no incluirá publicación ni búsqueda de ofertas laborales.

### Recursos a Utilizar
- **Hardware:**
  - Computadora o laptop con Windows
  - Red local básica
- **Software:**
  - Windows 10/11
  - IDE: Apache NetBeans
  - Lenguaje: Java
  - SGBD: MariaDB/MySQL
  - Comunicación: WhatsApp, Correo, Meet, Figma
- **Recursos Humanos:**
  - Líder del proyecto: Gerardo Ayon Gomez
  - Analista de requerimientos: Gerardo Ayon Gomez
  - Diseñador del sistema y base de datos: Gerardo Rodriguez Cabrera (modela las 8 entidades clave)
  - Desarrolladores y testers: Todos los integrantes

### Etapas o Actividades del Proyecto

#### Fase 1: Construcción del Directorio
- **Semana 1 (7-14 Mayo):** Preanálisis, FODA, identificación de problemática, planteamiento de soluciones.
- **Semana 2-3 (16-21 Mayo):** Planificación, definición de roles, cronograma, diagrama de Gantt.
- **Semana 4 (21-30 Mayo):** Presentación de proyecto, organización, retroalimentación.

#### Fase 2: Diseño y Desarrollo
- **Semana 5-6 (4-13 Junio):** Diseño de aplicación, análisis de requerimientos, diseño de interfaces y base de datos.
- **Semana 7 (18-20 Junio):** Desarrollo de interfaces, autenticación, base de datos, validación de cuentas.
- **Semana 8 (25-27 Junio):** Presentación, retroalimentación.
- **Semana 9 (2-4 Julio):** Pruebas de funcionalidad y usabilidad, corrección de errores, documentación de resultados.

#### Fase 3: Adaptación y Divulgación
- **Semana 10-11 (9-18 Julio):** Instalación piloto, verificación de compatibilidad, configuración de usuarios de prueba, ajustes finales, creación de instalador, capacitación, planificación de expansión.
- **Semana 12 (23-25 Julio):** Presentación final y visualización de resultados.

---

## Conclusiones

El desarrollo de este proyecto, estructurado en dos fases, representa una solución estratégica e innovadora para UPEMOR.

- **Fase 1:** Construcción del Directorio Exclusivo de Talento Validado como activo de datos valioso y confiable.
- **Fase 2:** Plataforma de Vinculación Inteligente que empodera al alumno y protege su privacidad, facilitando oportunidades laborales reales.

Este proyecto es una hoja de ruta para transformar la vinculación universitaria, beneficiando a estudiantes, empresas y la universidad, y consolidando el prestigio institucional en la región.



