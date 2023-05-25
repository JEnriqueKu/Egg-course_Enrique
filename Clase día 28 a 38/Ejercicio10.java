import java.util.Scanner;

public class Ejercicio10 {
    public static void main(String[] args) {
                Scanner leer = new Scanner(System.in);
                int i, num, j ;
                System.out.println("Ingrese 4 números:");

                for(i=0;i<=3;i++){
                    num = leer.nextInt();
                    System.out.print(num);
                    for(j=0; j<num; j++){
                        System.out.print("*");
                    }
                }

        }

}
