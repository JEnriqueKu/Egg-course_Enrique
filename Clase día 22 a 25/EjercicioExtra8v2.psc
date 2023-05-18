Algoritmo E25EX8_distribuidoraNescafe3
	Definir matriz,i,j Como Entero
	Definir vectorA, vectorB Como Cadena
	i=0
	j=0
	
	Dimension matriz(5,6)
	Dimension vectorA[5]
	Dimension vectorB[6]
	
	
	llenarVectorVendedor(vectorA,i)
	llenarVectorZonas(vectorB,i)
	LlenaVentas(matriz,vectorA,vectorB,i,j)
	Escribir ""
	Escribir "Matriz para realizar calculos"
	imprimeMatriz(matriz)
	Escribir ""
	Escribir "Los totales son:"
	imprimirTotales(matriz,vectorA,vectorB,i,j)
FinAlgoritmo

SubProceso LlenaVentas(matriz,vectorA,vectorB,i,j)
	Definir aux Como Entero
	aux=0
	Para i=0 hasta 4
		para j=0 hasta 5
			Si i >= 0 y i <4 y j<5
				aux = Aleatorio(10,99)
				////con numero aleatorio
				Escribir "Ingrese el valor de la venta [" vectorA[i] "," vectorB[j] "]" ": " aux Sin Saltar
				matriz(i,j) = aux
				Escribir ""       
				
				////con numero por teclado
//				Escribir "Ingrese el valor de la venta [" vectorA[i] "," vectorB[j] "]" ": " Sin Saltar
//				Leer matriz(i,j)
			FinSi
			si j = 5
				matriz(i,5) = matriz(i,0) + matriz(i,1) + matriz(i,2) + matriz(i,3) + matriz(i,4)
			FinSi
			si i = 4
				matriz(4,j) =  matriz(0,j) + matriz(1,j) + matriz(2,j) + matriz(3,j)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso imprimeMatriz(matriz)
	Definir i,j Como Entero
	Para i=0 hasta 4
		Para j=0 Hasta 5
			Si i >= 0 y j<5
				Escribir Sin Saltar "[" matriz(i,j) "]" 
			FinSi
			si j = 5
				Escribir Sin Saltar "=" matriz(i,j)
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso llenarVectorVendedor(vectorA,i)
	vectorA[0] = "Vendedor 1"
	vectorA[1] = "Vendedor 2"
	vectorA[2] = "Vendedor 3"
	vectorA[3] = "Vendedor 4"
	vectorA[4] = "Total zona"
FinSubProceso

//Solo para verificar que se rellena el vector
//SubProceso imprimirVectorVendedor(vectorA,i)
//	Para i=0 hasta 4
//		Escribir Sin Saltar "[" vectorA[i] "]"
//	FinPara
//FinSubProceso

SubProceso llenarVectorZonas(vectorB,i)
	vectorB[0] = "Norte"
	vectorB[1] = "Sur"
	vectorB[2] = "Este"
	vectorB[3] = "Oeste"
	vectorB[4] = "Centro"
	vectorB[5] = "Total vendedor"
FinSubProceso

//Solo para verificar que se rellena el vector
//SubProceso imrpimirVectorZonas(vectorB,i)
//	Para i=0 hasta 6
//		Escribir "[" vectorB[i] "]"
//	FinPara
//FinSubProceso

SubProceso imprimirTotales(matriz,vectorA,vectorB,i,j)
	Para i=0 hasta 4
		para j=0 hasta 5
			Si i=4 y j<4
				Escribir "El total de la zona " vectorB[j] " es: " matriz(4,j)
			FinSi
			Si j=5 y i<4
				Escribir "El total de ventas del " vectorA[i] " es: " matriz(i,5)
			FinSi
			Si i=4 y j=5
				Escribir "El total de ventas de los representantes es: " matriz(i,5)
			FinSi
			
		FinPara
	FinPara
FinSubProceso