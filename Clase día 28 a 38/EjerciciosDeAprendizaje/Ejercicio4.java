package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Dada una cantidad de grados centígrados se debe mostrar su equivalente en grados
Fahrenheit. La fórmula correspondiente es: F = 32 + (9 * C / 5).*/
public class Ejercicio4 {
    public Ejercicio4(){
        System.out.println("Ingrese una temperatura en °C");
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();

        int f= 32+(9*c/5);
        System.out.println("Su equivalente en °F es: " + f);
    }
}
