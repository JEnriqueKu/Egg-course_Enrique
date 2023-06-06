package EjerciciosExtra;

import java.util.Random;
import java.util.Scanner;

/*
Realice un programa para que el usuario adivine el resultado de una multiplicación entre
dos números generados aleatoriamente entre 0 y 10. El programa debe indicar al usuario
si su respuesta es o no correcta. En caso que la respuesta sea incorrecta se debe permitir
al usuario ingresar su respuesta nuevamente. Para realizar este ejercicio investigue como
utilizar la función Math.random() de Java.
 */
public class EjercicioExtra10 {
    public EjercicioExtra10(){
        Scanner scanner = new Scanner(System.in);
        int num, num2;
        Random random = new Random();
        num2= (random.nextInt(11)* random.nextInt(11));
        System.out.println(num2 + "Numero a adivinar");
        do {
            System.out.println("Adivine el número");
            num=scanner.nextInt();
        } while (num!=num2);
        System.out.println("ganaste");
    }
}
