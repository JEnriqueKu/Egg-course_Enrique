/*Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la nota se
        pedirá de nuevo hasta que la nota sea correcta.
 */

import java.util.Scanner;

public class Ejercicio8 {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese una nota entre 0 y 10");

        int nota = scanner.nextInt();

        while (nota>10 || nota<0){
            System.out.println("Nota invalida");
            nota= scanner.nextInt();
        }

    }

}
