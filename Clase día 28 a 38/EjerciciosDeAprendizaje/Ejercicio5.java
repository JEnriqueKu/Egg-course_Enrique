package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Escribir un programa que lea un número entero por teclado y muestre por pantalla el
doble, el triple y la raíz cuadrada de ese número. Nota: investigar la función
Math.sqrt().*/
public class Ejercicio5 {
    public Ejercicio5(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Escriba un número");
        int num1 = scanner.nextInt();
        System.out.println("El doble es: " + (num1*2));
        System.out.println("El triple es: " + (num1*3));
        System.out.println("La raiz cuadrada es: " + Math.sqrt(num1));
    }
}
