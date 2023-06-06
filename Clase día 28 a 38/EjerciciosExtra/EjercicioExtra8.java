package EjerciciosExtra;

import java.util.Scanner;

/*
Escriba un programa que lea números enteros. Si el número es múltiplo de cinco debe
detener la lectura y mostrar la cantidad de números leídos, la cantidad de números pares
y la cantidad de números impares. Al igual que en el ejercicio anterior los números
negativos no deben sumarse. Nota: recordar el uso de la sentencia break.
 */
public class EjercicioExtra8 {
    public EjercicioExtra8(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese números enteros");
        int num=0, par=0, impar=0,tot=0;

        do {
            num=scanner.nextInt();
            if (num%2==0) par++;
            else impar++;
            tot++;
        } while (!(num%5==0));

        System.out.println("La cantidad de pares es: "+par+" de impares: "+impar+" y la cantidad total es "+tot);
    }
}
