////Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
////primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
////deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
////la matriz de la siguiente forma:
////	3 + 5 = 8
////	4 + 3 = 7
////	1 + 4 = 5
Algoritmo ejer5matrices
	definir filas,i,j, matriz Como Real
	Escribir "Ingrese la cantidad de filas: "
	leer filas
	
	
	Dimension matriz(filas,3)
	para i = 0 hasta filas-1
		para j = 0 Hasta 2
			
			si j = 2 Entonces
				matriz(i,j)= matriz(i,j-1) + matriz(i,j-2)
			SiNo
				Escribir "Ingrese el valor del elemento [",i,",",j,"]" Sin Saltar
				Leer matriz(i,j)
				
			FinSi
			
		FinPara
	FinPara
	
	imprimeMatriz(filas,i,j, matriz)
	
FinAlgoritmo

SubProceso imprimeMatriz(filas,i,j, m)
	para i = 0 hasta filas-1
		para j = 0 Hasta 2
			si j = 0 Entonces
				Escribir m[i,j] " + " Sin Saltar
			sino 
				si j = 1 Entonces
					Escribir m[i,j] " = " Sin Saltar
				sino 
					Escribir m[i,j] Sin Saltar
				finsi 
				
			FinSi
			
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
