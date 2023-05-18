Algoritmo Ex1
	Definir matriz, i, j Como Entero
	Dimension matriz(3,3)
	Escribir "Ingresa 9 valores para la matriz"
	
	crearMatriz(3,3, matriz)
	imprimirMatriz(3, 3, matriz)
	
FinAlgoritmo


SubProceso crearMatriz(m, n, matriz)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Para j=0 hasta n-1 con paso 1 Hacer
			leer matriz(i, j)
		FinPara
	Fin Para
	
FinSubProceso

SubProceso  imprimirMatriz(m, n, matriz)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Escribir " "
		Para j=0 hasta n-1 con paso 1 Hacer
			Escribir  matriz(i, j) Sin Saltar " "
		FinPara
	Fin Para
	
FinSubProceso