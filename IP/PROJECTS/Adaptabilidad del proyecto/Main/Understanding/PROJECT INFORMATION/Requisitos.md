# **Priorización de Requisitos - Directorio de Talento Validado**

Este documento define los requisitos funcionales y no funcionales para el desarrollo del sistema, divididos en dos fases estratégicas.

---
### **FASE 1: Construcción del Directorio Exclusivo de Talento Validado (MVP)**
*El objetivo de esta fase es crear y poblar una base de datos segura y de alta calidad.*

#### **Requisitos Funcionales (RF) - Fase 1**

**--- Imprescindibles (Must have) ---**

*   **RF-ADM-01: Autenticación de Administradores**
    *   **Descripción:** El sistema debe permitir la autenticación (inicio de sesión) de `SuperAdministrador` y `AdministradorBasico` según sus roles.

*   **RF-ADM-02: Gestión de Administradores (SuperAdmin)**
    *   **Descripción:** Un `SuperAdministrador` debe poder crear, editar y desactivar las cuentas de los `AdministradorBasico`.

*   **RF-REG-01: Registro de Usuarios (Alumno, Profesor, Empresa)**
    *   **Descripción:** El sistema debe permitir que un visitante se registre como "Alumno", "Profesor" o "Empresa", proporcionando los datos requeridos. Todas las cuentas nuevas quedarán en estado 'Pendiente' de validación.

*   **RF-ADM-03: Validación de Cuentas (AdminBasico)**
    *   **Descripción:** Un `AdministradorBasico` debe poder visualizar los registros pendientes y aprobarlos o rechazarlos para activar sus cuentas. Esta es la función central que garantiza la calidad del directorio.

*   **RF-USR-01: Autenticación de Usuarios Validados**
    *   **Descripción:** El sistema debe permitir el inicio de sesión de Alumnos, Profesores y Empresas cuyas cuentas hayan sido previamente validadas.

*   **RF-ALU-01: Gestión de Portafolio de Proyectos**
    *   **Descripción:** Un `Alumno` autenticado debe poder añadir, editar y eliminar proyectos en su perfil, incluyendo título, descripción y un enlace externo.

*   **RF-REF-01: Gestión de Referencias (Profesor)**
    *   **Descripción:** Un `Profesor` debe tener un panel para ver las solicitudes de referencia pendientes de los alumnos, pudiendo aceptarlas o rechazarlas. También debe poder ver y revocar las referencias activas.

**--- Importantes (Should have) ---**

*   **RF-ALU-02: Solicitud de Referencia por Alumno**
    *   **Descripción:** Un `Alumno` debe poder buscar profesores registrados y enviarles una solicitud para que actúen como referencia.

*   **RF-USR-02: Edición de Perfil Básico**
    *   **Descripción:** Todos los usuarios (Alumnos, Profesores, Empresas) deben poder editar la información no crítica de su propio perfil después del registro.

#### **Requisitos No Funcionales (RNF) - Fase 1**

*   **RNF-01: Seguridad:** La información de los usuarios y las contraseñas deben estar protegidas y cifradas. El acceso a las funciones de administración debe estar estrictamente restringido por rol. (Imprescindible)
*   **RNF-02: Usabilidad:** La interfaz para el registro y la gestión de perfiles debe ser clara e intuitiva para minimizar la fricción y fomentar el registro. (Imprescindible)
*   **RNF-03: Compatibilidad:** La aplicación deberá ser compatible con los sistemas operativos y navegadores definidos en el alcance técnico del proyecto. (Imprescindible)
*   **RNF-04: Rendimiento:** El sistema debe manejar los procesos de registro y carga de perfiles de manera fluida y sin retrasos notables para el usuario. (Importante)

---
### **FASE 2: Activación de la Plataforma de Vinculación Inteligente**
*El objetivo de esta fase es activar la interacción entre empresas y talento, generando oportunidades reales.*

#### **Requisitos Funcionales (RF) - Fase 2**

**--- Imprescindibles (Must have) ---**

*   **RF-EMP-01: Búsqueda y Filtrado de Talentos**
    *   **Descripción:** Una `Empresa` validada debe poder buscar y filtrar la lista de perfiles de alumnos. La vista inicial debe ser **anónima**, mostrando solo carrera, cuatrimestre, habilidades y disponibilidad.

*   **RF-INT-01: Muestra de Interés por Empresa**
    *   **Descripción:** Desde la vista de perfiles anónimos, una `Empresa` debe poder presionar un botón para "Mostrar Interés" en un alumno, lo que genera un registro en la entidad `MuestraInteres`.

*   **RF-INT-02: Gestión de Intereses por Alumno**
    *   **Descripción:** Un `Alumno` debe tener un panel de notificaciones donde pueda ver qué empresas han mostrado interés. Debe poder ver el perfil de la empresa y 'Aceptar' o 'Rechazar' la solicitud.

*   **RF-INT-03: Desbloqueo de Perfil Detallado**
    *   **Descripción:** Si el `Alumno` acepta una muestra de interés, el sistema debe permitir a esa `Empresa` específica ver el perfil detallado del alumno, incluyendo su nombre completo y correo institucional.

**--- Importantes (Should have) ---**

*   **RF-ALU-03: Actualización de Disponibilidad**
    *   **Descripción:** Un `Alumno` debe poder actualizar fácilmente su estado de disponibilidad para prácticas y su horario, para que la información que ven las empresas sea siempre relevante.

*   **RF-EMP-02: Panel de Seguimiento de Intereses**
    *   **Descripción:** Una `Empresa` debe tener un panel donde pueda ver el estado de todas sus "Muestras de Interés" ('Enviado', 'Aceptado', 'Rechazado').

#### **Requisitos No Funcionales (RNF) - Fase 2**

*   **RNF-05: Escalabilidad:** La arquitectura debe soportar un aumento en las consultas y búsquedas simultáneas por parte de las empresas sin degradar el rendimiento. (Imprescindible)
*   **RNF-06: Notificaciones:** El sistema deberá contar con un mecanismo (ej. notificaciones en la app o por email) para informar a los alumnos de nuevas muestras de interés de manera oportuna. (Importante)

---

