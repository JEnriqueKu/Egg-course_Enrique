package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Escribir un programa que pida tu nombre, lo guarde en una variable y lo muestre por
pantalla.*/
public class Ejercicio2 {
    public Ejercicio2() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese su nombre");
        String nombre = scanner.nextLine();
        System.out.println("Su nombre es: "+nombre);
    }
}
