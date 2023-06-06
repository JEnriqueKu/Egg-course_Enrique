package EjerciciosDeAprendizaje;
/*
Realizar un algoritmo que rellene un vector con los 100 primeros números enteros y los
muestre por pantalla en orden descendente.
 */
public class Ejercicio15 {
    int [] vector = new int[100];
    public Ejercicio15(){
        for (int i=0; i<100;i++) vector[i]=i+1;

        for (int i=99; i>=0; i--) System.out.println(vector[i]);
    }
}
