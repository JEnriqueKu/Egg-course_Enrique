import java.util.Scanner;

public class Ejercicio11 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);

        System.out.println("Ingrese el texto al cual cambiar terminado en . : ");
        String texto = leer.nextLine();
        System.out.println(Diccionario(texto));
    }

    public static String Diccionario(String texto){
        String texto2="";
        String letra="";

            for (int i = 0; i < texto.length(); i++) {
                letra=texto.substring(i,i+1);
                switch (letra.toLowerCase()) {
                    case "a":
                        texto2 += '@';
                        break;
                    case "e":
                        texto2 += '#';
                        break;
                    case "i":
                        texto2 += '$';
                        break;
                    case "o":
                        texto2 += '%';
                        break;
                    case "u":
                        texto2 += '*';
                        break;
                    default:
                        texto2 += letra;
                }
            }
            return texto2;
        }
}
