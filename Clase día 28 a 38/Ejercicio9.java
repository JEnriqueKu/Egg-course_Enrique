import java.util.Scanner;

public class Ejercicio9 {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num, suma = 0;
        int i = 0;
        String e = "";



        do {
            System.out.print("Ingrese un número: ");
            num = leer.nextInt();
            if (num == 0) {
                System.out.println("Se capturó el número cero.");
                break;
            }
            if (num > 0) {
                suma += num;
            }
            i++;
        } while (i < 20);
        System.out.println("La suma de los números leídos es: " + suma);


    }



}
