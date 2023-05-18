// Implementar un programa que le pida dos números enteros a usuario y determine si ambos o
//alguno de ellos es mayor a 25.

import java.util.Scanner;

public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese 2 numeros");
        int num1 = scanner.nextInt();
        int num2 = scanner.nextInt();

        /*
        if (num1>25 || num2>25){
            System.out.println("Ambos o alguno de ellos es mayor a 25");
        } else {
            System.out.println("Ninguno es mayor a 25");
        }
         */

        if (num1 > 25 && num2>25){
            System.out.println("Ambos son mayores a 25");
        } else if (num2>25) {
            System.out.println("El numero 2 es mayor a 25");
        } else if (num1 > 25) {
            System.out.println("El numero 1 es mayor a 25");
        } else {
            System.out.println("Ninguno es mayor a 25");
        }
    }
}
