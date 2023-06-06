package EjerciciosExtra;

import java.util.Scanner;

/*
Elaborar un algoritmo en el cuál se ingrese un número entre 1 y 10 y se muestre su
equivalente en romano.
 */
public class EjercicioExtra4 {
    public EjercicioExtra4(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese un número del 1 al 10");
        int num = scanner.nextInt();

        while (num>10||num<1){
            System.out.println("Número inválido, ingrese un número del 1 al 10");
            num= scanner.nextInt();
        }

        switch (num){
            case 1:
                System.out.println("El equivalente en romanos es: I");
                break;
            case 2:
                System.out.println("El equivalente en romanos es: II");
                break;
            case 3:
                System.out.println("El equivalente en romanos es: III");
                break;
            case 4:
                System.out.println("El equivalente en romanos es: IV");
                break;
            case 5:
                System.out.println("El equivalente en romanos es: V");
                break;
            case 6:
                System.out.println("El equivalente en romanos es: VI");
                break;
            case 7:
                System.out.println("El equivalente en romanos es: VII");
                break;
            case 8:
                System.out.println("El equivalente en romanos es: VIII");
                break;
            case 9:
                System.out.println("El equivalente en romanos es: IX");
                break;
            case 10:
                System.out.println("El equivalente en romanos es: X");
                break;
        }
    }
}
