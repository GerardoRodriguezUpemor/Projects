package com.upemor.controller;

import java.util.HashMap;
import java.util.Map;

public class LoginController {
    private Map<String, String> usuarios;

    public LoginController() {
        usuarios = new HashMap<>();
        // Ejemplo de usuarios (en un sistema real, se consultaría una base de datos)
        usuarios.put("estudiante", "1234");
        usuarios.put("admin", "adminpass");
    }

    public boolean iniciarSesion(String usuario, String contrasena) {
        return usuarios.containsKey(usuario) && usuarios.get(usuario).equals(contrasena);
    }
}
