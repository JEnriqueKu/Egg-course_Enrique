package EjerciciosExtra;

import java.util.Scanner;

/*
Una obra social tiene tres clases de socios:
o Los socios tipo ‘A’ abonan una cuota mayor, pero tienen un 50% de descuento en
todos los tipos de tratamientos.
o Los socios tipo ‘B’ abonan una cuota moderada y tienen un 35% de descuento
para los mismos tratamientos que los socios del tipo A.
o Los socios que menos aportan, los de tipo ‘C’, no reciben descuentos sobre dichos
tratamientos.
o Solicite una letra (carácter) que representa la clase de un socio, y luego un valor
real que represente el costo del tratamiento (previo al descuento) y determine el
importe en efectivo a pagar por dicho socio.
 */
public class EjercicioExtra5 {
    public EjercicioExtra5(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese el tipo de socio (A, B o C) y el costo del tratamiento");
        String socio = scanner.next();
        int costo= scanner.nextInt();

        if (socio.equalsIgnoreCase("a")) System.out.println("El costo del tratamiento será: "+costo/2);
        else if (socio.equalsIgnoreCase("b")) System.out.println("El costo del tratamiento será: "+costo*0.35);
        else if (socio.equalsIgnoreCase("c")) System.out.println("El costo del tratamiento será: "+costo);
        else System.out.println("socio invalido");
    }
}
