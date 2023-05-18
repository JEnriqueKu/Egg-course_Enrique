//Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//		Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//		estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.

Algoritmo sin_titulo
	Definir matriz Como Entero
	Dimension matriz[4,5] 
	
	llenarMatriz(4,5,matriz)
	imprimirMatriz(4,5,matriz)
	Escribir ""
	
	totalZona(4,5,matriz)
	totalVendedor(4,5,matriz)
	totalVentas(4,5,matriz)
	
FinAlgoritmo

SubProceso llenarMatriz(n,m,matriz)
	Definir i,j, suma Como Entero
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta m-1 Hacer
			matriz[i,j]=Aleatorio(0,100)
		FinPara
	FinPara
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

SubProceso totalZona(n,m,matriz)
	Definir i,j, suma Como Entero
	suma=0
	Definir zona Como Caracter
	Escribir "Escriba la zona donde desea saber el total"
	hacer 
		leer zona
		zona=Minusculas(zona)
	Mientras Que zona<>"norte" y zona<>"sur" y zona<>"este" y zona<>"oeste" y zona<>"centro"  
	Para i=0 Hasta n-1 Hacer
		Segun zona Hacer
			"norte":
				j=0
			"sur":
				j=1
			"este":
				j=2
			"oeste":
				j=3
			"centro":
				j=4
		FinSegun
		suma=suma + matriz[i,j]
	FinPara
	Escribir suma
FinSubProceso

SubProceso totalVendedor(n,m,matriz)
	Definir i,j, suma, vendedor, norte, sur, este, oeste, centro Como Entero
	suma=0
	Escribir "Escriba el numero del vendedor el cual desea saber el total en cada zona (1-4)"
	hacer 
		leer vendedor
	Mientras Que vendedor<>1 y vendedor<>2 y vendedor<>3 y vendedor<>4 
	
	Para j=0 Hasta m-1 Hacer
		i=vendedor-1
		Segun j Hacer
			0:
				norte=matriz[i,j]
			1:
				sur=matriz[i,j]
			2:
				este=matriz[i,j]
			3:
				oeste=matriz[i,j]
			4:
				centro=matriz[i,j]
		FinSegun
	FinPara
	Escribir "El vendedor " vendedor " vendió " norte " en el norte " sur " en el sur " Sin Saltar
	Escribir Sin Saltar  este " en el este " oeste " en el oeste " centro " en el centro "
	Escribir ""
FinSubProceso

SubProceso totalVentas(n,m,matriz)
	Definir i, j, suma como Entero
	suma=0
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 hasta m-1 con paso 1 Hacer
			suma=suma+matriz[i,j]
		FinPara
	Fin Para
	Escribir "El total de ventas fue: " suma
FinSubProceso
