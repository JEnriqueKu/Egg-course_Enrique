//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.

Algoritmo ejercicio3
	Definir m, n, matriz Como Entero
	Escribir "Ingrese dos valores para el tamaño de la matriz"
	Leer m
	Leer n
	Dimension matriz(m,n)
	Escribir sumaMatriz(m, n, matriz)
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
	
FinSubProceso

Funcion retorno = sumaMatriz(m, n, matriz)
	crearMatriz(m, n, matriz)
	imprimirMatriz(m, n, matriz)
	Escribir " "
	Escribir "La suma total es: "
	Definir i, j, retorno Como Entero
	retorno=0
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Para j=0 Hasta n-1 Con Paso 1 Hacer
			retorno = retorno + matriz(i,j)
		Fin Para
	Fin Para
FinFuncion
