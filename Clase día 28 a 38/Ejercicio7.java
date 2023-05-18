/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaintro;

import java.util.Scanner;

/**
 *
 * @author jecav
 */
public class Ejercicio7
{
    public static void main(String[] args){
        
        Scanner keyboard = new Scanner(System.in);
        System.out.println("Digite una opcion entre 1 y 4");
        
        int motor = keyboard.nextInt();
        
        switch (motor) {
            case 1:
                System.out.println("La bomba es una bomba de agua");
                break;
            case 2:
                System.out.println("La bomba es una bomba de gasolina");
                break;
            case 3:
                System.out.println("La bomba es una bomba de hormigon");
                break;
            case 4:
                System.out.println("La bomba es una bomba de pasta alimenticia");
                break;
            default:
                System.out.println("No existe un valor valido para tipo de bomba");
        }
    
    }
}
