package com.upemor;

import com.upemor.controller.LoginController;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        LoginController loginController = new LoginController();

        System.out.println("=== Inicio de Sesión ===");
        System.out.print("Usuario: ");
        String usuario = scanner.nextLine();

        System.out.print("Contraseña: ");
        String contrasena = scanner.nextLine();

        if (loginController.iniciarSesion(usuario, contrasena)) {
            System.out.println("¡Inicio de sesión exitoso!");
            // Aquí puedes redirigir al menú principal o dashboard
        } else {
            System.out.println("Usuario o contraseña incorrectos.");
        }

        scanner.close();
    }
}