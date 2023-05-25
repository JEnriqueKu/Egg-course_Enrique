package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*Realizar un programa que pida dos números enteros positivos por teclado y muestre por
pantalla el siguiente menú:
MENU
1. Sumar
2. Restar
3. Multiplicar
4. Dividir
5. Salir
Elija opción:

El usuario deberá elegir una opción y el programa deberá mostrar el resultado por
pantalla y luego volver al menú. El programa deberá ejecutarse hasta que se elija la
opción 5. Tener en cuenta que, si el usuario selecciona la opción 5, en vez de salir del
programa directamente, se debe mostrar el siguiente mensaje de confirmación: ¿Está
seguro que desea salir del programa (S/N)? Si el usuario selecciona el carácter ‘S’ se sale
del programa, caso contrario se vuelve a mostrar el menú.
 */
public class Ejercicio11 {
    public Ejercicio11() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Escriba dos números");
        double num1 = scanner.nextDouble();
        double num2 = scanner.nextDouble();
        int opc;

        do {
            MostrarMenu();
            opc = scanner.nextInt();
            switch (opc) {
                case 1:
                    System.out.println("Seleccionó suma, la suma es: " + (num1 + num2));
                    break;
                case 2:
                    System.out.println("Seleccionó resta, la resta es: " + (num1 - num2));
                    break;
                case 3:
                    System.out.println("Seleccionó multiplicación, la multiplicación es: " + (num1 * num2));
                    break;
                case 4:
                    System.out.println("Seleccionó división, la división es: " + (num1 / num2));
                    break;
                case 5:
                    System.out.println("¿Está seguro que desea salir del programa (S/N)?");
                        String confirm = scanner.next();
                        if (confirm.equalsIgnoreCase("S")){
                            opc++;
                        }
                    break;
                default:
                    System.out.println("El número no se encuentra en las opciones");
            }

        } while (opc < 6 && opc > 0);
    }
    public void MostrarMenu(){
        System.out.println("MENU");
        System.out.println("1. sumar");
        System.out.println("2. restar");
        System.out.println("3. multiplicar");
        System.out.println("4. Dividir");
        System.out.println("5. salir");
        System.out.println("Elija una opción");

    }
}
