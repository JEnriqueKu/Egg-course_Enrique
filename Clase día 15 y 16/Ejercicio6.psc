// Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
// letras "M" y "T". Recordar que Pseint le da un valor num�rico a cada letra a trav�s del C�digo
// Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.

Algoritmo Ejercicio6
	Definir char Como Caracter	
	Leer char
	
	CompararAscii(char)
	
FinAlgoritmo

SubProceso CompararAscii(char)
	char = Mayusculas(char)
	
	Si char > "M" y char < "T" Entonces
		Escribir char " est� entre la M y la T" 
	SiNo
		Escribir char " NO est� entre la M y la T" 
	FinSi	
	
FinSubProceso
	