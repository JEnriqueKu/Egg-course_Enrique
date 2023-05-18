//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.

//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a m u n d o c r u e l !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//		H o l a m u n d o % c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19

SubProceso llenarVector(frase,letters Por Referencia)
	definir i Como Entero
	Para i<-0 Hasta 19 Hacer
		letters[i]=subcadena(frase,i,i)
			
	Fin Para
	
FinSubProceso

SubProceso IngresarCaracter(letras Por Referencia)
	Definir caracterIngresado Como Caracter
	definir posicion Como Entero
	
	Escribir "Ingrese un caracter:"
	Leer caracterIngresado
	Escribir "Ingrese una posicion (entre 0 y 19):"
	Leer posicion
	Si posicion >= 0 Y posicion <= 19 Entonces
		Si letras[posicion] = " " O letras[posicion] = "" Entonces
			letras[posicion] = caracterIngresado
			Escribir "El caracter fue ingresado correctamente."
		Sino
			Escribir "La posicion ingresada ya esta ocupada."
		FinSi
	Sino
		Escribir "La posicion ingresada no es valida."
	FinSi
FinSubProceso


Algoritmo Ejercicio6
	definir letras, frase, character Como Caracter
	definir i Como Entero
	Dimension letras(20) //vector 
	
	
	Hacer
		Escribir "Escribe una frase mágica (máximo 20 caracteres)"
		Leer frase
	
	Mientras Que Longitud(frase) > 20
	
	llenarVector(frase,letras)	
	

	
	IngresarCaracter(letras)
	Escribir "Mostrando vectores:"
	Para i=0 hasta 19 Hacer
		
		Escribir Sin Saltar letras[i]
	FinPara
	Escribir " "
	
	
FinAlgoritmo