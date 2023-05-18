Algoritmo E24EX7_empresa3V2
	Definir matriz,i,j,numMayor, vectorIndices, totalMasGrande,indiceP Como Entero
	Definir matrizAux como cadena
	Definir vectorA, vectorB Como Cadena
	i=0
	j=0
	numMayor = 0
	totalMasGrande = 0
	indiceP = 0
	
	Dimension matriz(7,6)
	Dimension matrizAux(8,7)
	Dimension vectorA[7]
	Dimension vectorB[8]
	Dimension vectorIndices[5]
	
	
	
	llenarVectorDias(vectorA,i)
	Escribir ""
	llenarVectorProductos(vectorB,i)
	NumAleatorio(matriz)
	
	Para i=0 hasta 6
		para j=0 hasta 5
			//funciona para la matriz
			si j<5 y i < 5
				Maximo(matriz(6,j),matriz(i,j),i,vectorIndices(j)) 	
			FinSi
			si j = 5
				matriz(i,5) = matriz(i,0) + matriz(i,1) + matriz(i,2) + matriz(i,3) + matriz(i,4)
			FinSi
			si i = 5
				matriz(5,j) =  matriz(0,j) + matriz(1,j) + matriz(2,j) + matriz(3,j) + matriz(4,j)
			FinSi
		FinPara
	FinPara
	
	
	
	imprimeMatriz(matriz,vectorB)
	
	Escribir Sin Saltar "prod mas vendido "
	Para i=0 Hasta 4
		Escribir Sin Saltar "[ producto " vectorIndices[i]+1 "]"
	FinPara
	Escribir ""
	
	
	para i=0 hasta 4
		Maximo2(totalMasGrande,matriz(6,i),indiceP,i)
	FinPara
	Escribir "El producto mas vendido de la sema es: producto " (vectorIndices[indiceP] + 1) " del dia " vectorA[indiceP+1] " y el total es: " totalMasGrande 
FinAlgoritmo

SubProceso Maximo(valor1 Por Referencia,valor2,indice, vectorIndice Por Referencia)
	si valor2>valor1
		valor1 = valor2
		vectorIndice = indice
	FinSi
FinSubProceso

SubProceso Maximo2(valor1 Por Referencia,valor2,indiceProducto por referencia, i)
	si valor2>valor1
		valor1 = valor2
		indiceProducto = i
	FinSi
FinSubProceso


SubProceso NumAleatorio(matriz)
	Definir i,j, relleno Como Entero 
	Para i=0 Hasta 4
		Para j=0 Hasta 4
			relleno = Aleatorio(10,99)
			matriz(i,j) = relleno
		FinPara
	FinPara
	
	//funciona para la matriz
	Para j=0 Hasta 5
		matriz(6,j) = 0
	FinPara
FinSubProceso


SubProceso imprimeMatriz(matriz,vectorB)
	Definir i,j Como Entero
	Para i=0 hasta 6 //si deseo ver el mas vendido en numero tengo que poner hasta 6
		escribir sin saltar vectorB[i]
		Para j=0 Hasta 5
			Si i >= 0 y j<5
				Escribir Sin Saltar "[   " matriz(i,j) "  ]" 
			FinSi
			si j = 5
				Escribir Sin Saltar "=" matriz(i,j)
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso


SubProceso llenarVectorDias(vectorA,i)
	vectorA[0] = "      "
	vectorA[1] = "Lunes"
	vectorA[2] = "Martes"
	vectorA[3] = "Miercoles"
	vectorA[4] = "Jueves"
	vectorA[5] = "Viernes"
	vectorA[6] = "Total Producto"
	
	Para i=0 hasta 6
		Escribir Sin Saltar "[" vectorA[i] "]"
	FinPara
FinSubProceso


SubProceso llenarVectorProductos(vectorB,i)
	vectorB[0] = "Producto 1"
	vectorB[1] = "Producto 2"
	vectorB[2] = "Producto 3"
	vectorB[3] = "Producto 4"
	vectorB[4] = "Producto 5"
	vectorB[5] = "Total Semana"
	vectorB[6] = "total Producto mas vendido"
	vectorB[7] = ""
	//	
	//	Para i=0 hasta 6
	//		Escribir "[" vectorB[i] "]"
	//	FinPara
FinSubProceso