package EjerciciosExtra;

import java.util.Scanner;

/*
Se dispone de un conjunto de N familias, cada una de las cuales tiene una M cantidad de
hijos. Escriba un programa que pida la cantidad de familias y para cada familia la
cantidad de hijos para averiguar la media de edad de los hijos de todas las familias.
 */
public class EjercicioExtra14 {
    EjercicioExtra14(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese el numero de conjuntos de familia");
        int n= scanner.nextInt(),suma=0;
        int[] vector = new int[n];
        for (int i = 0; i <n; i++) {
            System.out.println("Ingrese el numero de personas de la familia "+(i+1));
            vector[i]= scanner.nextInt();
            suma=suma+vector[i];
        }
        System.out.println("La media de todas las familias es: "+((double) suma /n));
    }
}
