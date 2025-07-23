# Diccionario de Datos: Consultorio Médico VitalCare

| Tabla                | Columna            | Tipo de Dato | Descripción                                      |
|----------------------|--------------------|--------------|--------------------------------------------------|
| Pacientes            | id_paciente        | INT          | Identificador único del paciente                  |
|                      | nombre_completo    | VARCHAR      | Nombre completo del paciente                      |
|                      | fecha_nacimiento   | DATE         | Fecha de nacimiento del paciente                  |
|                      | sexo               | ENUM         | Sexo del paciente (M/F)                           |
|                      | telefono           | VARCHAR      | Teléfono del paciente                             |
|                      | correo             | VARCHAR      | Correo electrónico del paciente                   |
| Medicos              | id_medico          | INT          | Identificador único del médico                    |
|                      | nombre_completo    | VARCHAR      | Nombre completo del médico                        |
|                      | cedula_profesional | VARCHAR      | Cédula profesional del médico                     |
|                      | telefono           | VARCHAR      | Teléfono del médico                               |
|                      | correo             | VARCHAR      | Correo electrónico del médico                     |
|                      | id_especialidad    | INT          | Clave foránea a la especialidad                   |
| Especialidades       | id_especialidad    | INT          | Identificador único de la especialidad            |
|                      | nombre             | VARCHAR      | Nombre de la especialidad                         |
|                      | descripcion        | VARCHAR      | Descripción de la especialidad                    |
| Citas                | id_cita            | INT          | Identificador único de la cita                    |
|                      | fecha              | DATE         | Fecha de la cita                                  |
|                      | hora               | TIME         | Hora de la cita                                   |
|                      | motivo_consulta    | VARCHAR      | Motivo de la consulta                             |
|                      | id_paciente        | INT          | Clave foránea al paciente                         |
|                      | id_medico          | INT          | Clave foránea al médico                           |
| Tratamientos         | id_tratamiento     | INT          | Identificador único del tratamiento               |
|                      | nombre             | VARCHAR      | Nombre del tratamiento                            |
|                      | descripcion        | VARCHAR      | Descripción del tratamiento                       |
|                      | duracion           | VARCHAR      | Duración del tratamiento                          |
| Citas_Tratamientos   | id_cita            | INT          | Clave foránea a la cita                           |
|                      | id_tratamiento     | INT          | Clave foránea al tratamiento                      |
|                      | indicaciones       | VARCHAR      | Indicaciones médicas específicas para la cita     |
