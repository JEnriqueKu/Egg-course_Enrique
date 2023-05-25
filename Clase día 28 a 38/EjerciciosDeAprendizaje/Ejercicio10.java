package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
        solicite números al usuario hasta que la suma de los números introducidos supere el
        límite inicial.*/
public class Ejercicio10 {
    public Ejercicio10(){
        System.out.println("Ingrese un valor límite");
        Scanner scanner = new Scanner(System.in);

        int lim = scanner.nextInt();
        int suma= 0;

        while (suma<=lim){
            System.out.println("Ingrese numeros hasta que la suma de los números introducidos supere el límite");
            suma= suma + scanner.nextInt();
        }

        System.out.println("La suma es " + suma + " Y supera el límite " + lim);
    }
}
