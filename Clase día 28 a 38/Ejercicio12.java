
import java.util.Scanner;

public class Ejercicio12 {


    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num1, num2;

        System.out.println("Ingrese 2 numeros:");
        num1 = leer.nextInt();
        num2 = leer.nextInt();

        multiplos(num1,num2);

    }

    public static void multiplos(int num1, int num2 ){
        if(num1 % num2 == 0 ){
            System.out.println("El numero " + num1 +  " es multiplo del " + num2);
        }else{
            System.out.println("El numero " + num1 +  " no es multiplo del " + num2);
        }
    }

}
