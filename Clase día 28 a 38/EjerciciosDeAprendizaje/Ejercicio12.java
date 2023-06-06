package EjerciciosDeAprendizaje;

import java.util.Scanner;

/*
Realizar un programa que simule el funcionamiento de un dispositivo RS232, este tipo de
dispositivo lee cadenas enviadas por el usuario. Las cadenas deben llegar con un formato
fijo: tienen que ser de un máximo de 5 caracteres de largo, el primer carácter tiene que
ser X y el último tiene que ser una O.
Las secuencias leídas que respeten el formato se consideran correctas, la secuencia
especial “&&&&&” marca el final de los envíos (llamémosla FDE), y toda secuencia
distinta de FDE, que no respete el formato se considera incorrecta.
Al finalizar el proceso, se imprime un informe indicando la cantidad de lecturas correctas
e incorrectas recibidas. Para resolver el ejercicio deberá investigar cómo se utilizan las
siguientes funciones de Java Substring(), Length(), equals().
 */
public class Ejercicio12 {
    public Ejercicio12() {
        Scanner scanner = new Scanner(System.in);

        String cadena;
        boolean s;
        int correcto = 0, incorrecto = 0;
        System.out.println("Ingrese sus cadenas (Para terminar ingrese &&&&&)");
        do { cadena = scanner.nextLine();

            if (cadena.length()==5 &&
                    cadena.substring(0,1).equalsIgnoreCase("x") &&
                    cadena.substring(4,5).equals("0")){
                correcto++;
            } else incorrecto++;
            s=cadena.equals("&&&&&");

        } while (!s);

        System.out.println("La cantidad de strings correctos fué: " + correcto +
                " y la de incorrectos fué: " + (incorrecto-1));
    }
}
