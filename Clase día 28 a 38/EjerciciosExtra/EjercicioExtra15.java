package EjerciciosExtra;

import java.util.Scanner;

/*
Crea una aplicación que le pida dos números al usuario y este pueda elegir entre sumar,
restar, multiplicar y dividir. La aplicación debe tener una función para cada operación
matemática y deben devolver sus resultados para imprimirlos en el main.
 */
public class EjercicioExtra15 {
    public EjercicioExtra15(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese 2 números");
        int num1= scanner.nextInt(), num2= scanner.nextInt(), opc;

        System.out.println("Elija una opción:");
        System.out.println("1 - Sumar");
        System.out.println("2 - Restar");
        System.out.println("3 - Dividir");

        opc= scanner.nextByte();
        switch (opc){
            case 1:
                sumar(num1,num2);
                break;
            case 2:
                restar(num1,num2);
                break;
            case 3:
                división(num1,num2);
                break;
            default:
                System.out.println("Opción no valida");
        }
    }

    private void división(int num1, int num2) {
        System.out.println("El resultado es: "+ ((double)num1/num2));
    }

    private void restar(int num1, int num2) {
        System.out.println("El resultado es: "+ (num1-num2));
    }

    private void sumar(int num1, int num2) {
        System.out.println("El resultado es: "+ (num1+num2));
    }
}
