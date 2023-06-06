package EjerciciosExtra;

import java.util.Scanner;

/*
Elaborar un algoritmo en el cuál se ingrese una letra y se detecte si se trata de una vocal.
Caso contrario mostrar un mensaje. Nota: investigar la función equals() de la clase
String.
 */
public class EjercicioExtra3 {
    public EjercicioExtra3(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese una vocal");
        String letra= scanner.nextLine();

        if (letra.equalsIgnoreCase("a")||
                letra.equalsIgnoreCase("e")||
                letra.equalsIgnoreCase("i")||
                letra.equalsIgnoreCase("o")||
                letra.equalsIgnoreCase("u")) System.out.println("La letra es una vocal");
        else System.out.println("La letra no es una vocal");
    }
}
