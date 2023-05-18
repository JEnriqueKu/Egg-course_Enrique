Algoritmo ej4
	definir matrizA como entero
	definir n como entero
	escribir "ingrese el número de filas y columnas de la matriz"
	leer n
	
	dimension matrizA[n,n]
	
	
	print(matrizA, n)
	
	
FinAlgoritmo


subproceso llenado(matriz ,n )
	
	definir i,j como entero
	
	para i=0 hasta n-1 Hacer
		para j=0 hasta n-1 Hacer
			si i=j Entonces
				matriz[i,j]=0
			SiNo
				matriz[i,j] = aleatorio(0,10)
			FinSi
		FinPara
	FinPara
	
	
	
FinSubProceso

subproceso print(matriz,n)
	
	llenado(matriz,n)
	
	definir i,j como entero
	para i=0 hasta n-1 Hacer
		para j=0 hasta n-1 Hacer
			Escribir sin saltar matriz[i,j] " "
		FinPara
		escribir ""
	FinPara
	
FinSubProceso