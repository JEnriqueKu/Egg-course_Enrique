package EjerciciosDeAprendizaje;

import java.util.Random;
import java.util.Scanner;
/*
Realizar un algoritmo que rellene un vector de tamaño N con valores aleatorios y le pida
al usuario un numero a buscar en el vector. El programa mostrará donde se encuentra el
numero y si se encuentra repetido.
 */
public class Ejercicio16 {
    public Ejercicio16(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese el tamaño del vector");
        int n=scanner.nextInt();
        Random random = new Random();
        int[] vector = new int[n];
        int count = 0;

        for (int i=0; i<n;i++) vector[i]= random.nextInt(10)+1;

        for (int i=0; i<n;i++) System.out.print(vector[i]+ " ");
        System.out.println("");

        System.out.println("Ingrese un número a buscar en el vector");
        int find=scanner.nextInt();

        for (int i=0; i<n; i++){
            if (vector[i]==find) {
                System.out.println("Se encontró el número en la posición " + (i+1));
                count++;
            }
        }

        if (count==0) {
            System.out.println("El número no está en el vector");
        } else if (count==1) {
            System.out.println("El numero está en el vector y no está repetido");
        } else System.out.println("El número está en el vector y está repetido "+count+" veces");

    }
}
