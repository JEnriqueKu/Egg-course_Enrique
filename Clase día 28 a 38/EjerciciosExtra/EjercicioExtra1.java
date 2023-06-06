package EjerciciosExtra;

import java.util.Scanner;

/*
Dado un tiempo en minutos, calcular su equivalente en días y horas. Por ejemplo, si el
usuario ingresa 1600 minutos, el sistema debe calcular su equivalente: 1 día, 2 horas.
 */
public class EjercicioExtra1 {
    public EjercicioExtra1(){
        System.out.println("Ingrese un tiempo en minutos");
        Scanner scanner = new Scanner(System.in);
        int dias=0, horas=0, min=scanner.nextInt();

        while(min>1440){
            dias++;
            min=min-1440;
        }

        while (min>60){
            horas++;
            min=min-60;
        }

        System.out.println("Equivale a "+dias+" días "+horas+" horas");
    }
}
