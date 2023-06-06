package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*
Dibujar un cuadrado de N elementos por lado utilizando el carácter “*”. Por ejemplo, si el
cuadrado tiene 4 elementos por lado se deberá dibujar lo siguiente:
* * * *
*     *
*     *
* * * *
 */
public class Ejercicio13 {
    public Ejercicio13() {
        System.out.println("Ingrese el tamaño de su cuadro");
        Scanner scanner = new Scanner(System.in);
        int tamaño = scanner.nextInt();

        for (int i=0; i<tamaño;i++){

            for (int j=0; j<tamaño;j++){

                if (i==0 || i==tamaño-1) System.out.print("* ");
                else {

                    if ((j==0 ||j==tamaño-1)) System.out.print("* ");
                    else System.out.print("  ");

                }

            }

            System.out.println("");
        }
    }
}
