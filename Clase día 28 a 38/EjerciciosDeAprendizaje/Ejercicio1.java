package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Escribir un programa que pida dos números enteros por teclado y calcule la suma de los
        dos. El programa deberá después mostrar el resultado de la suma*/
public class Ejercicio1 {
    public Ejercicio1() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese 2 numeros para calcular la suma");
        int num1 = scanner.nextInt();
        int num2 = scanner.nextInt();

        System.out.println("La suma es: "+ (num1+num2));
    }
}
