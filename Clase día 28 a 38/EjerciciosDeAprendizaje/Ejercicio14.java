package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*
Crea una aplicación que a través de una función nos convierta una cantidad de euros
introducida por teclado a otra moneda, estas pueden ser a dólares, yenes o libras. La
función tendrá como parámetros, la cantidad de euros y la moneda a converir que será
una cadena, este no devolverá ningún valor y mostrará un mensaje indicando el cambio
(void).
El cambio de divisas es:
* 0.86 libras es un 1 €
* 1.28611 $ es un 1 €
* 129.852 yenes es un 1 €
 */
public class Ejercicio14 {
    public Ejercicio14(){
        System.out.println("Ingrese los euros que desee convertir");
        Scanner scanner = new Scanner(System.in);
        int euros=scanner.nextInt();
        System.out.println("¿A que moneda lo desea convertir?");
        System.out.println("D - Dolares");
        System.out.println("Y - Yenes");
        System.out.println("L - Libras");
        String moneda=scanner.next();
        convertidorMoneda(euros,moneda);
    }

    public void convertidorMoneda(int euros, String moneda){
        switch (moneda.toUpperCase()){
            case "D":
                System.out.println(euros*1.28611);
                break;
            case "Y":
                System.out.println(euros*129.852);
                break;
            case "L":
                System.out.println(euros*0.86);
                break;
            default:
                System.out.println("Moneda no valida");
        }
    }
}
