package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*
Un cuadrado mágico 3 x 3 es una matriz 3 x 3 formada por números del 1 al 9 donde la
suma de sus filas, sus columnas y sus diagonales son idénticas. Crear un programa que
permita introducir un cuadrado por teclado y determine si este cuadrado es mágico o no.
El programa deberá comprobar que los números introducidos son correctos, es decir,
están entre el 1 y el 9.
 */
public class Ejercicio20 {
    public Ejercicio20(){
        int[][] matriz = new int[3][3];
        System.out.println("Ingrese los valores de la matríz 3x3 (del 1 al 9)");
        Scanner scanner= new Scanner(System.in);
        int numMag= (int) (((Math.pow(3,3))+3)/2), suma=0;
        boolean mag=true;


        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                int num=scanner.nextInt();
                while (num>9||num<1){
                    System.out.println("Ingrese un número válido");
                    num=scanner.nextInt();
                }
                matriz[i][j]=num;
            }
        }

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                suma=suma+matriz[i][j];
            }

            if (suma!=numMag) {
                mag=false;
                break;
            }
            suma=0;
        }


        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                suma=suma+matriz[j][i];
            }
            if (suma!=numMag) {
                mag=false;
                break;
            }
            suma=0;
        }


        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (i==j) suma=suma+matriz[i][j];
            }
        }
        mag=(suma==numMag);

        suma=0;


        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (i==j) suma=suma+matriz[i][2-j];
            }
        }
        mag=(suma==numMag);


        if (mag) System.out.println("La matriz es mágica");
        else System.out.println("La matriz no es mágica");

    }
}
