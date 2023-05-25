package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
es una ‘A’. Si la primera letra es una ‘A’, se deberá de imprimir un mensaje por pantalla
que diga “CORRECTO”, en caso contrario, se deberá imprimir “INCORRECTO”. Nota:
investigar la función Substring y equals() de Java.*/
public class Ejercicio9 {
    public Ejercicio9(){
        System.out.println("Escriba una frase");
        Scanner scanner = new Scanner(System.in);
        String frase = scanner.nextLine();

        if (frase.substring(0,1).equals("A")){
            System.out.println("Correcto");
        } else {
            System.out.println("Incorrecto");
        }
    }
}
