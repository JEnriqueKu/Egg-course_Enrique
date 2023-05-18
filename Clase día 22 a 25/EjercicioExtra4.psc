//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//Inicialice las matrices para evitar el ingreso de datos por teclado.

Algoritmo sin_titulo
	Definir matriz, matriz2, matriz3, i, j Como Entero
	Dimension matriz[3,3], matriz2[3,3], matriz3[3,3]
	
	crearMatriz(3,matriz)
	crearMatriz(3,matriz2)
	
	para i=0 Hasta 2 Hacer
		para j=0 Hasta 2 Hacer
			matriz3[i,j]= matriz[i,j]*matriz2[i,j]
		FinPara
	FinPara
	
	imprimirMatriz(3,3,matriz)
	Escribir ""
	imprimirMatriz(3,3,matriz2)
	Escribir ""
	imprimirMatriz(3,3,matriz3)
	
FinAlgoritmo

SubProceso crearMatriz(n, matriz)
	Definir i, j como Entero
	Definir salida Como Logico
	salida=Verdadero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 hasta n-1 con paso 1 Hacer
			matriz[i,j]= Aleatorio(0,10)
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