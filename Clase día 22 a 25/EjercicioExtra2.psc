Algoritmo sin_titulo
		definir num1, num2, matriz, resultado Como Entero
		
		
		
		Escribir "Ingrese las dimensiones de la matriz: "
		Leer num1
		Leer num2
		
		Dimension matriz[num1, num2], resultado[num2, num1] 
		
		crearMatriz(num1, num2, matriz) 
		
		
		imprimirMatriz(num1, num2, matriz) 
		
		transpuesta(num2, num1, matriz, resultado) 
		
		Escribir ""
		
		imprimirMatriz(num2, num1, resultado) 
		
		
		
FinAlgoritmo
SubProceso crearMatriz(num1, num2, matriz Por Referencia) 
	definir i, j como entero 
	
	para i=0 hasta num1-1 Hacer
		para j=0 Hasta num2-1 Hacer
			matriz[i,j]= Aleatorio(1,10) 
		FinPara
	FinPara
	
FinSubProceso

SubProceso transpuesta(num1, num2, matriz Por Referencia, matrizt Por Referencia) 
	definir i, j como entero 
	
	para i=0 hasta num1-1 Hacer
		para j=0 Hasta num2-1 Hacer
			matrizt[i,j]= matriz[j, i]  
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(num1, num2, matriz Por Referencia) 
	definir i, j como entero 
	
	para i=0 hasta num1-1 Hacer
		Escribir ""
		para j=0 Hasta num2-1 Hacer
			Escribir matriz[i,j], " " Sin Saltar
			//Escribir  "(",j,",",i,") " Sin Saltar
		FinPara
	FinPara
FinSubProceso

