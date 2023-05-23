
import java.util.Scanner;

public class Ejercicio11Shirley {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese una secuencia de caracteres (terminada en punto):");
        String secuencia = scanner.nextLine();

        String codificacion = codificarSecuencia(secuencia);
        System.out.println("Secuencia codificada: " + codificacion);
    }
    
    public static String codificarSecuencia(String secuencia) {
        StringBuilder codificacion = new StringBuilder();

        for (int i = 0; i < secuencia.length(); i++) {
            char caracter = secuencia.charAt(i);
            char caracterCodificado = caracter;

            switch (Character.toLowerCase(caracter)) {
                case 'a':
                    caracterCodificado = '@';
                    break;
                case 'e':
                    caracterCodificado = '#';
                    break;
                case 'i':
                    caracterCodificado = '$';
                    break;
                case 'o':
                    caracterCodificado = '%';
                    break;
                case 'u':
                    caracterCodificado = '*';
                    break;
            }

            codificacion.append(caracterCodificado);
        }

        return codificacion.toString();
    }
}
