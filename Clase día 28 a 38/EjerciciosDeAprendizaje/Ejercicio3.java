package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Escribir un programa que pida una frase y la muestre toda en mayúsculas y después toda
en minúsculas. Nota: investigar la función toUpperCase() y toLowerCase() en Java.*/
public class Ejercicio3 {
    public Ejercicio3(){
        System.out.println("Ingrese una frase");
        Scanner scanner = new Scanner(System.in);
        String frase = scanner.nextLine();

        System.out.println(frase.toUpperCase());
        System.out.println(frase.toLowerCase());
    }
}
