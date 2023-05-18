//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	
//	a e i o u
//	@ # $ % *
//	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//	correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.

SubProceso Codigo(frase)
	DEfinir end Como Logico
	end=Falso
	Definir i Como Entero
	
	Mientras end==falso 
		Para i=0 Hasta Longitud(frase) Hacer
			
			Segun Subcadena(frase,i,i) Hacer
				"a" o "A":
					Escribir "@" Sin Saltar
				"e" o "E":
					Escribir "#" Sin Saltar
				"i" o "I":
					Escribir "$" Sin Saltar
				"o" o "O":
					Escribir "%" Sin Saltar
				"u" o "U":
					Escribir "*" Sin Saltar
				".": Escribir "."
					end=Verdadero
				De Otro Modo:
					Escribir Subcadena(frase,i,i) Sin Saltar
			Fin Segun
			
		FinPara
		
	FinMientras
	
FinSubProceso



Algoritmo sin_titulo
	Definir frase Como Caracter
	
	Escribir "Ingresar frase"
	Leer frase
	
	Codigo(frase)
FinAlgoritmo


