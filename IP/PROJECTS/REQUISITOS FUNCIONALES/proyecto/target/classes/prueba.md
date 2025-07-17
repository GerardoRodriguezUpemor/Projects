# Casos de Prueba: Inicio de Sesión de Usuario Estudiante

## FN1.CP01. Inicio de sesión exitoso para usuario estudiante

**Entradas:**
- Usuario: `estudiante`
- Contraseña: `1234`

**Resultado esperado:**
- El sistema permite el acceso y muestra la interfaz principal de estudiante.

---

## FN1.CP02. Fallo por usuario incorrecto

**Entradas:**
- Usuario: `usuario_inexistente`
- Contraseña: `1234`

**Resultado esperado:**
- El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso.

---

## FN1.CP03. Fallo por contraseña incorrecta

**Entradas:**
- Usuario: `estudiante`
- Contraseña: `contraseña_erronea`

**Resultado esperado:**
- El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso.

---

## FN1.CP04. Fallo por campos vacíos

**Entradas:**
- Usuario: ""
- Contraseña: ""

**Resultado esperado:**
- El sistema muestra el mensaje: "Usuario o contraseña incorrectos." y no permite el acceso.
