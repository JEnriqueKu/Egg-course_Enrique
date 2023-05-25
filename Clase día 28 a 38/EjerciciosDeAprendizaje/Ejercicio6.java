package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Crear un programa que dado un numero determine si es par o impar.*/
public class Ejercicio6 {
    public Ejercicio6(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese un número");
        int num = scanner.nextInt();
        if (num%2 == 0){
            System.out.println("El número es par");
        } else {
            System.out.println("El número es impar");
        }
    }
}
