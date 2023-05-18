//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:

Algoritmo sin_titulo
	Definir i, j como entero 
	definir matriz, palabra Como Caracter
	dimension matriz[3,3] 
	Escribir "Ingrese una frase: "
	Leer palabra
	
	crearMatriz(3, 3, matriz, palabra)
	imprimirMatriz(3, 3, matriz)
	
FinAlgoritmo

SubProceso crearMatriz(m, n, matriz, palabra)
	Definir i, j, cont como Entero
	cont = -1 
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Para j=0 hasta n-1 con paso 1 Hacer
			cont = cont+1
			matriz(i, j) = Subcadena(palabra, cont, cont)
		FinPara
	Fin Para
FinSubProceso

SubProceso  imprimirMatriz(m, n, matriz)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Escribir " "
		Para j=0 hasta n-1 con paso 1 Hacer
			Escribir  matriz(i, j) Sin Saltar " "
			//Escribir "(",i, ", ", j, ")" Sin Saltar
		FinPara
	Fin Para
	
FinSubProceso