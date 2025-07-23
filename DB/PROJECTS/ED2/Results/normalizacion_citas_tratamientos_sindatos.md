# Normalización de la tabla Citas_Tratamientos (Consultorio Médico VitalCare)

## Tabla original (antes de normalizar)

| id_cita | id_tratamiento | indicaciones |

---

## Análisis y aplicación de la 1FN

**Regla:** Todos los atributos deben contener valores atómicos (no listas ni conjuntos).

**Revisión:** Cada atributo contiene un solo valor por celda. No hay listas ni conjuntos.

### Tabla después de aplicar 1FN

| id_cita | id_tratamiento | indicaciones |

---

## Análisis y aplicación de la 2FN

**Regla:** Debe estar en 1FN y no debe haber dependencias parciales de la clave primaria.

**Clave primaria:** (id_cita, id_tratamiento)

**Revisión:** El atributo `indicaciones` depende completamente de la clave primaria compuesta.

### Tabla después de aplicar 2FN

| id_cita | id_tratamiento | indicaciones |

---

## Análisis y aplicación de la 3FN

**Regla:** Debe estar en 2FN y no debe haber dependencias transitivas.

**Revisión:** No hay atributos no clave que dependan de otros atributos no clave. Todos dependen directamente de la clave primaria compuesta.

### Tabla después de aplicar 3FN

| id_cita | id_tratamiento | indicaciones |

---

**Conclusión:**
La tabla Citas_Tratamientos cumple con 1FN, 2FN y 3FN según los requerimientos del sistema.
