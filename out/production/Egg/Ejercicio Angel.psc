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


Algoritmo sin_titulo
	Definir s Como Caracter
	s="abacabaabacaba"
	
	
	firstNotRepeatingCharacter(s)
FinAlgoritmo

SubProceso firstNotRepeatingCharacter(palabra)
	Definir i,j,contador Como Entero
	Definir letra Como Caracter
	Definir repeatedLetter, repeated Como Logico
	repeated=Falso
	
	para i=0 Hasta Longitud(palabra) Hacer
		letra=Subcadena(palabra,i,i)
		repeatedLetter=Falso
		para j=0 Hasta Longitud(palabra) Hacer
			si letra=Subcadena(palabra,j,j) y i<>j Entonces
				j=Longitud(palabra)
				repeated=Verdadero
				repeatedLetter=Verdadero
			FinSi
			
			si j=Longitud(palabra) y repeatedLetter=falso y i<>14 Entonces
				Escribir letra
				i=Longitud(palabra)
				repeated=falso
			FinSi
		FinPara
	FinPara
	
	si repeated Entonces
		Escribir " _ There are no characters in this string that do not repeat"
	FinSi
FinSubProceso
	