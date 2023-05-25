//
//Given a string s consisting of small English letters, find and return the first instance of a non-repeating
// character in it. If there is no such character, return '_'.
//
//Example:
//	For s = "abacabad", the output should be
//	firstNotRepeatingCharacter(s) = 'c'.
//
//There are 2 non-repeating characters in the string: 'c' and 'd'. Return 'c' since it appears in the string first.
//
//	For s = "abacabaabacaba", the output should be
//	firstNotRepeatingCharacter(s) = '_'.
//
//	There are no characters in this string that do not repeat.

public class Ejercicio_Angel_Java {
    public static void main(String[] args) {
        String s = "abacabaabacaba";
        firstNotRepeatingCharacter(s);

    }

    public static void firstNotRepeatingCharacter(String palabra) {
        boolean repeated = false;
        for (int i = 0; i < palabra.length(); i++) {
            char letra = palabra.charAt(i);
            boolean repeatedLetter = false;
            for (int j = 0; j < palabra.length(); j++) {
                if (letra == palabra.charAt(j) && i != j) {
                    j = palabra.length();
                    repeated = true;
                    repeatedLetter = true;
                }
                if (j == palabra.length() - 1 && !repeatedLetter && i != palabra.length()) {
                    System.out.println(letra);
                    i = palabra.length();
                    repeated = false;
                }
            }
        }
        if (repeated) {
            System.out.println(" _ There are no characters in this string that do not repeat");
        }
    }
}


