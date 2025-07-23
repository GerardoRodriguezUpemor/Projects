# Normalización de la tabla Médicos (Consultorio Médico VitalCare)

## Tabla original (antes de normalizar)

| id_medico | nombre_completo | cedula_profesional | telefono | correo | id_especialidad |

---

## Análisis y aplicación de la 1FN

**Regla:** Todos los atributos deben contener valores atómicos (no listas ni conjuntos).

**Revisión:** Cada atributo contiene un solo valor por celda. No hay listas ni conjuntos.

### Tabla después de aplicar 1FN

| id_medico | nombre_completo | cedula_profesional | telefono | correo | id_especialidad |

---

## Análisis y aplicación de la 2FN

**Regla:** Debe estar en 1FN y no debe haber dependencias parciales de la clave primaria.

**Clave primaria:** id_medico

**Revisión:** Todos los atributos no clave dependen completamente de la clave primaria.

### Tabla después de aplicar 2FN

| id_medico | nombre_completo | cedula_profesional | telefono | correo | id_especialidad |

---

## Análisis y aplicación de la 3FN

**Regla:** Debe estar en 2FN y no debe haber dependencias transitivas.

**Revisión:** No hay atributos no clave que dependan de otros atributos no clave. Todos dependen directamente de la clave primaria.

### Tabla después de aplicar 3FN

| id_medico | nombre_completo | cedula_profesional | telefono | correo | id_especialidad |

---

**Conclusión:**
La tabla Médicos cumple con 1FN, 2FN y 3FN según los requerimientos del sistema.
