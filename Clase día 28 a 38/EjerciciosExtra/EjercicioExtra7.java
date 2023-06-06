package EjerciciosExtra;

import java.util.Scanner;

/*
Realice un programa que calcule y visualice el valor máximo, el valor mínimo y el
promedio de n números (n>0). El valor de n se solicitará al principio del programa y los
números serán introducidos por el usuario. Realice dos versiones del programa, una
usando el bucle “while” y otra con el bucle “do - while”.
 */
public class EjercicioExtra7 {
    public EjercicioExtra7(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese la cantidad de números");
        int n = scanner.nextInt();
        int [] vector = new int[n];

        System.out.println("Ingrese los números");
        for (int i = 0; i < n; i++) vector[i]=scanner.nextInt();

        version1(vector,n);
        //version2(vector,n);
    }

    private void version2(int[] vector, int n) {
        int max = 0, min = vector[0], count = -1, suma=0;

        do {
            count++;
            if (max<vector[count]) max=vector[count];
            if (min>vector[count]) min=vector[count];
            suma=suma+vector[count];
        } while (count<vector.length-1);
        System.out.println("El valor maximo es: "+max+" el mínimo es: "+min+" el promedio es: "+suma/vector.length);
    }

    private void version1(int[] vector, int n) {
        int max = 0, min = vector[0], count = 0, suma=0;

        while (count<vector.length){
            if (max<vector[count]) max=vector[count];
            if (min>vector[count]) min=vector[count];
            suma=suma+vector[count];
            count++;
        }
        System.out.println("El valor maximo es: "+max+" el mínimo es: "+min+" el promedio es: "+suma/vector.length);
    }

}
