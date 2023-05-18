Algoritmo sin_titulo
	Definir i, j como entero 
	definir matriz, n,a Como entero
	
	Escribir "Ingrese el tamaño de la matriz: "
	Leer n
	Mientras n>10
		Escribir "Ingrese un tamaño valido de la matrix: "
		Leer n
	FinMientras
	
	dimension matriz[n,n] 
	
	crearMatriz(n, matriz)
	imprimirMatriz(n, n, matriz)
	magicocomoelamordemama(n, matriz)
FinAlgoritmo

SubProceso crearMatriz( n, matriz)
	Definir i, j como Entero
	Definir salida Como Logico
	salida=Verdadero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 hasta n-1 con paso 1 Hacer
			Hacer
				si !salida Entonces
					Escribir "Valor invalido, ingrese un valor del 1 al 9 para la posición " "[" i "," j "]"
				SiNo
					Escribir "Ingrese un valor para la matriz del 1 al 9 para la posición " "[" i "," j "]"
				FinSi
				
				Leer matriz(i,j)
				
				si matriz(i,j)<1 o matriz(i,j)>9
					salida=falso
				SiNo
					salida=Verdadero
				FinSi
				
			Mientras Que !salida
		FinPara
	Fin Para
	
FinSubProceso

SubProceso magicocomoelamordemama(n, matriz)
	Definir i, j, sumafila, sumaColumna, sumaDiagonal1, sumaDiagonal2, resultado Como Entero
	Definir magico Como Logico
	Definir constanteMagica Como Real
	constanteMagica=((n^3)+n)/2
	sumaDiagonal1=0
	sumaDiagonal2=0
	magico=Verdadero
	
	para i=0 Hasta n-1 Hacer
		sumaFila=0
		sumaColumna=0
			Para j=0 Hasta n-1 Hacer
				sumaFila = sumaFila+matriz(i,j)
				sumaColumna= sumaColumna+matriz(j,i)
			FinPara
			
			si sumaFila <> constanteMagica Entonces
				magico=falso
				i=n-1
			FinSi
			si sumaColumna <> constanteMagica Entonces
				magico=falso
				i=n-1
			FinSi
	FinPara
	
	Para i=0 Hasta n-1 Hacer
		para j=0 Hasta n-1 Hacer
			si i=j Entonces
				sumaDiagonal1= sumaDiagonal1+matriz(i,j)
				sumaDiagonal2= sumaDiagonal2+matriz(i, n-1-j)
			FinSi
		FinPara
	FinPara
	
	si sumaDiagonal1 <> constanteMagica Entonces
		magico=falso
		i=n-1
	FinSi
	si sumaDiagonal2 <> constanteMagica Entonces
		magico=falso
		i=n-1
	FinSi
	resultado=sumaDiagonal1
	
	Escribir magico
	si magico Entonces
		Escribir "La matriz es Mágica, la suma es: " resultado
	SiNo
		Escribir "La matriz no es mágica"
	FinSi
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