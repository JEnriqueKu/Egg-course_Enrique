Algoritmo ex2
	Definir matriz, i, j Como Entero
	Definir bandera Como Logico
	bandera = Verdadero
	Dimension matriz(5,5)
	
	crearMatriz(5, 5, matriz)
	imprimirMatriz(5,5, matriz)
	
	Escribir "Diagonal: "
	Para i=0 Hasta 4 Hacer
		para j=0 Hasta 4 Hacer
			si i=j Entonces
				Escribir matriz(i,4-j) sin saltar " "
			FinSi
		FinPara
	FinPara
	
	//buscarValor(matriz, bandera)
	
FinAlgoritmo


SubProceso crearMatriz(m, n, matriz)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Para j=0 hasta n-1 con paso 1 Hacer
			matriz(i, j) = Aleatorio(1, 9)
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
	Escribir ""
FinSubProceso

SubProceso buscarValor(matriz, bandera Por Referencia)
	Definir i,j, num Como Entero
	Escribir " "
	Escribir "Ingrese un numero a buscar"
	leer num
	
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 hasta 4 con paso 1 Hacer
			Si num == matriz(i, j) Entonces
				Escribir "(",i, ", ", j, ")"
				bandera = falso
			FinSi
		FinPara
	Fin Para
	Si bandera Entonces
		Escribir "No se encontro"
	FinSi
FinSubProceso
	