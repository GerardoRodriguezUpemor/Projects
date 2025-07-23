# Normalización de la tabla Tratamientos (Consultorio Médico VitalCare)

## Tabla original (antes de normalizar)

| id_tratamiento | nombre | descripcion | duracion |

---

## Análisis y aplicación de la 1FN

**Regla:** Todos los atributos deben contener valores atómicos (no listas ni conjuntos).

**Revisión:** Cada atributo contiene un solo valor por celda. No hay listas ni conjuntos.

### Tabla después de aplicar 1FN

| id_tratamiento | nombre | descripcion | duracion |

---

## Análisis y aplicación de la 2FN

**Regla:** Debe estar en 1FN y no debe haber dependencias parciales de la clave primaria.

**Clave primaria:** id_tratamiento

**Revisión:** Todos los atributos no clave dependen completamente de la clave primaria.

### Tabla después de aplicar 2FN

| id_tratamiento | nombre | descripcion | duracion |

---

## Análisis y aplicación de la 3FN

**Regla:** Debe estar en 2FN y no debe haber dependencias transitivas.

**Revisión:** No hay atributos no clave que dependan de otros atributos no clave. Todos dependen directamente de la clave primaria.

### Tabla después de aplicar 3FN

| id_tratamiento | nombre | descripcion | duracion |

---

**Conclusión:**
La tabla Tratamientos cumple con 1FN, 2FN y 3FN según los requerimientos del sistema.
