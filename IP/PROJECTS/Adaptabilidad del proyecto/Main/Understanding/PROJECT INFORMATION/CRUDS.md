/* DOCUMENTO QUE SOLO SIRVE PARA GUARDAR
INFORMACION PARA NUTRIR A CHAT Y SU SPACE*/


# Definición de Entidades y Atributos (CRUDS)

---

Este documento define las entidades de datos que componen el sistema del **Directorio de Talento Validado**.

## 1. Entidades de Usuarios y Roles

### Entidad: `SuperAdministrador`
- **Descripción:** Rol raíz del sistema, encargado de la gestión de los administradores operativos.
- **Atributos:**
  - `id_super_admin` (PK)
  - `nombre_usuario` (Único)
  - `hash_contrasena`
  - `nombre_completo`
  - `correo_electronico` (Único)
  - `fecha_creacion`
  - `estado` ('Activo', 'Inactivo')

### Entidad: `AdministradorBasico`
- **Descripción:** Rol operativo que valida los registros de la comunidad.
- **Atributos:**
  - `id_admin_basico` (PK)
  - `id_creador` (FK a SuperAdministrador)
  - `nombre_usuario` (Único)
  - `hash_contrasena`
  - `nombre_completo`
  - `fecha_creacion`
  - `estado` ('Activo', 'Inactivo')

### Entidad: `Alumno`
- **Descripción:** El perfil central del talento estudiantil.
- **Atributos:**
  - `id_alumno` (PK)
  - `matricula` (Única)
  - `nombre_completo`
  - `correo_institucional` (Único)
  - `hash_contrasena`
  - `carrera`
  - `cuatrimestre`
  - `resumen_habilidades` (Campo para etiquetas de habilidades)
  - `estado_validacion` ('Pendiente', 'Aprobado', 'Rechazado')
  - `disponibilidad_practicas` ('Disponible ahora', 'En 1 mes', 'No disponible')
  - `horario_disponible` (Texto libre)
  - `municipio`
  - `fecha_registro`

### Entidad: `Profesor`
- **Descripción:** Miembros de la facultad que actúan como referentes de confianza.
- **Atributos:**
  - `id_profesor` (PK)
  - `numero_empleado` (Único)
  - `nombre_completo`
  - `correo_institucional` (Único)
  - `hash_contrasena`
  - `area_academica`
  - `estado_validacion` ('Pendiente', 'Aprobado', 'Rechazado')
  - `fecha_registro`

### Entidad: `Empresa`
- **Descripción:** Organizaciones externas validadas en busca de talento.
- **Atributos:**
  - `id_empresa` (PK)
  - `rfc` (Único)
  - `nombre_empresa`
  - `giro_empresa`
  - `correo_contacto` (Único)
  - `hash_contrasena`
  - `descripcion_empresa`
  - `estado_validacion` ('Pendiente', 'Aprobado', 'Rechazado')
  - `fecha_registro`

---

## 2. Entidades de Funcionalidad y Relaciones

### Entidad: `Proyecto` (Portafolio del Alumno)
- **Descripción:** Representa un proyecto individual en el portafolio de un alumno.
- **Relación:** Uno a Muchos (Un `Alumno` tiene muchos `Proyecto`).
- **Atributos:**
  - `id_proyecto` (PK)
  - `id_alumno` (FK a Alumno)
  - `titulo`
  - `descripcion`
  - `enlace_proyecto`
  - `fecha_creacion`

### Entidad: `Referencia` (Vínculo Alumno-Profesor)
- **Descripción:** Modela la relación de referencia, incluyendo el consentimiento.
- **Relación:** Muchos a Muchos (a través de esta tabla de unión).
- **Atributos:**
  - `id_referencia` (PK)
  - `id_alumno` (FK a Alumno)
  - `id_profesor` (FK a Profesor)
  - `estado_referencia` ('Pendiente', 'Aceptada', 'Rechazada')
  - `fecha_solicitud`
  - `fecha_respuesta`

### Entidad: `MuestraInteres` (Interacción Empresa-Alumno - Fase 2)
- **Descripción:** Registra el interés de una empresa en un alumno.
- **Relación:** Muchos a Muchos (a través de esta tabla de unión).
- **Atributos:**
  - `id_interes` (PK)
  - `id_empresa` (FK a Empresa)
  - `id_alumno` (FK a Alumno)
  - `estado_interes` ('Enviado', 'Aceptado por Alumno', 'Rechazado por Alumno')
  - `fecha_muestra_interes`
  - `fecha_respuesta_alumno`

