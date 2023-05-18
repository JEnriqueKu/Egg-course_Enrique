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

SubProceso llenarVector(frase,vectorLetras Por Referencia)
	definir i Como Entero
	Para i<-0 Hasta 19 Hacer
		vectorLetras[i]=subcadena(frase,i,i)
			
	Fin Para
	
FinSubProceso

SubProceso IngresarCaracter(vectorLetras Por Referencia)
	Definir caracterIngresado Como Caracter
	definir posicion, derecha, izquierda Como Entero
	derecha=0
	izquierda=0
	
	Escribir "Ingrese un caracter:"
	Leer caracterIngresado
	Escribir "Ingrese una posicion (entre 0 y 19):"
	Leer posicion
	Si posicion >= 0 Y posicion <= 19 Entonces
		Si vectorLetras[posicion] = " " O vectorLetras[posicion] = "" Entonces
			vectorLetras[posicion] = caracterIngresado
			Escribir "El caracter fue ingresado correctamente."
		Sino
			busquedaDerecha(vectorLetras, posicion, derecha)
			busquedaIzquierda(vectorLetras, posicion, izquierda)
			
			si abs(posicion - derecha) < abs(posicion - izquierda) Entonces //caso donde el espacio esta mas cerca arreglo la derecha
				desplazarDerecha(vectorLetras,caracterIngresado,posicion)
			SiNo
				desplazarIzquierda(vectorLetras,caracterIngresado,posicion)
			FinSi
		FinSi
	Sino
		Escribir "La posicion ingresada no es valida."
	FinSi
FinSubProceso

///
Algoritmo Ejercicio6
	definir vectorLetras, frase, character Como Caracter
	definir i Como Entero
	Dimension vectorLetras(20) //vector 
	
	
	Hacer
		Escribir "Escribe una frase (máximo 20 caracteres)"
		Leer frase
	
	Mientras Que Longitud(frase) > 20
	
	llenarVector(frase,vectorLetras)	
	

	
	IngresarCaracter(vectorLetras)
	
	Escribir "Mostrando vectores:"
	Para i=0 hasta 19 Hacer
		
		Escribir Sin Saltar vectorLetras[i]
	FinPara
	Escribir " "
	
	
FinAlgoritmo
///

SubProceso  busquedaDerecha(arreglo,n, derecha Por Referencia)
	definir i Como Entero
	para i=n hasta 19 Hacer
		si arreglo[i] = '' o arreglo[i] = ' ' Entonces
			derecha = i
			i = 19
		FinSi
	FinPara
FinSubProceso


SubProceso  busquedaIzquierda(arreglo,n, izquierda Por Referencia)
	definir i Como Entero
	para i=n hasta 0 Con Paso -1 Hacer
		si arreglo[i] = '' o arreglo[i] = ' ' Entonces
			izquierda = i
			i = 0
		FinSi
	FinPara
FinSubProceso


SubProceso  desplazarDerecha(arreglo,caract,posicion)
	definir i Como entero
	definir aux Como Caracter
	Dimension aux[20]
	para i=0 hasta posicion-1 Hacer
		aux[i] = arreglo[i]
	FinPara
	aux[posicion] = caract
	para i=posicion +1 Hasta 19 Hacer
		aux[i] = arreglo[i-1]
	FinPara
	Para i=0 Hasta 19 Hacer
		arreglo[i]=aux[i]
	FinPara
FinSubProceso


SubProceso  desplazarIzquierda(arreglo,caract,posicion)
	definir i Como entero
	definir aux Como Caracter
	Dimension aux[20]
	para i=0 hasta posicion-1 Hacer
		aux[i] = arreglo[i+1]
	FinPara
	aux[posicion] = caract
	para i=posicion +1 Hasta 19 Hacer
		aux[i] = arreglo[i]
	FinPara
	
	Para i=0 Hasta 19 Hacer
		arreglo[i]=aux[i]
	FinPara
FinSubProceso