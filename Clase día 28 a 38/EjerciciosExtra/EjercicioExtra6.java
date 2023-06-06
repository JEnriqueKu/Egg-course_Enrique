package EjerciciosExtra;

import java.util.Scanner;

/*
Leer la altura de N personas y determinar el promedio de estaturas que se encuentran
por debajo de 1.60 mts. y el promedio de estaturas en general.
 */
public class EjercicioExtra6 {
    public EjercicioExtra6(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese el número de personas");
        int num = scanner.nextInt(), debajo=0;
        double[] vector = new double[num];
        double  suma=0,suma2=0;


        for (int i = 0; i < num; i++){
            vector[i]= scanner.nextDouble();
            suma=suma+vector[i];
        }

        for (int i = 0; i < num; i++){
            if (vector[i]<1.6){
                suma2=suma2+vector[i];
                debajo++;
            }
        }

        System.out.println("El promedio de los menores de 1.6 es: "+ (suma2/debajo) +" y el promedio general es: "+(suma/ vector.length));
    }
}
