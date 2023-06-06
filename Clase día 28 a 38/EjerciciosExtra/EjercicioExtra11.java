package EjerciciosExtra;

import java.util.Scanner;

/*
Escribir un programa que lea un número entero y devuelva el número de dígitos que
componen ese número. Por ejemplo, si introducimos el número 12345, el programa
deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el
operador de división. Nota: recordar que las variables de tipo entero truncan los
números o resultados.
 */
public class EjercicioExtra11 {
    public EjercicioExtra11(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Escribe un número");
        int num = scanner.nextInt(), digi=0;
        while (num>0){
            digi++;
            num=num/10;
        }
        if (num==0) digi++;
        System.out.println("El número tiene "+digi+" dígitos");
    }
}
