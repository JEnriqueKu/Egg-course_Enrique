Algoritmo sin_titulo
	Definir n,m como Entero
	Definir matriz Como Caracter
	n=9
	m=12
	Dimension matriz[n,m]
	
	iniciarMatriz(n,m,matriz)
	agregarPalabra(0,matriz, "VECTOR")
	agregarPalabra(1,matriz, "MATRIX")
	agregarPalabra(2,matriz, "PROGRAMA")
	agregarPalabra(3,matriz, "SUBPROGRAMA")
	agregarPalabra(4,matriz, "SUBPROCESO")
	agregarPalabra(5,matriz, "VARIABLE")
	agregarPalabra(6,matriz, "ENTERO")
	agregarPalabra(7,matriz, "PARA")
	agregarPalabra(8,matriz, "MIENTRAS")
	
	imprimirMatriz(n,m,matriz)
	acomodarPalabra(n,m,matriz)
	imprimirMatriz(n,m,matriz)
	
FinAlgoritmo

SubProceso iniciarMatriz (n,m,matriz)
	Definir i,j Como Entero
	para i=0 Hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			matriz[i,j]="*"
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(n,m,matriz)
	Definir i,j Como Entero
	para i=0 Hasta n-1 Hacer
		Escribir ""
		Para j=0 hasta m-1 Hacer
			Escribir " " matriz[i,j] " " Sin Saltar
		FinPara
	FinPara
	Escribir ""
FinSubProceso

SubProceso agregarPalabra(fila,matriz,palabra)
	Definir i,j Como Entero
	i=fila
	Para j=0 Hasta Longitud(palabra)-1 Hacer
		matriz[i,j]=Subcadena(palabra,j,j)
	FinPara
FinSubProceso

Funcion posicion=buscarR(matriz,fila)
	Definir i,j,posicion Como Entero
	Definir salida Como Logico
	salida=falso
	i=fila
	j=0
	Hacer
		si matriz[i,j]="R" Entonces
			salida=Verdadero
		SiNo
			j=j+1
		FinSi
	Mientras Que !salida
	posicion=j
FinFuncion

SubProceso acomodarPalabra(n,m,matriz)
	Definir i,j,posicion, contador Como Entero
	Definir palabra Como Caracter
	i=0
	Hacer
		contador=0
		palabra=""
		posicion=buscarR(matriz,i)+1
		para j=0 Hasta m-1 Hacer
			si matriz[i,j]<>"*" Entonces
				palabra=palabra+matriz[i,j]
				matriz[i,j]="*"
			FinSi
		FinPara
		
		para j=5 Hasta 5+(Longitud(palabra)-posicion) Hacer
			matriz[i,j]=Subcadena(palabra,posicion-1+contador,posicion-1+contador)
			contador=contador+1
		FinPara
		contador=0
		para j=4 Hasta 4-(posicion-2) Con Paso -1 Hacer
			matriz[i,j]=Subcadena(palabra,posicion-2-contador,posicion-2-contador)
			contador=contador+1
		FinPara
		
		i=i+1
	Mientras Que i<=n-1
FinSubProceso
	