package EjerciciosDeAprendizaje;

import java.util.Random;
import java.util.Scanner;

/*
Recorrer un vector de N enteros contabilizando cuántos números son de 1 dígito, cuántos
de 2 dígitos, etcétera (hasta 5 dígitos).
 */
public class Ejercicio17 {
    public Ejercicio17(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese el tamaño del vector");
        int tamaño= scanner.nextInt();
        int[] vector = new int[tamaño];
        int uno=0, dos=0, tres=0, cuatro=0, cinco=0;
        int digi=0;

        Random random=new Random();

        for (int i=0;i<tamaño;i++) vector[i]= random.nextInt(10000)+1;

        for (int i=0;i<tamaño;i++) System.out.print(vector[i]+" ");
        System.out.println("");

        for (int i=0;i<tamaño;i++){
            while (vector[i]!=0){
                vector[i]=vector[i]/10;
                digi++;
            }

            switch (digi) {
                case 0 : uno++;
                break;
                case 1 : uno++;
                break;
                case 2 : dos++;
                break;
                case 3 : tres++;
                break;
                case 4 : cuatro++;
                break;
                case 5 : cinco++;
                break;
            }
            digi=0;
        }

        System.out.println("En el vector hay:");
        System.out.println(uno+" Números de 1 dígito");
        System.out.println(dos+" Números de 2 dígitos");
        System.out.println(tres+" Números de 3 dígitos");
        System.out.println(cuatro+" Números de 4 dígitos");
        System.out.println(cinco+" Números de 5 dígitos");
    }
}
