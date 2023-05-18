Algoritmo Ejercicio4_SecuenciaCaracteres
	// Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
	// terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
	// cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
	// (incluyendo a las vocales acentuadas) se mantienen sin cambios.
	// a e i o u
	// @ # $ % *
	// Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
	// correspondiente. Utilice la estructura "según" para la transformación.
	// Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
	// La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
	// NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
	
	Definir frase como caracter
	Escribir "Ingresa la frase a codificar"
	Leer frase
	
	frase = Minusculas(frase)
	
	Escribir "Su frase enciptada es: " encriptarFrase(frase) "."
	
FinAlgoritmo

Funcion retorno = encriptarFrase(frase)
	definir retorno como cadena
	Definir i Como Entero
	retorno = ""
	
	para i= 0 Hasta Longitud(frase)
		Segun Subcadena(frase,i,i) Hacer
			"a":
				retorno <- Concatenar(retorno,"@")
			"e":
				retorno <- Concatenar(retorno,"#")
			"i":
				retorno <- Concatenar(retorno,"$")
			"o":
				retorno <- Concatenar(retorno,"%")
			"u":
				retorno <- Concatenar(retorno,"*")
			De Otro Modo:
				retorno <- Concatenar(retorno,Subcadena(frase,i,i))
		Fin Segun
	FinPara
	
FinFuncion