# Preguntas y Respuestas para Normalización de Hospital

## Preguntas para analizar la tabla hospital

### 1FN
- ¿Algún campo de la tabla hospital almacena más de un valor por registro? (Ejemplo: varios médicos, varios diagnósticos, varios pacientes en una sola celda)
- Respuesta: No, cada campo almacena un solo valor por registro.

### 2FN
- ¿La clave primaria es compuesta? Si es así, ¿algún atributo depende solo de una parte de la clave?
- Respuesta: Sí, la clave puede ser compuesta (por ejemplo, id_paciente + id_medico + id_consulta). Se deben eliminar los atributos que dependan solo de una parte de la clave y ubicarlos en su tabla correspondiente.

### 3FN
- ¿Algún atributo depende de otro atributo que no sea clave primaria?
- Respuesta: No, todos los atributos dependen únicamente de la clave primaria. Si existieran atributos que dependan de otros atributos no clave, deben separarse en nuevas tablas.

## Ejemplo de tabla hospital antes de normalizar
| id_consulta | id_paciente | nombre_paciente | id_medico | nombre_medico | fecha | diagnostico | tratamiento |
|------------|-------------|-----------------|-----------|---------------|-------|-------------|-------------|
| 1          | 101         | Juan Pérez      | 201       | Dr. Ruiz      |2025-07-16| Gripe       | Paracetamol |
| 2          | 102         | Ana López       | 202       | Dra. Gómez    |2025-07-17| Fractura    | Yeso        |


## Proceso de normalización

### 1FN
Lo primero que hago es revisar que cada campo tenga solo un dato, nada de listas ni cosas agrupadas en una sola celda. Si veo que hay varios valores juntos, los separo para que todo quede bien ordenado y claro.

### 2FN
Ya con los datos bien separados, me fijo si la clave primaria es compuesta (por ejemplo, id_consulta, id_paciente e id_medico). Si encuentro algún dato que depende solo de una parte de esa clave, lo saco y lo pongo en su propia tabla. Por ejemplo, el nombre del paciente va en la tabla de pacientes y el nombre del médico en la de médicos. Así evito que se repita información y todo queda más limpio.

### 3FN
Por último, reviso que no haya atributos que dependan de otros atributos que no sean clave primaria. Si veo que algún dato depende de otro que no es clave, lo separo en una nueva tabla. Por ejemplo, si tuviera "especialidad_medico" y depende del médico, lo mando a la tabla de médicos. Así me aseguro que todo esté bien normalizado y sin redundancias.

## Tablas resultantes (modelo final)
- Consultas: id_consulta, id_paciente, id_medico, fecha, diagnostico, tratamiento
- Pacientes: id_paciente, nombre_paciente
- Medicos: id_medico, nombre_medico

---

Así se asegura la normalización hasta la 3FN.
