# Proceso de Normalización de Tablas

## 1. Análisis de la 1FN
- Todas las tablas deben tener atributos atómicos (un solo valor por celda).
- En el modelo propuesto, ningún atributo almacena listas o valores múltiples. Si se requiere almacenar varios correos, áreas temáticas, etc., se debe crear una tabla aparte para esa relación.

## 2. Análisis de la 2FN
- Las tablas con clave primaria compuesta (por ejemplo, `Eventos_Participantes`) no deben tener atributos que dependan solo de una parte de la clave.
- En el modelo actual, `Eventos_Participantes` solo tiene las claves y no atributos adicionales, por lo que cumple la 2FN.
- Si se agregan atributos como "rol del participante en el evento", debe depender de ambas claves.

## 3. Análisis de la 3FN
- Ningún atributo debe depender de otro atributo que no sea clave primaria.
- Ejemplo: En la tabla `Campus`, si "ciudad" depende de "direccion", se debe separar en otra tabla. En el modelo actual, todos los atributos dependen de la clave primaria.

## Formato para exportar a Excel

Puedes exportar cada tabla en formato CSV para abrir en Excel. Ejemplo:

### Campus.csv
clave_campus,nombre,direccion,ciudad,director_general
C001,Campus Norte,"Av. Universidad 123",Ciudad A,"Dr. Juan Pérez"
C002,Campus Sur,"Calle Central 456",Ciudad B,"Dra. Ana López"

### Eventos.csv
id_evento,nombre,tipo_evento,area_tematica,fecha_inicio,fecha_fin,clave_campus
1,Congreso Nacional,Congreso,Ingeniería,2025-08-01,2025-08-03,C001
2,Simposio de Ciencias,Simposio,Ciencias,2025-09-10,2025-09-12,C002

### Participantes.csv
curp,nombre_completo,institucion,correo_electronico,tipo_participante
ABC1234567890DEF01,"Luis García",UNAM,luis@unam.mx,Estudiante
XYZ9876543210ABC02,"María Torres",IPN,maria@ipn.mx,Docente

### Eventos_Participantes.csv
curp,id_evento
ABC1234567890DEF01,1
XYZ9876543210ABC02,2

---

**Recomendación:**
- Exporta cada tabla como archivo CSV desde tu gestor de base de datos o crea los archivos manualmente siguiendo el formato mostrado.
- Así aseguras que los datos estén normalizados y listos para análisis en Excel.

---

¿Necesitas el formato para alguna otra tabla o ayuda para automatizar la exportación?
