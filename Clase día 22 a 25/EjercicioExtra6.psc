//Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
//realiza la multiplicación entre matrices consultar el siguiente link:


Algoritmo sin_titulo
	Definir matriz1, matriz2, vector1, vector2 Como Entero
	Dimension matriz1[3,3], matriz2[3,3], vector[3]
	
	crearMatriz(3,3,matriz1)
	crearVector(3,vector)
	
	imprimirMatriz(3,3, matriz1)
	Escribir ""
	Escribir ""
	imprimirVector(3,vector)
	
	multiplicarMatriz(3,3,matriz1,matriz2,vector)
	imprimirMatriz2(3,3,matriz2)
	sumarComoVector(3,3,vector2,matriz2)
	Escribir ""
	sumarMatriz(3,3,matriz2)
FinAlgoritmo

SubProceso crearMatriz(n,m, matriz)
	Definir i, j como Entero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 hasta m-1 con paso 1 Hacer
			matriz[i,j]= Aleatorio(0,10)
		FinPara
	Fin Para
FinSubProceso

SubProceso crearVector(n, vector)
	Definir i, j como Entero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		vector[i]=Aleatorio(1,10)
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

SubProceso imprimirVector(n, vector)
	Definir i, j como Entero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Escribir vector[i]
	Fin Para
FinSubProceso

SubProceso multiplicarMatriz(n,m,matriz1,matriz2,vector)
	Definir i,j Como Entero
	
	Para i=0 hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			matriz2[i,j]= matriz1[i,j]*vector[j]
		FinPara
	FinPara
FinSubProceso

SubProceso  imprimirMatriz2(m, n, matriz)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Escribir " "
		Para j=0 hasta n-1 con paso 1 Hacer
			si j=0 Entonces
				Escribir  matriz(i, j) Sin Saltar " + "
					
			FinSi
			si j=1 Entonces
				Escribir  matriz(i, j) Sin Saltar " + "
			FinSi
			si j=2 Entonces
					Escribir  matriz(i, j) Sin Saltar ""
			FinSi
		FinPara
	Fin Para
	Escribir ""
FinSubProceso

SubProceso sumarMatriz(n,m,matriz)
	Definir i, j, suma como Entero
	suma=0
	para i=0 Hasta n-1 Hacer
		para j=0 Hasta m-1 Hacer
			suma=suma+matriz[i,j]
		FinPara
	FinPara
	Escribir suma
FinSubProceso


SubProceso sumarComoVector(n,m,vector, matriz)
	
FinSubProceso
	