package EjerciciosExtra;

import java.util.Scanner;

/*
Crear un programa que dibuje una escalera de números, donde cada línea de números
comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al
usuario al comenzar. Ejemplo: si se ingresa el número 3:
 */
public class EjercicioExtra13 {
    public EjercicioExtra13(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese la cantidad de filas");
        int num= scanner.nextInt(),count=0;
        String ladder="";

        while (num>0){
            count++;
            num--;
            ladder=ladder+String.valueOf(count);
            System.out.println(ladder);
        }
    }
}
