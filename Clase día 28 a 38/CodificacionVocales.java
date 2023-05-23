import java.util.Scanner;

public class CodificacionVocales {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese una palabra o frase terminada en punto:");
        String input = scanner.nextLine();
        input = input.toLowerCase();
        String encodedText = codificarTexto(input);
        System.out.println("Texto codificado: " + encodedText);
    }

    public static String codificarTexto(String texto) {
        StringBuilder resultado = new StringBuilder();
        for (char c : texto.toCharArray()) {
            switch (c) {
                case 'a':
                    resultado.append('@');
                    break;
                case 'e':
                    resultado.append('#');
                    break;
                case 'i':
                    resultado.append('$');
                    break;
                case 'o':
                    resultado.append('%');
                    break;
                case 'u':
                    resultado.append('*');
                    break;
                default:
                    resultado.append(c);
                    break;
            }
        }
        return resultado.toString();
    }
}
